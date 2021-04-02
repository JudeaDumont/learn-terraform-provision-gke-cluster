resource "kubernetes_deployment" "example-1" {
  metadata {
    name = "terraform-example-1"
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
          command = ["sleep","84600"]
          image = "busybox"
          name  = "example"
          image_pull_policy = "IfNotPresent"

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