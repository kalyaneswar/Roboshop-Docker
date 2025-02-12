FROM python:3.8-alpine

# Create the roboshop user
# RUN useradd -ms /bin/bash roboshop

USER roboshop

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV CART_HOST=cart \
    CART_PORT=8080 \
    USER_HOST=user \
    USER_PORT=8080 \
    AMQP_HOST=rabbitmq \
    AMQP_USER=roboshop \
    AMQP_PASS=roboshop123

CMD ["uwsgi", "--ini", "payment.ini"]