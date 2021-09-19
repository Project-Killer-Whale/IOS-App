//
//  Beach.swift
//  Project-Killer-Whale
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import Foundation

struct BeachResponse: Decodable{
    let objectIdFieldName: String?
    let uniqueIdField: UniqueIdField?
    let globalIdFieldName: String?
    let geometryType: String?
    let spatialReference: SpatialReference?
    let features: [Features]?
}

struct UniqueIdField: Decodable{
    let name: String?
    let isSystemMaintained: Bool?
}

struct SpatialReference : Decodable{
    let wkid: Int?
    let latesWkid: Int?
}

struct Features: Decodable{
    let attributes: Attributes?
    let geometry: Geometry?
    
}

struct Attributes: Decodable{
    let OBJECTID: Int?
    let Comunidad_: String?
    let Provincia: String?
    let Isla: String?
    let Código_IN: Int?
    let Término_M: String?
    let Web_munici: String?
    let Identifica: Int?
    let Nombre: String?
    let Nombre_alt: String?
    let Nombre_a_1: String?
    let Descripci: String?
    let Longitud: String?
    let Anchura: String?
    let Variación: String?
    let Grado_ocup: String?
    let Grado_urba: String?
    let Paseo_mar: String?
    let Tipo_paseo: String?
    let Tipo_de_ar: String?
    let Condicione: String?
    let Zona_fonde: String?
    let Nudismo: String?
    let Vegetació: String?
    let Vegetaci_1: String?
    let Actuacione: String?
    let Actuacio_1: String?
    let Bandera_az: String?
    let Auxilio_y_: String?
    let Auxilio_y1: String?
    let Señalizac: String?
    let Señaliza_: String?
    let Forma_de_a: String?
    let Señaliza1: String?
    let Acceso_dis: String?
    let Carretera_: String?
    let Autobús: String?
    let Autobús_t: String?
    let Aparcamien: String?
    let Aparcami_1: String?
    let Aparcami_2: String?
    let Aseos: String?
    let Lavapies: String?
    let Duchas: String?
    let Teléfonos: String?
    let Papelera: String?
    let Servicio_l: String?
    let Alquiler_s: String?
    let Alquiler_h: String?
    let Alquiler_n: String?
    let Oficina_tu: String?
    let Establecim: String?
    let Establec_1: String?
    let Zona_infan: String?
    let Zona_depor: String?
    let Club_naút: String?
    let Submarinis: String?
    let Zona_Surf: String?
    let Observacio: String?
    let Coordenada: Int?
    let Coordena_1: Int?
    let Huso: String?
    let Coordena_2: String?
    let Coordena_3: String?
    let Puerto_dep: String?
    let Web_puerto: String?
    let Distancia_: String?
    let Hospital: String?
    let Dirección: String?
    let Teléfono_: String?
    let Distancia1: String?
    let Composici: String?
    let Fachada_Li: String?
    let Espacio_pr: String?
    let Espacio__1: String?
    let Coordena_4: Double?
    let Coordena_5: Double?
    let URL_MAGRAM: String?
    
}

struct Geometry: Decodable{
    let x: Double?
    let y: Double?
}
