type Arr = array<vec4<f32>, 16u>;

struct PGlobals {
  x_GradientSettingsTex_TexelSize : vec4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
}

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat18 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_Texture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Texture0 : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(2) var x_Texture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Texture1 : sampler;

@group(0) @binding(3) var x_Texture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Texture2 : sampler;

@group(0) @binding(4) var x_Texture3 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Texture3 : sampler;

@group(0) @binding(5) var x_Texture4 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Texture4 : sampler;

@group(0) @binding(6) var x_Texture5 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Texture5 : sampler;

@group(0) @binding(7) var x_Texture6 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Texture6 : sampler;

@group(0) @binding(8) var x_Texture7 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Texture7 : sampler;

var<private> u_xlatb6 : vec3<bool>;

var<private> u_xlat8 : f32;

var<private> u_xlatu18 : u32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_582 : PGlobals;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(9) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShaderInfoTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatu14 : u32;

var<private> u_xlat20 : f32;

var<private> u_xlat0 : vec2<f32>;

var<private> u_xlatu0 : u32;

@group(0) @binding(10) var x_GradientSettingsTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GradientSettingsTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlatb11 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb22 : bool;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlati3 : i32;

var<private> u_xlatb9 : bool;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlat22 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_36 : f32;
  var x_981 : f32;
  var x_1129 : f32;
  var x_1159 : f32;
  var x_1168 : f32;
  var x_1181 : vec2<f32>;
  var x_1219 : f32;
  var x_1231 : f32;
  var x_1268 : f32;
  var x_1291 : f32;
  var x_1306 : f32;
  var x_1316 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = vs_TEXCOORD1.w;
  u_xlatb0.x = (x_18 >= 2.0f);
  let x_28 : f32 = vs_TEXCOORD1.w;
  u_xlat6.x = (x_28 + -2.0f);
  let x_34 : bool = u_xlatb0.x;
  if (x_34) {
    let x_40 : f32 = u_xlat6.x;
    x_36 = x_40;
  } else {
    let x_43 : f32 = vs_TEXCOORD1.w;
    x_36 = x_43;
  }
  let x_44 : f32 = x_36;
  u_xlat6.x = x_44;
  let x_48 : f32 = vs_TEXCOORD1.x;
  u_xlatb12.x = (x_48 == 1.0f);
  let x_53 : bool = u_xlatb12.x;
  if (x_53) {
    let x_59 : f32 = u_xlat6.x;
    u_xlatb12.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_59, x_59, x_59, x_59))));
    let x_66 : bool = u_xlatb12.x;
    if (x_66) {
      let x_72 : vec4<f32> = vs_TEXCOORD4;
      let x_74 : vec4<bool> = (vec4<f32>(-9999.0f, -9999.0f, -9999.0f, -9999.0f) < vec4<f32>(x_72.x, x_72.z, x_72.x, x_72.z));
      u_xlatb12 = vec2<bool>(x_74.x, x_74.y);
      let x_77 : bool = u_xlatb12.x;
      if (x_77) {
        let x_82 : vec4<f32> = vs_TEXCOORD4;
        let x_84 : vec4<f32> = vs_TEXCOORD4;
        u_xlat12 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
        let x_87 : f32 = u_xlat12;
        u_xlat12 = sqrt(x_87);
        let x_89 : f32 = u_xlat12;
        u_xlat12 = (x_89 + -1.0f);
        let x_94 : f32 = u_xlat12;
        u_xlat1.x = dpdxCoarse(x_94);
        let x_98 : f32 = u_xlat12;
        u_xlat7 = dpdyCoarse(x_98);
        let x_100 : f32 = u_xlat7;
        let x_103 : f32 = u_xlat1.x;
        u_xlat1.x = (abs(x_100) + abs(x_103));
        let x_107 : f32 = u_xlat12;
        let x_109 : f32 = u_xlat1.x;
        u_xlat12 = (x_107 / x_109);
        let x_111 : f32 = u_xlat12;
        u_xlat12 = (-(x_111) + 0.5f);
        let x_115 : f32 = u_xlat12;
        u_xlat12 = clamp(x_115, 0.0f, 1.0f);
      } else {
        u_xlat12 = 1.0f;
      }
      let x_120 : bool = u_xlatb12.y;
      if (x_120) {
        let x_124 : vec4<f32> = vs_TEXCOORD4;
        let x_126 : vec4<f32> = vs_TEXCOORD4;
        u_xlat18 = dot(vec2<f32>(x_124.z, x_124.w), vec2<f32>(x_126.z, x_126.w));
        let x_129 : f32 = u_xlat18;
        u_xlat18 = sqrt(x_129);
        let x_131 : f32 = u_xlat18;
        u_xlat18 = (x_131 + -1.0f);
        let x_133 : f32 = u_xlat18;
        u_xlat1.x = dpdxCoarse(x_133);
        let x_136 : f32 = u_xlat18;
        u_xlat7 = dpdyCoarse(x_136);
        let x_138 : f32 = u_xlat7;
        let x_141 : f32 = u_xlat1.x;
        u_xlat1.x = (abs(x_138) + abs(x_141));
        let x_145 : f32 = u_xlat18;
        let x_147 : f32 = u_xlat1.x;
        u_xlat18 = (x_145 / x_147);
        let x_149 : f32 = u_xlat18;
        u_xlat18 = (-(x_149) + 0.5f);
        let x_152 : f32 = u_xlat18;
        u_xlat18 = clamp(x_152, 0.0f, 1.0f);
        let x_154 : f32 = u_xlat18;
        u_xlat18 = (-(x_154) + 1.0f);
        let x_157 : f32 = u_xlat18;
        let x_158 : f32 = u_xlat12;
        u_xlat12 = (x_157 * x_158);
      }
    } else {
      u_xlat12 = 1.0f;
    }
    let x_164 : vec4<f32> = vs_COLOR0;
    let x_165 : vec3<f32> = vec3<f32>(x_164.x, x_164.y, x_164.z);
    let x_166 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_169 : f32 = vs_COLOR0.w;
    u_xlat1.x = x_169;
  } else {
    let x_174 : f32 = vs_TEXCOORD1.x;
    u_xlatb18 = (x_174 == 3.0f);
    let x_177 : bool = u_xlatb18;
    if (x_177) {
      let x_181 : f32 = vs_TEXCOORD1.y;
      u_xlatb18 = (x_181 < 4.0f);
      let x_184 : bool = u_xlatb18;
      if (x_184) {
        let x_188 : f32 = vs_TEXCOORD1.y;
        u_xlatb18 = (x_188 < 2.0f);
        let x_190 : bool = u_xlatb18;
        if (x_190) {
          let x_194 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_194 < 1.0f);
          let x_196 : bool = u_xlatb18;
          if (x_196) {
            let x_211 : vec4<f32> = vs_TEXCOORD0;
            let x_213 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_211.x, x_211.y));
            u_xlat2 = x_213;
          } else {
            let x_220 : vec4<f32> = vs_TEXCOORD0;
            let x_222 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_220.x, x_220.y));
            u_xlat2 = x_222;
          }
        } else {
          let x_225 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_225 < 3.0f);
          let x_227 : bool = u_xlatb18;
          if (x_227) {
            let x_235 : vec4<f32> = vs_TEXCOORD0;
            let x_237 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_235.x, x_235.y));
            u_xlat2 = x_237;
          } else {
            let x_244 : vec4<f32> = vs_TEXCOORD0;
            let x_246 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_244.x, x_244.y));
            u_xlat2 = x_246;
          }
        }
      } else {
        let x_249 : f32 = vs_TEXCOORD1.y;
        u_xlatb18 = (x_249 < 6.0f);
        let x_252 : bool = u_xlatb18;
        if (x_252) {
          let x_256 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_256 < 5.0f);
          let x_259 : bool = u_xlatb18;
          if (x_259) {
            let x_267 : vec4<f32> = vs_TEXCOORD0;
            let x_269 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_267.x, x_267.y));
            u_xlat2 = x_269;
          } else {
            let x_276 : vec4<f32> = vs_TEXCOORD0;
            let x_278 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_276.x, x_276.y));
            u_xlat2 = x_278;
          }
        } else {
          let x_281 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_281 < 7.0f);
          let x_284 : bool = u_xlatb18;
          if (x_284) {
            let x_292 : vec4<f32> = vs_TEXCOORD0;
            let x_294 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_292.x, x_292.y));
            u_xlat2 = x_294;
          } else {
            let x_301 : vec4<f32> = vs_TEXCOORD0;
            let x_303 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_301.x, x_301.y));
            u_xlat2 = x_303;
          }
        }
      }
      let x_304 : vec4<f32> = u_xlat2;
      let x_306 : vec4<f32> = vs_COLOR0;
      u_xlat1 = (vec4<f32>(x_304.w, x_304.x, x_304.y, x_304.z) * vec4<f32>(x_306.w, x_306.x, x_306.y, x_306.z));
      let x_313 : f32 = u_xlat6.x;
      u_xlatb6.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_313, x_313, x_313, x_313))));
      let x_319 : bool = u_xlatb6.x;
      if (x_319) {
        let x_323 : vec4<f32> = vs_TEXCOORD4;
        let x_325 : vec4<bool> = (vec4<f32>(-9999.0f, 0.0f, -9999.0f, -9999.0f) < vec4<f32>(x_323.x, x_323.x, x_323.z, x_323.z));
        let x_326 : vec2<bool> = vec2<bool>(x_325.x, x_325.z);
        let x_327 : vec3<bool> = u_xlatb6;
        u_xlatb6 = vec3<bool>(x_326.x, x_327.y, x_326.y);
        let x_330 : bool = u_xlatb6.x;
        if (x_330) {
          let x_333 : vec4<f32> = vs_TEXCOORD4;
          let x_335 : vec4<f32> = vs_TEXCOORD4;
          u_xlat6.x = dot(vec2<f32>(x_333.x, x_333.y), vec2<f32>(x_335.x, x_335.y));
          let x_340 : f32 = u_xlat6.x;
          u_xlat6.x = sqrt(x_340);
          let x_344 : f32 = u_xlat6.x;
          u_xlat6.x = (x_344 + -1.0f);
          let x_348 : f32 = u_xlat6.x;
          u_xlat2.x = dpdxCoarse(x_348);
          let x_353 : f32 = u_xlat6.x;
          u_xlat8 = dpdyCoarse(x_353);
          let x_355 : f32 = u_xlat8;
          let x_358 : f32 = u_xlat2.x;
          u_xlat2.x = (abs(x_355) + abs(x_358));
          let x_363 : f32 = u_xlat6.x;
          let x_365 : f32 = u_xlat2.x;
          u_xlat6.x = (x_363 / x_365);
          let x_369 : f32 = u_xlat6.x;
          u_xlat12 = (-(x_369) + 0.5f);
          let x_372 : f32 = u_xlat12;
          u_xlat12 = clamp(x_372, 0.0f, 1.0f);
        } else {
          u_xlat12 = 1.0f;
        }
        let x_377 : bool = u_xlatb6.z;
        if (x_377) {
          let x_380 : vec4<f32> = vs_TEXCOORD4;
          let x_382 : vec4<f32> = vs_TEXCOORD4;
          u_xlat6.x = dot(vec2<f32>(x_380.z, x_380.w), vec2<f32>(x_382.z, x_382.w));
          let x_387 : f32 = u_xlat6.x;
          u_xlat6.x = sqrt(x_387);
          let x_391 : f32 = u_xlat6.x;
          u_xlat6.x = (x_391 + -1.0f);
          let x_395 : f32 = u_xlat6.x;
          u_xlat18 = dpdxCoarse(x_395);
          let x_398 : f32 = u_xlat6.x;
          u_xlat2.x = dpdyCoarse(x_398);
          let x_401 : f32 = u_xlat18;
          let x_404 : f32 = u_xlat2.x;
          u_xlat18 = (abs(x_401) + abs(x_404));
          let x_408 : f32 = u_xlat6.x;
          let x_409 : f32 = u_xlat18;
          u_xlat6.x = (x_408 / x_409);
          let x_413 : f32 = u_xlat6.x;
          u_xlat6.x = (-(x_413) + 0.5f);
          let x_418 : f32 = u_xlat6.x;
          u_xlat6.x = clamp(x_418, 0.0f, 1.0f);
          let x_422 : f32 = u_xlat6.x;
          u_xlat6.x = (-(x_422) + 1.0f);
          let x_427 : f32 = u_xlat6.x;
          let x_428 : f32 = u_xlat12;
          u_xlat12 = (x_427 * x_428);
        }
      } else {
        u_xlat12 = 1.0f;
      }
      let x_431 : vec4<f32> = u_xlat1;
      let x_432 : vec3<f32> = vec3<f32>(x_431.y, x_431.z, x_431.w);
      let x_433 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    } else {
      let x_437 : f32 = vs_TEXCOORD1.x;
      u_xlatb6.x = (x_437 == 2.0f);
      let x_441 : bool = u_xlatb6.x;
      if (x_441) {
        let x_445 : f32 = vs_TEXCOORD1.y;
        u_xlatb6.x = (x_445 < 4.0f);
        let x_449 : bool = u_xlatb6.x;
        if (x_449) {
          let x_453 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_453 < 2.0f);
          let x_455 : bool = u_xlatb18;
          if (x_455) {
            let x_459 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_459 < 1.0f);
            let x_461 : bool = u_xlatb18;
            if (x_461) {
              let x_467 : vec4<f32> = vs_TEXCOORD0;
              let x_469 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_467.x, x_467.y));
              u_xlat2.x = x_469.w;
            } else {
              let x_476 : vec4<f32> = vs_TEXCOORD0;
              let x_478 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_476.x, x_476.y));
              u_xlat2.x = x_478.w;
            }
          } else {
            let x_483 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_483 < 3.0f);
            let x_485 : bool = u_xlatb18;
            if (x_485) {
              let x_491 : vec4<f32> = vs_TEXCOORD0;
              let x_493 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_491.x, x_491.y));
              u_xlat2.x = x_493.w;
            } else {
              let x_500 : vec4<f32> = vs_TEXCOORD0;
              let x_502 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_500.x, x_500.y));
              u_xlat2.x = x_502.w;
            }
          }
        } else {
          let x_507 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_507 < 6.0f);
          let x_509 : bool = u_xlatb18;
          if (x_509) {
            let x_513 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_513 < 5.0f);
            let x_515 : bool = u_xlatb18;
            if (x_515) {
              let x_521 : vec4<f32> = vs_TEXCOORD0;
              let x_523 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_521.x, x_521.y));
              u_xlat2.x = x_523.w;
            } else {
              let x_530 : vec4<f32> = vs_TEXCOORD0;
              let x_532 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_530.x, x_530.y));
              u_xlat2.x = x_532.w;
            }
          } else {
            let x_537 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_537 < 7.0f);
            let x_539 : bool = u_xlatb18;
            if (x_539) {
              let x_545 : vec4<f32> = vs_TEXCOORD0;
              let x_547 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_545.x, x_545.y));
              u_xlat2.x = x_547.w;
            } else {
              let x_554 : vec4<f32> = vs_TEXCOORD0;
              let x_556 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_554.x, x_554.y));
              u_xlat2.x = x_556.w;
            }
          }
        }
        let x_560 : f32 = vs_TEXCOORD1.y;
        let x_562 : f32 = vs_TEXCOORD1.y;
        u_xlat18 = (x_560 + x_562);
        let x_566 : f32 = u_xlat18;
        u_xlatu18 = u32(x_566);
        let x_571 : vec2<f32> = vs_TEXCOORD3;
        u_xlat3 = (vec4<f32>(x_571.x, x_571.y, x_571.x, x_571.y) + vec4<f32>(0.5f, 3.5f, 0.5f, 1.5f));
        let x_577 : vec4<f32> = u_xlat3;
        let x_587 : vec4<f32> = x_582.x_ShaderInfoTex_TexelSize;
        u_xlat3 = (x_577 * vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y));
        let x_596 : vec4<f32> = u_xlat3;
        let x_598 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_596.x, x_596.y), 0.0f);
        u_xlat4 = x_598;
        let x_599 : vec4<f32> = u_xlat4;
        let x_601 : u32 = u_xlatu18;
        let x_604 : vec4<f32> = x_582.x_TextureInfo[bitcast<i32>(x_601)];
        u_xlat4 = (x_599 * vec4<f32>(x_604.w, x_604.w, x_604.w, x_604.w));
        let x_609 : f32 = u_xlat4.w;
        u_xlat5.y = (x_609 * 0.25f);
        let x_616 : f32 = vs_TEXCOORD1.y;
        u_xlat14.x = ((x_616 * 2.0f) + 1.0f);
        let x_622 : f32 = u_xlat14.x;
        u_xlatu14 = u32(x_622);
        let x_624 : vec4<f32> = u_xlat4;
        let x_626 : u32 = u_xlatu18;
        let x_629 : vec4<f32> = x_582.x_TextureInfo[bitcast<i32>(x_626)];
        let x_632 : vec4<f32> = vs_TEXCOORD0;
        let x_634 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_629.y, x_629.y)) + vec2<f32>(x_632.x, x_632.y));
        let x_635 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
        let x_638 : bool = u_xlatb6.x;
        if (x_638) {
          let x_642 : f32 = vs_TEXCOORD1.y;
          u_xlatb6.x = (x_642 < 2.0f);
          let x_646 : bool = u_xlatb6.x;
          if (x_646) {
            let x_650 : f32 = vs_TEXCOORD1.y;
            u_xlatb6.x = (x_650 < 1.0f);
            let x_654 : bool = u_xlatb6.x;
            if (x_654) {
              let x_660 : vec4<f32> = u_xlat3;
              let x_662 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_660.x, x_660.y));
              u_xlat2.y = x_662.w;
            } else {
              let x_669 : vec4<f32> = u_xlat3;
              let x_671 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_669.x, x_669.y));
              u_xlat2.y = x_671.w;
            }
          } else {
            let x_676 : f32 = vs_TEXCOORD1.y;
            u_xlatb6.x = (x_676 < 3.0f);
            let x_680 : bool = u_xlatb6.x;
            if (x_680) {
              let x_686 : vec4<f32> = u_xlat3;
              let x_688 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_686.x, x_686.y));
              u_xlat2.y = x_688.w;
            } else {
              let x_695 : vec4<f32> = u_xlat3;
              let x_697 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_695.x, x_695.y));
              u_xlat2.y = x_697.w;
            }
          }
        } else {
          let x_702 : f32 = vs_TEXCOORD1.y;
          u_xlatb6.x = (x_702 < 6.0f);
          let x_706 : bool = u_xlatb6.x;
          if (x_706) {
            let x_710 : f32 = vs_TEXCOORD1.y;
            u_xlatb6.x = (x_710 < 5.0f);
            let x_714 : bool = u_xlatb6.x;
            if (x_714) {
              let x_720 : vec4<f32> = u_xlat3;
              let x_722 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_720.x, x_720.y));
              u_xlat2.y = x_722.w;
            } else {
              let x_729 : vec4<f32> = u_xlat3;
              let x_731 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_729.x, x_729.y));
              u_xlat2.y = x_731.w;
            }
          } else {
            let x_736 : f32 = vs_TEXCOORD1.y;
            u_xlatb6.x = (x_736 < 7.0f);
            let x_740 : bool = u_xlatb6.x;
            if (x_740) {
              let x_746 : vec4<f32> = u_xlat3;
              let x_748 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_746.x, x_746.y));
              u_xlat2.y = x_748.w;
            } else {
              let x_755 : vec4<f32> = u_xlat3;
              let x_757 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_755.x, x_755.y));
              u_xlat2.y = x_757.w;
            }
          }
        }
        let x_761 : f32 = u_xlat5.y;
        u_xlat5.x = -(x_761);
        u_xlat5.z = 0.0f;
        let x_765 : vec4<f32> = u_xlat5;
        let x_767 : vec4<f32> = vs_TEXCOORD4;
        let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(x_767.x, x_767.x, x_767.x));
        let x_770 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_773 : f32 = vs_TEXCOORD0.y;
        u_xlat6.x = dpdxCoarse(x_773);
        let x_778 : f32 = vs_TEXCOORD0.y;
        u_xlat20 = dpdyCoarse(x_778);
        let x_781 : f32 = u_xlat6.x;
        let x_783 : f32 = u_xlat20;
        u_xlat6.x = (abs(x_781) + abs(x_783));
        let x_787 : vec4<f32> = u_xlat2;
        let x_791 : vec3<f32> = (vec3<f32>(x_787.x, x_787.x, x_787.y) + vec3<f32>(-0.5f, -0.5f, -0.5f));
        let x_792 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_791.z);
        let x_794 : vec4<f32> = u_xlat2;
        let x_796 : u32 = u_xlatu18;
        let x_799 : vec4<f32> = x_582.x_TextureInfo[bitcast<i32>(x_796)];
        let x_802 : vec4<f32> = u_xlat5;
        let x_804 : vec3<f32> = ((vec3<f32>(x_794.x, x_794.y, x_794.w) * vec3<f32>(x_799.w, x_799.w, x_799.w)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
        let x_805 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_804.z);
        let x_807 : vec4<f32> = u_xlat2;
        let x_809 : vec4<f32> = u_xlat2;
        let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.w) + vec3<f32>(x_809.x, x_809.y, x_809.w));
        let x_812 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_811.z);
        u_xlat4.x = 0.0f;
        u_xlat4.y = 0.0f;
        let x_816 : u32 = u_xlatu14;
        let x_819 : vec4<f32> = x_582.x_TextureInfo[bitcast<i32>(x_816)];
        let x_821 : vec3<f32> = u_xlat6;
        let x_824 : vec4<f32> = u_xlat4;
        let x_826 : vec3<f32> = ((vec3<f32>(x_819.y, x_819.y, x_819.y) * vec3<f32>(x_821.x, x_821.x, x_821.x)) + vec3<f32>(x_824.x, x_824.y, x_824.z));
        let x_827 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat2;
        let x_831 : vec4<f32> = u_xlat4;
        let x_833 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.w) / vec3<f32>(x_831.x, x_831.y, x_831.z));
        let x_834 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
        let x_836 : vec4<f32> = u_xlat2;
        let x_839 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) + vec3<f32>(0.5f, 0.5f, 0.5f));
        let x_840 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat2;
        let x_846 : vec3<f32> = clamp(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
        let x_847 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
        let x_850 : bool = u_xlatb0.x;
        if (x_850) {
          let x_854 : vec2<f32> = vs_TEXCOORD3;
          u_xlat0 = (x_854 + vec2<f32>(0.5f, 0.5f));
          let x_857 : vec2<f32> = u_xlat0;
          let x_859 : vec4<f32> = x_582.x_ShaderInfoTex_TexelSize;
          u_xlat0 = (x_857 * vec2<f32>(x_859.x, x_859.y));
          let x_865 : vec2<f32> = u_xlat0;
          let x_866 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_865, 0.0f);
          u_xlat4 = x_866;
          let x_868 : f32 = u_xlat4.w;
          let x_870 : f32 = vs_TEXCOORD1.z;
          u_xlat5.w = (x_868 * x_870);
        } else {
          let x_874 : vec4<f32> = vs_COLOR0;
          let x_875 : vec3<f32> = vec3<f32>(x_874.x, x_874.y, x_874.z);
          let x_876 : vec4<f32> = u_xlat4;
          u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
          let x_879 : f32 = vs_COLOR0.w;
          u_xlat5.w = x_879;
        }
        let x_881 : vec4<f32> = u_xlat4;
        let x_883 : vec4<f32> = u_xlat5;
        let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(x_883.w, x_883.w, x_883.w));
        let x_886 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
        let x_891 : vec4<f32> = u_xlat3;
        let x_893 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_891.z, x_891.w), 0.0f);
        u_xlat3 = x_893;
        let x_895 : f32 = u_xlat3.w;
        let x_897 : f32 = vs_TEXCOORD1.z;
        u_xlat4.w = (x_895 * x_897);
        let x_900 : vec4<f32> = u_xlat3;
        let x_902 : vec4<f32> = u_xlat4;
        let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(x_902.w, x_902.w, x_902.w));
        let x_905 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat2;
        u_xlat0 = (-(vec2<f32>(x_907.x, x_907.y)) + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec2<f32> = u_xlat0;
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat3 = (vec4<f32>(x_912.x, x_912.x, x_912.x, x_912.x) * x_914);
        let x_916 : vec4<f32> = u_xlat2;
        let x_918 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_916.y, x_916.y, x_916.y, x_916.y) * x_918);
        let x_920 : vec4<f32> = u_xlat5;
        let x_921 : vec4<f32> = u_xlat2;
        let x_924 : vec4<f32> = u_xlat3;
        u_xlat3 = ((x_920 * vec4<f32>(x_921.x, x_921.x, x_921.x, x_921.x)) + x_924);
        let x_926 : vec2<f32> = vs_TEXCOORD3;
        let x_929 : vec2<f32> = (x_926 + vec2<f32>(0.5f, 2.5f));
        let x_930 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat2;
        let x_935 : vec4<f32> = x_582.x_ShaderInfoTex_TexelSize;
        let x_937 : vec2<f32> = (vec2<f32>(x_932.x, x_932.y) * vec2<f32>(x_935.x, x_935.y));
        let x_938 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_943 : vec4<f32> = u_xlat2;
        let x_945 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_943.x, x_943.y), 0.0f);
        u_xlat4 = x_945;
        let x_947 : f32 = u_xlat4.w;
        let x_949 : f32 = vs_TEXCOORD1.z;
        u_xlat18 = (x_947 * x_949);
        let x_952 : f32 = u_xlat2.z;
        let x_953 : f32 = u_xlat18;
        u_xlat2.w = (x_952 * x_953);
        let x_956 : vec4<f32> = u_xlat2;
        let x_958 : vec4<f32> = u_xlat4;
        let x_960 : vec3<f32> = (vec3<f32>(x_956.w, x_956.w, x_956.w) * vec3<f32>(x_958.x, x_958.y, x_958.z));
        let x_961 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
        let x_963 : vec2<f32> = u_xlat0;
        let x_965 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_963.x, x_963.x, x_963.x, x_963.x) * x_965);
        let x_967 : vec4<f32> = u_xlat2;
        let x_969 : vec2<f32> = u_xlat0;
        let x_972 : vec4<f32> = u_xlat3;
        u_xlat1 = ((vec4<f32>(x_967.w, x_967.x, x_967.y, x_967.z) * vec4<f32>(x_969.y, x_969.y, x_969.y, x_969.y)) + vec4<f32>(x_972.w, x_972.x, x_972.y, x_972.z));
        let x_976 : f32 = u_xlat1.x;
        u_xlatb0.x = (0.0f < x_976);
        let x_980 : bool = u_xlatb0.x;
        if (x_980) {
          let x_985 : f32 = u_xlat1.x;
          x_981 = x_985;
        } else {
          x_981 = 1.0f;
        }
        let x_987 : f32 = x_981;
        u_xlat0.x = x_987;
        let x_989 : vec4<f32> = u_xlat1;
        let x_991 : vec2<f32> = u_xlat0;
        let x_993 : vec3<f32> = (vec3<f32>(x_989.y, x_989.z, x_989.w) / vec3<f32>(x_991.x, x_991.x, x_991.x));
        let x_994 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
      } else {
        let x_998 : f32 = vs_TEXCOORD1.y;
        let x_1000 : f32 = vs_TEXCOORD1.y;
        u_xlat0.x = (x_998 + x_1000);
        let x_1005 : f32 = u_xlat0.x;
        u_xlatu0 = u32(x_1005);
        u_xlat2.x = 0.5f;
        u_xlat14.y = 0.0f;
        let x_1010 : f32 = vs_TEXCOORD1.z;
        u_xlat2.y = (x_1010 + 0.5f);
        let x_1013 : vec4<f32> = u_xlat2;
        let x_1017 : vec4<f32> = x_582.x_GradientSettingsTex_TexelSize;
        let x_1019 : vec2<f32> = (vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec3<f32> = u_xlat6;
        u_xlat6 = vec3<f32>(x_1019.x, x_1020.y, x_1019.y);
        let x_1027 : vec3<f32> = u_xlat6;
        let x_1029 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1027.x, x_1027.z), 0.0f);
        u_xlat3 = x_1029;
        let x_1032 : f32 = u_xlat3.x;
        u_xlatb3.x = (0.0f < x_1032);
        let x_1036 : vec4<f32> = u_xlat3;
        u_xlat15 = (vec2<f32>(x_1036.z, x_1036.w) + vec2<f32>(-0.5f, -0.5f));
        let x_1040 : vec2<f32> = u_xlat15;
        let x_1041 : vec2<f32> = u_xlat15;
        u_xlat15 = (x_1040 + x_1041);
        let x_1043 : vec4<f32> = vs_TEXCOORD0;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.y) + vec2<f32>(-0.5f, -0.5f));
        let x_1046 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat4;
        let x_1052 : vec2<f32> = u_xlat15;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(2.0f, 2.0f)) + -(x_1052));
        let x_1055 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1058 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = u_xlat4;
        u_xlat16.x = dot(vec2<f32>(x_1058.x, x_1058.y), vec2<f32>(x_1060.x, x_1060.y));
        let x_1065 : f32 = u_xlat16.x;
        u_xlat16.x = inverseSqrt(x_1065);
        let x_1068 : vec2<f32> = u_xlat16;
        let x_1070 : vec4<f32> = u_xlat4;
        u_xlat16 = (vec2<f32>(x_1068.x, x_1068.x) * vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec2<f32> = u_xlat15;
        let x_1075 : vec2<f32> = u_xlat16;
        u_xlat5.x = dot(-(x_1073), x_1075);
        let x_1078 : vec2<f32> = u_xlat15;
        let x_1079 : vec2<f32> = u_xlat15;
        u_xlat15.x = dot(x_1078, x_1079);
        let x_1083 : f32 = u_xlat5.x;
        let x_1086 : f32 = u_xlat5.x;
        let x_1089 : f32 = u_xlat15.x;
        u_xlat15.x = ((-(x_1083) * x_1086) + x_1089);
        let x_1093 : f32 = u_xlat15.x;
        u_xlat15.x = (-(x_1093) + 1.0f);
        let x_1098 : f32 = u_xlat15.x;
        u_xlat15.x = sqrt(x_1098);
        let x_1103 : f32 = u_xlat15.x;
        let x_1106 : f32 = u_xlat5.x;
        u_xlat21 = (-(x_1103) + x_1106);
        let x_1109 : f32 = u_xlat15.x;
        let x_1111 : f32 = u_xlat5.x;
        u_xlat15.x = (x_1109 + x_1111);
        let x_1115 : f32 = u_xlat15.x;
        let x_1116 : f32 = u_xlat21;
        u_xlat5.x = min(x_1115, x_1116);
        let x_1121 : f32 = u_xlat5.x;
        u_xlatb11 = (x_1121 < 0.0f);
        let x_1124 : f32 = u_xlat15.x;
        let x_1125 : f32 = u_xlat21;
        u_xlat15.x = max(x_1124, x_1125);
        let x_1128 : bool = u_xlatb11;
        if (x_1128) {
          let x_1133 : f32 = u_xlat15.x;
          x_1129 = x_1133;
        } else {
          let x_1136 : f32 = u_xlat5.x;
          x_1129 = x_1136;
        }
        let x_1137 : f32 = x_1129;
        u_xlat15.x = x_1137;
        let x_1139 : vec2<f32> = u_xlat15;
        let x_1141 : vec2<f32> = u_xlat16;
        u_xlat15 = (vec2<f32>(x_1139.x, x_1139.x) * x_1141);
        let x_1146 : f32 = u_xlat15.x;
        u_xlatb16 = (0.0001f >= abs(x_1146));
        let x_1151 : f32 = u_xlat15.y;
        u_xlatb22 = (0.0001f < abs(x_1151));
        let x_1154 : vec4<f32> = u_xlat4;
        let x_1156 : vec2<f32> = u_xlat15;
        u_xlat15 = (vec2<f32>(x_1154.x, x_1154.y) / x_1156);
        let x_1158 : bool = u_xlatb22;
        if (x_1158) {
          let x_1163 : f32 = u_xlat15.y;
          x_1159 = x_1163;
        } else {
          x_1159 = 0.0f;
        }
        let x_1165 : f32 = x_1159;
        u_xlat21 = x_1165;
        let x_1167 : bool = u_xlatb16;
        if (x_1167) {
          let x_1171 : f32 = u_xlat21;
          x_1168 = x_1171;
        } else {
          let x_1174 : f32 = u_xlat15.x;
          x_1168 = x_1174;
        }
        let x_1175 : f32 = x_1168;
        u_xlat10.x = x_1175;
        u_xlat10.y = 0.0f;
        let x_1179 : bool = u_xlatb3.x;
        if (x_1179) {
          let x_1184 : vec2<f32> = u_xlat10;
          x_1181 = x_1184;
        } else {
          let x_1186 : vec4<f32> = vs_TEXCOORD0;
          x_1181 = vec2<f32>(x_1186.x, x_1186.y);
        }
        let x_1188 : vec2<f32> = x_1181;
        let x_1189 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1189.x, x_1188.x, x_1188.y, x_1189.w);
        let x_1192 : f32 = u_xlat3.y;
        u_xlat3.x = (x_1192 * 255.0f);
        let x_1197 : f32 = u_xlat3.x;
        u_xlat3.x = round(x_1197);
        let x_1203 : f32 = u_xlat3.x;
        u_xlati3 = i32(x_1203);
        let x_1207 : f32 = u_xlat4.y;
        let x_1209 : f32 = u_xlat4.y;
        u_xlatb9 = (x_1207 >= -(x_1209));
        let x_1213 : f32 = u_xlat4.y;
        u_xlat15.x = fract(abs(x_1213));
        let x_1218 : bool = u_xlatb9;
        if (x_1218) {
          let x_1223 : f32 = u_xlat15.x;
          x_1219 = x_1223;
        } else {
          let x_1226 : f32 = u_xlat15.x;
          x_1219 = -(x_1226);
        }
        let x_1228 : f32 = x_1219;
        u_xlat9 = x_1228;
        let x_1229 : i32 = u_xlati3;
        if ((x_1229 != 0i)) {
          let x_1235 : f32 = u_xlat4.y;
          x_1231 = x_1235;
        } else {
          let x_1237 : f32 = u_xlat9;
          x_1231 = x_1237;
        }
        let x_1238 : f32 = x_1231;
        u_xlat9 = x_1238;
        let x_1239 : i32 = u_xlati3;
        let x_1243 : vec4<bool> = (vec4<i32>(x_1239, x_1239, x_1239, x_1239) == vec4<i32>(1i, 0i, 2i, 0i));
        let x_1244 : vec2<bool> = vec2<bool>(x_1243.x, x_1243.z);
        let x_1245 : vec3<bool> = u_xlatb3;
        u_xlatb3 = vec3<bool>(x_1244.x, x_1245.y, x_1244.y);
        let x_1247 : f32 = u_xlat9;
        u_xlat21 = x_1247;
        let x_1248 : f32 = u_xlat21;
        u_xlat21 = clamp(x_1248, 0.0f, 1.0f);
        let x_1251 : bool = u_xlatb3.x;
        let x_1252 : f32 = u_xlat21;
        let x_1253 : f32 = u_xlat9;
        u_xlat3.x = select(x_1253, x_1252, x_1251);
        let x_1257 : f32 = u_xlat3.x;
        u_xlat9 = (x_1257 * 0.5f);
        let x_1260 : f32 = u_xlat9;
        let x_1261 : f32 = u_xlat9;
        u_xlatb21 = (x_1260 >= -(x_1261));
        let x_1264 : f32 = u_xlat9;
        u_xlat9 = fract(abs(x_1264));
        let x_1267 : bool = u_xlatb21;
        if (x_1267) {
          let x_1271 : f32 = u_xlat9;
          x_1268 = x_1271;
        } else {
          let x_1273 : f32 = u_xlat9;
          x_1268 = -(x_1273);
        }
        let x_1275 : f32 = x_1268;
        u_xlat9 = x_1275;
        let x_1276 : f32 = u_xlat9;
        let x_1277 : f32 = u_xlat9;
        u_xlat21 = (x_1276 + x_1277);
        let x_1279 : f32 = u_xlat9;
        u_xlatb9 = (0.5f < x_1279);
        let x_1282 : f32 = u_xlat21;
        let x_1283 : f32 = u_xlat21;
        u_xlatb10 = (x_1282 >= -(x_1283));
        let x_1287 : f32 = u_xlat21;
        u_xlat22 = fract(abs(x_1287));
        let x_1290 : bool = u_xlatb10;
        if (x_1290) {
          let x_1294 : f32 = u_xlat22;
          x_1291 = x_1294;
        } else {
          let x_1296 : f32 = u_xlat22;
          x_1291 = -(x_1296);
        }
        let x_1298 : f32 = x_1291;
        u_xlat10.x = x_1298;
        let x_1301 : f32 = u_xlat10.x;
        u_xlat10.x = (-(x_1301) + 1.0f);
        let x_1305 : bool = u_xlatb9;
        if (x_1305) {
          let x_1310 : f32 = u_xlat10.x;
          x_1306 = x_1310;
        } else {
          let x_1312 : f32 = u_xlat21;
          x_1306 = x_1312;
        }
        let x_1313 : f32 = x_1306;
        u_xlat9 = x_1313;
        let x_1315 : bool = u_xlatb3.z;
        if (x_1315) {
          let x_1319 : f32 = u_xlat9;
          x_1316 = x_1319;
        } else {
          let x_1322 : f32 = u_xlat3.x;
          x_1316 = x_1322;
        }
        let x_1323 : f32 = x_1316;
        u_xlat4.x = x_1323;
        let x_1327 : f32 = x_582.x_GradientSettingsTex_TexelSize.x;
        u_xlat14.x = x_1327;
        let x_1329 : vec4<f32> = u_xlat2;
        let x_1332 : vec4<f32> = x_582.x_GradientSettingsTex_TexelSize;
        let x_1335 : vec2<f32> = u_xlat14;
        let x_1336 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + x_1335);
        let x_1337 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1336.x, x_1336.y, x_1337.z, x_1337.w);
        let x_1342 : vec4<f32> = u_xlat2;
        let x_1344 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1342.x, x_1342.y), 0.0f);
        u_xlat3 = x_1344;
        let x_1345 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_1345.y, x_1345.w, x_1345.x, x_1345.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1350 : vec4<f32> = u_xlat3;
        let x_1352 : vec4<f32> = u_xlat3;
        let x_1354 : vec2<f32> = (vec2<f32>(x_1350.x, x_1350.y) + vec2<f32>(x_1352.z, x_1352.w));
        let x_1355 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat2;
        let x_1359 : vec2<f32> = (vec2<f32>(x_1357.x, x_1357.y) + vec2<f32>(0.5f, 0.5f));
        let x_1360 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec2<f32> = u_xlat14;
        let x_1364 : vec3<f32> = u_xlat6;
        let x_1366 : vec2<f32> = ((x_1362 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_1364.x, x_1364.z));
        let x_1367 : vec3<f32> = u_xlat6;
        u_xlat6 = vec3<f32>(x_1366.x, x_1367.y, x_1366.y);
        let x_1372 : vec3<f32> = u_xlat6;
        let x_1374 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1372.x, x_1372.z), 0.0f);
        u_xlat2 = x_1374;
        let x_1375 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_1375.y, x_1375.w, x_1375.x, x_1375.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1378 : vec4<f32> = u_xlat2;
        let x_1380 : vec4<f32> = u_xlat2;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1378.x, x_1378.y) + vec2<f32>(x_1380.z, x_1380.w));
        let x_1383 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1383.x, x_1383.y, x_1382.x, x_1382.y);
        let x_1385 : vec4<f32> = u_xlat3;
        let x_1386 : u32 = u_xlatu0;
        let x_1389 : vec4<f32> = x_582.x_TextureInfo[bitcast<i32>(x_1386)];
        u_xlat2 = (x_1385 * vec4<f32>(x_1389.y, x_1389.z, x_1389.y, x_1389.z));
        let x_1392 : vec4<f32> = u_xlat4;
        let x_1394 : vec4<f32> = u_xlat2;
        let x_1397 : vec4<f32> = u_xlat2;
        u_xlat0 = ((vec2<f32>(x_1392.x, x_1392.z) * vec2<f32>(x_1394.z, x_1394.w)) + vec2<f32>(x_1397.x, x_1397.y));
        let x_1401 : f32 = vs_TEXCOORD1.y;
        u_xlatb18 = (x_1401 < 4.0f);
        let x_1403 : bool = u_xlatb18;
        if (x_1403) {
          let x_1407 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_1407 < 2.0f);
          let x_1409 : bool = u_xlatb18;
          if (x_1409) {
            let x_1413 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_1413 < 1.0f);
            let x_1415 : bool = u_xlatb18;
            if (x_1415) {
              let x_1421 : vec2<f32> = u_xlat0;
              let x_1422 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, x_1421);
              u_xlat2 = x_1422;
            } else {
              let x_1427 : vec2<f32> = u_xlat0;
              let x_1428 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, x_1427);
              u_xlat2 = x_1428;
            }
          } else {
            let x_1431 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_1431 < 3.0f);
            let x_1433 : bool = u_xlatb18;
            if (x_1433) {
              let x_1439 : vec2<f32> = u_xlat0;
              let x_1440 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, x_1439);
              u_xlat2 = x_1440;
            } else {
              let x_1445 : vec2<f32> = u_xlat0;
              let x_1446 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, x_1445);
              u_xlat2 = x_1446;
            }
          }
        } else {
          let x_1449 : f32 = vs_TEXCOORD1.y;
          u_xlatb18 = (x_1449 < 6.0f);
          let x_1451 : bool = u_xlatb18;
          if (x_1451) {
            let x_1455 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_1455 < 5.0f);
            let x_1457 : bool = u_xlatb18;
            if (x_1457) {
              let x_1463 : vec2<f32> = u_xlat0;
              let x_1464 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, x_1463);
              u_xlat2 = x_1464;
            } else {
              let x_1469 : vec2<f32> = u_xlat0;
              let x_1470 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, x_1469);
              u_xlat2 = x_1470;
            }
          } else {
            let x_1473 : f32 = vs_TEXCOORD1.y;
            u_xlatb18 = (x_1473 < 7.0f);
            let x_1475 : bool = u_xlatb18;
            if (x_1475) {
              let x_1481 : vec2<f32> = u_xlat0;
              let x_1482 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, x_1481);
              u_xlat2 = x_1482;
            } else {
              let x_1487 : vec2<f32> = u_xlat0;
              let x_1488 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, x_1487);
              u_xlat2 = x_1488;
            }
          }
        }
        let x_1489 : vec4<f32> = u_xlat2;
        let x_1491 : vec4<f32> = vs_COLOR0;
        u_xlat1 = (vec4<f32>(x_1489.w, x_1489.x, x_1489.y, x_1489.z) * vec4<f32>(x_1491.w, x_1491.x, x_1491.y, x_1491.z));
        let x_1494 : vec4<f32> = u_xlat1;
        let x_1495 : vec3<f32> = vec3<f32>(x_1494.y, x_1494.z, x_1494.w);
        let x_1496 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
      }
      u_xlat12 = 1.0f;
    }
  }
  let x_1498 : vec4<f32> = vs_TEXCOORD0;
  let x_1503 : vec4<bool> = (abs(vec4<f32>(x_1498.z, x_1498.w, x_1498.z, x_1498.z)) < vec4<f32>(1.000100017f, 1.000100017f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_1503.x, x_1503.y);
  let x_1506 : bool = u_xlatb0.x;
  let x_1508 : bool = u_xlatb0.y;
  u_xlatb0.x = (x_1506 & x_1508);
  let x_1512 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_1512);
  let x_1516 : f32 = u_xlat0.x;
  let x_1517 : f32 = u_xlat12;
  u_xlat6.x = (x_1516 * x_1517);
  let x_1520 : f32 = u_xlat12;
  let x_1522 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1520 * x_1522) + -0.003f);
  let x_1528 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1528 < 0.0f);
  let x_1532 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_1532) * -1i) != 0i)) {
    discard;
  }
  let x_1541 : f32 = u_xlat6.x;
  let x_1543 : f32 = u_xlat1.x;
  SV_Target0.w = (x_1541 * x_1543);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) @interpolate(flat) vs_TEXCOORD1_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec4<f32>, @location(3) @interpolate(flat) vs_TEXCOORD3_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

