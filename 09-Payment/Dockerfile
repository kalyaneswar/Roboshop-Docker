FROM python:3.8-alpine

RUN pip install uwsgi


# Create the roboshop user
RUN adduser -D roboshop


USER roboshop

EXPOSE 8080

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