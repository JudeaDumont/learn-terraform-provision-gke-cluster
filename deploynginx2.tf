resource "kubernetes_deployment" "example-2" {
  metadata {
    name = "terraform-example-2"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyExampleApp"
        }
      }

      spec {
        container {
          command = ["/bin/sh", "-c", "sleep 9999"]
          image = "busybox"
          name  = "example"

//          resources {
//            limits = {
//              cpu    = "0.5"
//              memory = "512Mi"
//            }
//            requests = {
//              cpu    = "250m"
//              memory = "50Mi"
//            }
//          }

//          liveness_probe {
//            http_get {
//              path = "/nginx_status"
//              port = 80
//
//              http_header {
//                name  = "X-Custom-Header"
//                value = "Awesome"
//              }
//            }
//
//            initial_delay_seconds = 3
//            period_seconds        = 3
//          }
        }
      }
    }
  }
}