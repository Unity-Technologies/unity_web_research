diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 16u>;

struct PGlobals {
  /* @offset(0) */
  x_GradientSettingsTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_TextureInfo : Arr,
}

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_Texture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Texture0 : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Texture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Texture1 : sampler;

@group(0) @binding(2) var x_Texture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Texture2 : sampler;

@group(0) @binding(3) var x_Texture3 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Texture3 : sampler;

@group(0) @binding(4) var x_Texture4 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Texture4 : sampler;

@group(0) @binding(5) var x_Texture5 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Texture5 : sampler;

@group(0) @binding(6) var x_Texture6 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Texture6 : sampler;

@group(0) @binding(7) var x_Texture7 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Texture7 : sampler;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatu21 : u32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatu16 : u32;

var<private> u_xlatb23 : bool;

@group(1) @binding(0) var<uniform> x_596 : PGlobals;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(8) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShaderInfoTex : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat0 : vec2<f32>;

var<private> u_xlatu0 : u32;

@group(0) @binding(9) var x_GradientSettingsTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GradientSettingsTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat17 : vec2<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlatb12 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlatb25 : bool;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlati3 : i32;

var<private> u_xlatb10 : bool;

var<private> u_xlat10 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlatb11 : bool;

var<private> u_xlat25 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_36 : f32;
  var x_1006 : f32;
  var x_1165 : f32;
  var x_1195 : f32;
  var x_1204 : f32;
  var x_1217 : vec2<f32>;
  var x_1255 : f32;
  var x_1267 : f32;
  var x_1304 : f32;
  var x_1327 : f32;
  var x_1342 : f32;
  var x_1352 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = vs_TEXCOORD1.w;
  u_xlatb0.x = (x_18 >= 2.0f);
  let x_28 : f32 = vs_TEXCOORD1.w;
  u_xlat7.x = (x_28 + -2.0f);
  let x_34 : bool = u_xlatb0.x;
  if (x_34) {
    let x_40 : f32 = u_xlat7.x;
    x_36 = x_40;
  } else {
    let x_43 : f32 = vs_TEXCOORD1.w;
    x_36 = x_43;
  }
  let x_44 : f32 = x_36;
  u_xlat7.x = x_44;
  let x_48 : f32 = vs_TEXCOORD1.x;
  u_xlatb14.x = (x_48 == 1.0f);
  let x_53 : bool = u_xlatb14.x;
  if (x_53) {
    let x_59 : f32 = u_xlat7.x;
    u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_59, x_59, x_59, x_59))));
    let x_66 : bool = u_xlatb14.x;
    if (x_66) {
      let x_72 : vec4<f32> = vs_TEXCOORD4;
      let x_74 : vec4<bool> = (vec4<f32>(-9999.0f, -9999.0f, -9999.0f, -9999.0f) < vec4<f32>(x_72.x, x_72.z, x_72.x, x_72.z));
      u_xlatb14 = vec2<bool>(x_74.x, x_74.y);
      let x_77 : bool = u_xlatb14.x;
      if (x_77) {
        let x_82 : vec4<f32> = vs_TEXCOORD4;
        let x_84 : vec4<f32> = vs_TEXCOORD4;
        u_xlat14 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
        let x_87 : f32 = u_xlat14;
        u_xlat14 = sqrt(x_87);
        let x_89 : f32 = u_xlat14;
        u_xlat14 = (x_89 + -1.0f);
        let x_94 : f32 = u_xlat14;
        u_xlat1.x = dpdxCoarse(x_94);
        let x_97 : f32 = u_xlat14;
        u_xlat1.y = dpdyCoarse(x_97);
        let x_101 : vec4<f32> = u_xlat1;
        let x_103 : vec4<f32> = u_xlat1;
        u_xlat1.x = dot(vec2<f32>(x_101.x, x_101.y), vec2<f32>(x_103.x, x_103.y));
        let x_108 : f32 = u_xlat1.x;
        u_xlat1.x = sqrt(x_108);
        let x_111 : f32 = u_xlat14;
        let x_113 : f32 = u_xlat1.x;
        u_xlat14 = (x_111 / x_113);
        let x_115 : f32 = u_xlat14;
        u_xlat14 = (-(x_115) + 0.5f);
        let x_119 : f32 = u_xlat14;
        u_xlat14 = clamp(x_119, 0.0f, 1.0f);
      } else {
        u_xlat14 = 1.0f;
      }
      let x_123 : bool = u_xlatb14.y;
      if (x_123) {
        let x_127 : vec4<f32> = vs_TEXCOORD4;
        let x_129 : vec4<f32> = vs_TEXCOORD4;
        u_xlat21 = dot(vec2<f32>(x_127.z, x_127.w), vec2<f32>(x_129.z, x_129.w));
        let x_132 : f32 = u_xlat21;
        u_xlat21 = sqrt(x_132);
        let x_134 : f32 = u_xlat21;
        u_xlat21 = (x_134 + -1.0f);
        let x_136 : f32 = u_xlat21;
        u_xlat1.x = dpdxCoarse(x_136);
        let x_139 : f32 = u_xlat21;
        u_xlat1.y = dpdyCoarse(x_139);
        let x_142 : vec4<f32> = u_xlat1;
        let x_144 : vec4<f32> = u_xlat1;
        u_xlat1.x = dot(vec2<f32>(x_142.x, x_142.y), vec2<f32>(x_144.x, x_144.y));
        let x_149 : f32 = u_xlat1.x;
        u_xlat1.x = sqrt(x_149);
        let x_152 : f32 = u_xlat21;
        let x_154 : f32 = u_xlat1.x;
        u_xlat21 = (x_152 / x_154);
        let x_156 : f32 = u_xlat21;
        u_xlat21 = (-(x_156) + 0.5f);
        let x_159 : f32 = u_xlat21;
        u_xlat21 = clamp(x_159, 0.0f, 1.0f);
        let x_161 : f32 = u_xlat21;
        u_xlat21 = (-(x_161) + 1.0f);
        let x_164 : f32 = u_xlat21;
        let x_165 : f32 = u_xlat14;
        u_xlat14 = (x_164 * x_165);
      }
    } else {
      u_xlat14 = 1.0f;
    }
    let x_171 : vec4<f32> = vs_COLOR0;
    let x_172 : vec3<f32> = vec3<f32>(x_171.x, x_171.y, x_171.z);
    let x_173 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
    let x_176 : f32 = vs_COLOR0.w;
    u_xlat1.x = x_176;
  } else {
    let x_181 : f32 = vs_TEXCOORD1.x;
    u_xlatb21 = (x_181 == 3.0f);
    let x_184 : bool = u_xlatb21;
    if (x_184) {
      let x_188 : f32 = vs_TEXCOORD1.y;
      u_xlatb21 = (x_188 < 4.0f);
      let x_191 : bool = u_xlatb21;
      if (x_191) {
        let x_195 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_195 < 2.0f);
        let x_197 : bool = u_xlatb21;
        if (x_197) {
          let x_201 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_201 < 1.0f);
          let x_203 : bool = u_xlatb21;
          if (x_203) {
            let x_218 : vec4<f32> = vs_TEXCOORD0;
            let x_220 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_218.x, x_218.y));
            u_xlat2 = x_220;
          } else {
            let x_227 : vec4<f32> = vs_TEXCOORD0;
            let x_229 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_227.x, x_227.y));
            u_xlat2 = x_229;
          }
        } else {
          let x_232 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_232 < 3.0f);
          let x_234 : bool = u_xlatb21;
          if (x_234) {
            let x_242 : vec4<f32> = vs_TEXCOORD0;
            let x_244 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_242.x, x_242.y));
            u_xlat2 = x_244;
          } else {
            let x_251 : vec4<f32> = vs_TEXCOORD0;
            let x_253 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_251.x, x_251.y));
            u_xlat2 = x_253;
          }
        }
      } else {
        let x_256 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_256 < 6.0f);
        let x_259 : bool = u_xlatb21;
        if (x_259) {
          let x_263 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_263 < 5.0f);
          let x_266 : bool = u_xlatb21;
          if (x_266) {
            let x_274 : vec4<f32> = vs_TEXCOORD0;
            let x_276 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_274.x, x_274.y));
            u_xlat2 = x_276;
          } else {
            let x_283 : vec4<f32> = vs_TEXCOORD0;
            let x_285 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_283.x, x_283.y));
            u_xlat2 = x_285;
          }
        } else {
          let x_288 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_288 < 7.0f);
          let x_291 : bool = u_xlatb21;
          if (x_291) {
            let x_299 : vec4<f32> = vs_TEXCOORD0;
            let x_301 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_299.x, x_299.y));
            u_xlat2 = x_301;
          } else {
            let x_308 : vec4<f32> = vs_TEXCOORD0;
            let x_310 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_308.x, x_308.y));
            u_xlat2 = x_310;
          }
        }
      }
      let x_311 : vec4<f32> = u_xlat2;
      let x_313 : vec4<f32> = vs_COLOR0;
      u_xlat1 = (vec4<f32>(x_311.w, x_311.x, x_311.y, x_311.z) * vec4<f32>(x_313.w, x_313.x, x_313.y, x_313.z));
      let x_320 : f32 = u_xlat7.x;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_320, x_320, x_320, x_320))));
      let x_326 : bool = u_xlatb7.x;
      if (x_326) {
        let x_330 : vec4<f32> = vs_TEXCOORD4;
        let x_332 : vec4<bool> = (vec4<f32>(-9999.0f, 0.0f, -9999.0f, -9999.0f) < vec4<f32>(x_330.x, x_330.x, x_330.z, x_330.z));
        let x_333 : vec2<bool> = vec2<bool>(x_332.x, x_332.z);
        let x_334 : vec3<bool> = u_xlatb7;
        u_xlatb7 = vec3<bool>(x_333.x, x_334.y, x_333.y);
        let x_337 : bool = u_xlatb7.x;
        if (x_337) {
          let x_340 : vec4<f32> = vs_TEXCOORD4;
          let x_342 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7.x = dot(vec2<f32>(x_340.x, x_340.y), vec2<f32>(x_342.x, x_342.y));
          let x_347 : f32 = u_xlat7.x;
          u_xlat7.x = sqrt(x_347);
          let x_351 : f32 = u_xlat7.x;
          u_xlat7.x = (x_351 + -1.0f);
          let x_355 : f32 = u_xlat7.x;
          u_xlat2.x = dpdxCoarse(x_355);
          let x_359 : f32 = u_xlat7.x;
          u_xlat2.y = dpdyCoarse(x_359);
          let x_362 : vec4<f32> = u_xlat2;
          let x_364 : vec4<f32> = u_xlat2;
          u_xlat2.x = dot(vec2<f32>(x_362.x, x_362.y), vec2<f32>(x_364.x, x_364.y));
          let x_369 : f32 = u_xlat2.x;
          u_xlat2.x = sqrt(x_369);
          let x_373 : f32 = u_xlat7.x;
          let x_375 : f32 = u_xlat2.x;
          u_xlat7.x = (x_373 / x_375);
          let x_379 : f32 = u_xlat7.x;
          u_xlat14 = (-(x_379) + 0.5f);
          let x_382 : f32 = u_xlat14;
          u_xlat14 = clamp(x_382, 0.0f, 1.0f);
        } else {
          u_xlat14 = 1.0f;
        }
        let x_387 : bool = u_xlatb7.z;
        if (x_387) {
          let x_390 : vec4<f32> = vs_TEXCOORD4;
          let x_392 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7.x = dot(vec2<f32>(x_390.z, x_390.w), vec2<f32>(x_392.z, x_392.w));
          let x_397 : f32 = u_xlat7.x;
          u_xlat7.x = sqrt(x_397);
          let x_401 : f32 = u_xlat7.x;
          u_xlat7.x = (x_401 + -1.0f);
          let x_405 : f32 = u_xlat7.x;
          u_xlat2.x = dpdxCoarse(x_405);
          let x_409 : f32 = u_xlat7.x;
          u_xlat2.y = dpdyCoarse(x_409);
          let x_412 : vec4<f32> = u_xlat2;
          let x_414 : vec4<f32> = u_xlat2;
          u_xlat21 = dot(vec2<f32>(x_412.x, x_412.y), vec2<f32>(x_414.x, x_414.y));
          let x_417 : f32 = u_xlat21;
          u_xlat21 = sqrt(x_417);
          let x_420 : f32 = u_xlat7.x;
          let x_421 : f32 = u_xlat21;
          u_xlat7.x = (x_420 / x_421);
          let x_425 : f32 = u_xlat7.x;
          u_xlat7.x = (-(x_425) + 0.5f);
          let x_430 : f32 = u_xlat7.x;
          u_xlat7.x = clamp(x_430, 0.0f, 1.0f);
          let x_434 : f32 = u_xlat7.x;
          u_xlat7.x = (-(x_434) + 1.0f);
          let x_439 : f32 = u_xlat7.x;
          let x_440 : f32 = u_xlat14;
          u_xlat14 = (x_439 * x_440);
        }
      } else {
        u_xlat14 = 1.0f;
      }
      let x_443 : vec4<f32> = u_xlat1;
      let x_444 : vec3<f32> = vec3<f32>(x_443.y, x_443.z, x_443.w);
      let x_445 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
    } else {
      let x_449 : f32 = vs_TEXCOORD1.x;
      u_xlatb7.x = (x_449 == 2.0f);
      let x_453 : bool = u_xlatb7.x;
      if (x_453) {
        let x_457 : f32 = vs_TEXCOORD1.y;
        u_xlatb7.x = (x_457 < 4.0f);
        let x_461 : bool = u_xlatb7.x;
        if (x_461) {
          let x_465 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_465 < 2.0f);
          let x_467 : bool = u_xlatb21;
          if (x_467) {
            let x_471 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_471 < 1.0f);
            let x_473 : bool = u_xlatb21;
            if (x_473) {
              let x_479 : vec4<f32> = vs_TEXCOORD0;
              let x_481 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_479.x, x_479.y));
              u_xlat2.x = x_481.w;
            } else {
              let x_488 : vec4<f32> = vs_TEXCOORD0;
              let x_490 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_488.x, x_488.y));
              u_xlat2.x = x_490.w;
            }
          } else {
            let x_495 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_495 < 3.0f);
            let x_497 : bool = u_xlatb21;
            if (x_497) {
              let x_503 : vec4<f32> = vs_TEXCOORD0;
              let x_505 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_503.x, x_503.y));
              u_xlat2.x = x_505.w;
            } else {
              let x_512 : vec4<f32> = vs_TEXCOORD0;
              let x_514 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_512.x, x_512.y));
              u_xlat2.x = x_514.w;
            }
          }
        } else {
          let x_519 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_519 < 6.0f);
          let x_521 : bool = u_xlatb21;
          if (x_521) {
            let x_525 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_525 < 5.0f);
            let x_527 : bool = u_xlatb21;
            if (x_527) {
              let x_533 : vec4<f32> = vs_TEXCOORD0;
              let x_535 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_533.x, x_533.y));
              u_xlat2.x = x_535.w;
            } else {
              let x_542 : vec4<f32> = vs_TEXCOORD0;
              let x_544 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_542.x, x_542.y));
              u_xlat2.x = x_544.w;
            }
          } else {
            let x_549 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_549 < 7.0f);
            let x_551 : bool = u_xlatb21;
            if (x_551) {
              let x_557 : vec4<f32> = vs_TEXCOORD0;
              let x_559 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_557.x, x_557.y));
              u_xlat2.x = x_559.w;
            } else {
              let x_566 : vec4<f32> = vs_TEXCOORD0;
              let x_568 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_566.x, x_566.y));
              u_xlat2.x = x_568.w;
            }
          }
        }
        let x_572 : f32 = vs_TEXCOORD1.y;
        let x_574 : f32 = vs_TEXCOORD1.y;
        u_xlat21 = (x_572 + x_574);
        let x_578 : f32 = u_xlat21;
        u_xlatu21 = u32(x_578);
        let x_583 : f32 = vs_TEXCOORD1.y;
        u_xlat16.x = ((x_583 * 2.0f) + 1.0f);
        let x_589 : f32 = u_xlat16.x;
        u_xlatu16 = u32(x_589);
        let x_599 : u32 = u_xlatu21;
        let x_603 : f32 = x_596.x_TextureInfo[bitcast<i32>(x_599)].w;
        u_xlatb23 = (0.0f < x_603);
        let x_605 : bool = u_xlatb23;
        if (x_605) {
          let x_611 : vec2<f32> = vs_TEXCOORD3;
          u_xlat3 = (vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) + vec4<f32>(0.5f, 3.5f, 0.5f, 1.5f));
          let x_617 : vec4<f32> = u_xlat3;
          let x_621 : vec4<f32> = x_596.x_ShaderInfoTex_TexelSize;
          u_xlat3 = (x_617 * vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y));
          let x_630 : vec4<f32> = u_xlat3;
          let x_632 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_630.x, x_630.y), 0.0f);
          u_xlat4 = x_632;
          let x_635 : u32 = u_xlatu21;
          let x_638 : f32 = x_596.x_TextureInfo[bitcast<i32>(x_635)].w;
          u_xlat23 = (-1.5f + x_638);
          let x_640 : f32 = u_xlat23;
          let x_642 : vec4<f32> = u_xlat4;
          u_xlat4 = (vec4<f32>(x_640, x_640, x_640, x_640) * x_642);
          let x_646 : f32 = u_xlat4.w;
          u_xlat5.y = (x_646 * 0.25f);
          let x_650 : vec4<f32> = u_xlat4;
          let x_652 : u32 = u_xlatu21;
          let x_655 : vec4<f32> = x_596.x_TextureInfo[bitcast<i32>(x_652)];
          let x_658 : vec4<f32> = vs_TEXCOORD0;
          let x_660 : vec2<f32> = ((vec2<f32>(x_650.x, x_650.y) * vec2<f32>(x_655.y, x_655.y)) + vec2<f32>(x_658.x, x_658.y));
          let x_661 : vec4<f32> = u_xlat3;
          u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
          let x_664 : bool = u_xlatb7.x;
          if (x_664) {
            let x_668 : f32 = vs_TEXCOORD1.y;
            u_xlatb7.x = (x_668 < 2.0f);
            let x_672 : bool = u_xlatb7.x;
            if (x_672) {
              let x_676 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_676 < 1.0f);
              let x_680 : bool = u_xlatb7.x;
              if (x_680) {
                let x_686 : vec4<f32> = u_xlat3;
                let x_688 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_686.x, x_686.y));
                u_xlat2.y = x_688.w;
              } else {
                let x_695 : vec4<f32> = u_xlat3;
                let x_697 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_695.x, x_695.y));
                u_xlat2.y = x_697.w;
              }
            } else {
              let x_702 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_702 < 3.0f);
              let x_706 : bool = u_xlatb7.x;
              if (x_706) {
                let x_712 : vec4<f32> = u_xlat3;
                let x_714 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_712.x, x_712.y));
                u_xlat2.y = x_714.w;
              } else {
                let x_721 : vec4<f32> = u_xlat3;
                let x_723 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_721.x, x_721.y));
                u_xlat2.y = x_723.w;
              }
            }
          } else {
            let x_728 : f32 = vs_TEXCOORD1.y;
            u_xlatb7.x = (x_728 < 6.0f);
            let x_732 : bool = u_xlatb7.x;
            if (x_732) {
              let x_736 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_736 < 5.0f);
              let x_740 : bool = u_xlatb7.x;
              if (x_740) {
                let x_746 : vec4<f32> = u_xlat3;
                let x_748 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_746.x, x_746.y));
                u_xlat2.y = x_748.w;
              } else {
                let x_755 : vec4<f32> = u_xlat3;
                let x_757 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_755.x, x_755.y));
                u_xlat2.y = x_757.w;
              }
            } else {
              let x_762 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_762 < 7.0f);
              let x_766 : bool = u_xlatb7.x;
              if (x_766) {
                let x_772 : vec4<f32> = u_xlat3;
                let x_774 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_772.x, x_772.y));
                u_xlat2.y = x_774.w;
              } else {
                let x_781 : vec4<f32> = u_xlat3;
                let x_783 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_781.x, x_781.y));
                u_xlat2.y = x_783.w;
              }
            }
          }
          let x_787 : f32 = u_xlat5.y;
          u_xlat5.x = -(x_787);
          u_xlat5.z = 0.0f;
          let x_791 : vec4<f32> = u_xlat5;
          let x_793 : vec4<f32> = vs_TEXCOORD4;
          let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) + vec3<f32>(x_793.x, x_793.x, x_793.x));
          let x_796 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
          let x_799 : f32 = vs_TEXCOORD0.y;
          u_xlat7.x = dpdxCoarse(x_799);
          let x_803 : f32 = vs_TEXCOORD0.y;
          u_xlat23 = dpdyCoarse(x_803);
          let x_806 : f32 = u_xlat7.x;
          let x_808 : f32 = u_xlat23;
          u_xlat7.x = (abs(x_806) + abs(x_808));
          let x_813 : f32 = u_xlat7.x;
          let x_814 : u32 = u_xlatu16;
          let x_817 : f32 = x_596.x_TextureInfo[bitcast<i32>(x_814)].y;
          u_xlat7.x = (x_813 * x_817);
          let x_821 : vec4<f32> = u_xlat2;
          u_xlat6 = (vec3<f32>(x_821.x, x_821.x, x_821.y) + vec3<f32>(-0.5f, -0.5f, -0.5f));
          let x_826 : vec3<f32> = u_xlat6;
          let x_827 : u32 = u_xlatu21;
          let x_830 : vec4<f32> = x_596.x_TextureInfo[bitcast<i32>(x_827)];
          let x_833 : vec4<f32> = u_xlat5;
          let x_835 : vec3<f32> = ((x_826 * vec3<f32>(x_830.w, x_830.w, x_830.w)) + vec3<f32>(x_833.x, x_833.y, x_833.z));
          let x_836 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
          let x_838 : vec4<f32> = u_xlat5;
          let x_840 : vec4<f32> = u_xlat5;
          let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) + vec3<f32>(x_840.x, x_840.y, x_840.z));
          let x_843 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
          let x_845 : u32 = u_xlatu16;
          let x_848 : f32 = x_596.x_TextureInfo[bitcast<i32>(x_845)].z;
          u_xlat21 = (1.0f + x_848);
          let x_851 : f32 = u_xlat7.x;
          let x_852 : f32 = u_xlat21;
          u_xlat7.x = (x_851 / x_852);
          u_xlat4.x = 0.0f;
          u_xlat4.y = 0.0f;
          let x_858 : vec3<f32> = u_xlat7;
          let x_860 : vec4<f32> = u_xlat4;
          u_xlat9 = (vec3<f32>(x_858.x, x_858.x, x_858.x) + vec3<f32>(x_860.x, x_860.y, x_860.z));
          let x_863 : vec4<f32> = u_xlat5;
          let x_865 : vec3<f32> = u_xlat9;
          u_xlat9 = (vec3<f32>(x_863.x, x_863.y, x_863.z) / x_865);
          let x_867 : vec3<f32> = u_xlat9;
          u_xlat9 = (x_867 + vec3<f32>(0.5f, 0.5f, 0.5f));
          let x_870 : vec3<f32> = u_xlat9;
          u_xlat9 = clamp(x_870, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_875 : bool = u_xlatb0.x;
          if (x_875) {
            let x_879 : vec2<f32> = vs_TEXCOORD3;
            u_xlat0 = (x_879 + vec2<f32>(0.5f, 0.5f));
            let x_882 : vec2<f32> = u_xlat0;
            let x_884 : vec4<f32> = x_596.x_ShaderInfoTex_TexelSize;
            u_xlat0 = (x_882 * vec2<f32>(x_884.x, x_884.y));
            let x_890 : vec2<f32> = u_xlat0;
            let x_891 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_890, 0.0f);
            u_xlat4 = x_891;
            let x_893 : f32 = u_xlat4.w;
            let x_895 : f32 = vs_TEXCOORD1.z;
            u_xlat5.w = (x_893 * x_895);
          } else {
            let x_899 : vec4<f32> = vs_COLOR0;
            let x_900 : vec3<f32> = vec3<f32>(x_899.x, x_899.y, x_899.z);
            let x_901 : vec4<f32> = u_xlat4;
            u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
            let x_904 : f32 = vs_COLOR0.w;
            u_xlat5.w = x_904;
          }
          let x_906 : vec4<f32> = u_xlat4;
          let x_908 : vec4<f32> = u_xlat5;
          let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) * vec3<f32>(x_908.w, x_908.w, x_908.w));
          let x_911 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
          let x_916 : vec4<f32> = u_xlat3;
          let x_918 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_916.z, x_916.w), 0.0f);
          u_xlat3 = x_918;
          let x_920 : f32 = u_xlat3.w;
          let x_922 : f32 = vs_TEXCOORD1.z;
          u_xlat4.w = (x_920 * x_922);
          let x_925 : vec4<f32> = u_xlat3;
          let x_927 : vec4<f32> = u_xlat4;
          let x_929 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(x_927.w, x_927.w, x_927.w));
          let x_930 : vec4<f32> = u_xlat4;
          u_xlat4 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
          let x_932 : vec3<f32> = u_xlat9;
          u_xlat0 = (-(vec2<f32>(x_932.x, x_932.y)) + vec2<f32>(1.0f, 1.0f));
          let x_937 : vec2<f32> = u_xlat0;
          let x_939 : vec4<f32> = u_xlat4;
          u_xlat3 = (vec4<f32>(x_937.x, x_937.x, x_937.x, x_937.x) * x_939);
          let x_941 : vec3<f32> = u_xlat9;
          let x_943 : vec4<f32> = u_xlat3;
          u_xlat3 = (vec4<f32>(x_941.y, x_941.y, x_941.y, x_941.y) * x_943);
          let x_945 : vec4<f32> = u_xlat5;
          let x_946 : vec3<f32> = u_xlat9;
          let x_949 : vec4<f32> = u_xlat3;
          u_xlat3 = ((x_945 * vec4<f32>(x_946.x, x_946.x, x_946.x, x_946.x)) + x_949);
          let x_951 : vec2<f32> = vs_TEXCOORD3;
          let x_954 : vec2<f32> = (x_951 + vec2<f32>(0.5f, 2.5f));
          let x_955 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_954.x, x_954.y, x_955.z);
          let x_957 : vec3<f32> = u_xlat9;
          let x_960 : vec4<f32> = x_596.x_ShaderInfoTex_TexelSize;
          let x_962 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) * vec2<f32>(x_960.x, x_960.y));
          let x_963 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_962.x, x_962.y, x_963.z);
          let x_968 : vec3<f32> = u_xlat9;
          let x_970 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_968.x, x_968.y), 0.0f);
          u_xlat4 = x_970;
          let x_972 : f32 = u_xlat4.w;
          let x_974 : f32 = vs_TEXCOORD1.z;
          u_xlat21 = (x_972 * x_974);
          let x_977 : f32 = u_xlat9.z;
          let x_978 : f32 = u_xlat21;
          u_xlat5.w = (x_977 * x_978);
          let x_981 : vec4<f32> = u_xlat4;
          let x_983 : vec4<f32> = u_xlat5;
          let x_985 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983.w, x_983.w, x_983.w));
          let x_986 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
          let x_988 : vec2<f32> = u_xlat0;
          let x_990 : vec4<f32> = u_xlat5;
          u_xlat4 = (vec4<f32>(x_988.x, x_988.x, x_988.x, x_988.x) * x_990);
          let x_992 : vec4<f32> = u_xlat4;
          let x_994 : vec2<f32> = u_xlat0;
          let x_997 : vec4<f32> = u_xlat3;
          u_xlat1 = ((vec4<f32>(x_992.w, x_992.x, x_992.y, x_992.z) * vec4<f32>(x_994.y, x_994.y, x_994.y, x_994.y)) + vec4<f32>(x_997.w, x_997.x, x_997.y, x_997.z));
          let x_1001 : f32 = u_xlat1.x;
          u_xlatb0.x = (0.0f < x_1001);
          let x_1005 : bool = u_xlatb0.x;
          if (x_1005) {
            let x_1010 : f32 = u_xlat1.x;
            x_1006 = x_1010;
          } else {
            x_1006 = 1.0f;
          }
          let x_1012 : f32 = x_1006;
          u_xlat0.x = x_1012;
          let x_1014 : vec4<f32> = u_xlat1;
          let x_1016 : vec2<f32> = u_xlat0;
          let x_1018 : vec3<f32> = (vec3<f32>(x_1014.y, x_1014.z, x_1014.w) / vec3<f32>(x_1016.x, x_1016.x, x_1016.x));
          let x_1019 : vec4<f32> = SV_Target0;
          SV_Target0 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
        } else {
          let x_1023 : f32 = u_xlat2.x;
          let x_1025 : f32 = vs_COLOR0.w;
          u_xlat1.x = (x_1023 * x_1025);
          let x_1028 : vec4<f32> = vs_COLOR0;
          let x_1029 : vec3<f32> = vec3<f32>(x_1028.x, x_1028.y, x_1028.z);
          let x_1030 : vec4<f32> = SV_Target0;
          SV_Target0 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        }
      } else {
        let x_1034 : f32 = vs_TEXCOORD1.y;
        let x_1036 : f32 = vs_TEXCOORD1.y;
        u_xlat0.x = (x_1034 + x_1036);
        let x_1041 : f32 = u_xlat0.x;
        u_xlatu0 = u32(x_1041);
        u_xlat2.x = 0.5f;
        u_xlat16.y = 0.0f;
        let x_1046 : f32 = vs_TEXCOORD1.z;
        u_xlat2.y = (x_1046 + 0.5f);
        let x_1049 : vec4<f32> = u_xlat2;
        let x_1053 : vec4<f32> = x_596.x_GradientSettingsTex_TexelSize;
        let x_1055 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1053.x, x_1053.y));
        let x_1056 : vec3<f32> = u_xlat7;
        u_xlat7 = vec3<f32>(x_1055.x, x_1056.y, x_1055.y);
        let x_1063 : vec3<f32> = u_xlat7;
        let x_1065 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1063.x, x_1063.z), 0.0f);
        u_xlat3 = x_1065;
        let x_1068 : f32 = u_xlat3.x;
        u_xlatb3.x = (0.0f < x_1068);
        let x_1072 : vec4<f32> = u_xlat3;
        u_xlat17 = (vec2<f32>(x_1072.z, x_1072.w) + vec2<f32>(-0.5f, -0.5f));
        let x_1076 : vec2<f32> = u_xlat17;
        let x_1077 : vec2<f32> = u_xlat17;
        u_xlat17 = (x_1076 + x_1077);
        let x_1079 : vec4<f32> = vs_TEXCOORD0;
        let x_1081 : vec2<f32> = (vec2<f32>(x_1079.x, x_1079.y) + vec2<f32>(-0.5f, -0.5f));
        let x_1082 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat4;
        let x_1088 : vec2<f32> = u_xlat17;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(2.0f, 2.0f)) + -(x_1088));
        let x_1091 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = u_xlat4;
        u_xlat18.x = dot(vec2<f32>(x_1094.x, x_1094.y), vec2<f32>(x_1096.x, x_1096.y));
        let x_1101 : f32 = u_xlat18.x;
        u_xlat18.x = inverseSqrt(x_1101);
        let x_1104 : vec2<f32> = u_xlat18;
        let x_1106 : vec4<f32> = u_xlat4;
        u_xlat18 = (vec2<f32>(x_1104.x, x_1104.x) * vec2<f32>(x_1106.x, x_1106.y));
        let x_1109 : vec2<f32> = u_xlat17;
        let x_1111 : vec2<f32> = u_xlat18;
        u_xlat5.x = dot(-(x_1109), x_1111);
        let x_1114 : vec2<f32> = u_xlat17;
        let x_1115 : vec2<f32> = u_xlat17;
        u_xlat17.x = dot(x_1114, x_1115);
        let x_1119 : f32 = u_xlat5.x;
        let x_1122 : f32 = u_xlat5.x;
        let x_1125 : f32 = u_xlat17.x;
        u_xlat17.x = ((-(x_1119) * x_1122) + x_1125);
        let x_1129 : f32 = u_xlat17.x;
        u_xlat17.x = (-(x_1129) + 1.0f);
        let x_1134 : f32 = u_xlat17.x;
        u_xlat17.x = sqrt(x_1134);
        let x_1139 : f32 = u_xlat17.x;
        let x_1142 : f32 = u_xlat5.x;
        u_xlat24 = (-(x_1139) + x_1142);
        let x_1145 : f32 = u_xlat17.x;
        let x_1147 : f32 = u_xlat5.x;
        u_xlat17.x = (x_1145 + x_1147);
        let x_1151 : f32 = u_xlat17.x;
        let x_1152 : f32 = u_xlat24;
        u_xlat5.x = min(x_1151, x_1152);
        let x_1157 : f32 = u_xlat5.x;
        u_xlatb12 = (x_1157 < 0.0f);
        let x_1160 : f32 = u_xlat17.x;
        let x_1161 : f32 = u_xlat24;
        u_xlat17.x = max(x_1160, x_1161);
        let x_1164 : bool = u_xlatb12;
        if (x_1164) {
          let x_1169 : f32 = u_xlat17.x;
          x_1165 = x_1169;
        } else {
          let x_1172 : f32 = u_xlat5.x;
          x_1165 = x_1172;
        }
        let x_1173 : f32 = x_1165;
        u_xlat17.x = x_1173;
        let x_1175 : vec2<f32> = u_xlat17;
        let x_1177 : vec2<f32> = u_xlat18;
        u_xlat17 = (vec2<f32>(x_1175.x, x_1175.x) * x_1177);
        let x_1182 : f32 = u_xlat17.x;
        u_xlatb18 = (0.00009999999747378752f >= abs(x_1182));
        let x_1187 : f32 = u_xlat17.y;
        u_xlatb25 = (0.00009999999747378752f < abs(x_1187));
        let x_1190 : vec4<f32> = u_xlat4;
        let x_1192 : vec2<f32> = u_xlat17;
        u_xlat17 = (vec2<f32>(x_1190.x, x_1190.y) / x_1192);
        let x_1194 : bool = u_xlatb25;
        if (x_1194) {
          let x_1199 : f32 = u_xlat17.y;
          x_1195 = x_1199;
        } else {
          x_1195 = 0.0f;
        }
        let x_1201 : f32 = x_1195;
        u_xlat24 = x_1201;
        let x_1203 : bool = u_xlatb18;
        if (x_1203) {
          let x_1207 : f32 = u_xlat24;
          x_1204 = x_1207;
        } else {
          let x_1210 : f32 = u_xlat17.x;
          x_1204 = x_1210;
        }
        let x_1211 : f32 = x_1204;
        u_xlat11.x = x_1211;
        u_xlat11.y = 0.0f;
        let x_1215 : bool = u_xlatb3.x;
        if (x_1215) {
          let x_1220 : vec2<f32> = u_xlat11;
          x_1217 = x_1220;
        } else {
          let x_1222 : vec4<f32> = vs_TEXCOORD0;
          x_1217 = vec2<f32>(x_1222.x, x_1222.y);
        }
        let x_1224 : vec2<f32> = x_1217;
        let x_1225 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1225.x, x_1224.x, x_1224.y, x_1225.w);
        let x_1228 : f32 = u_xlat3.y;
        u_xlat3.x = (x_1228 * 255.0f);
        let x_1233 : f32 = u_xlat3.x;
        u_xlat3.x = round(x_1233);
        let x_1239 : f32 = u_xlat3.x;
        u_xlati3 = i32(x_1239);
        let x_1243 : f32 = u_xlat4.y;
        let x_1245 : f32 = u_xlat4.y;
        u_xlatb10 = (x_1243 >= -(x_1245));
        let x_1249 : f32 = u_xlat4.y;
        u_xlat17.x = fract(abs(x_1249));
        let x_1254 : bool = u_xlatb10;
        if (x_1254) {
          let x_1259 : f32 = u_xlat17.x;
          x_1255 = x_1259;
        } else {
          let x_1262 : f32 = u_xlat17.x;
          x_1255 = -(x_1262);
        }
        let x_1264 : f32 = x_1255;
        u_xlat10 = x_1264;
        let x_1265 : i32 = u_xlati3;
        if ((x_1265 != 0i)) {
          let x_1271 : f32 = u_xlat4.y;
          x_1267 = x_1271;
        } else {
          let x_1273 : f32 = u_xlat10;
          x_1267 = x_1273;
        }
        let x_1274 : f32 = x_1267;
        u_xlat10 = x_1274;
        let x_1275 : i32 = u_xlati3;
        let x_1279 : vec4<bool> = (vec4<i32>(x_1275, x_1275, x_1275, x_1275) == vec4<i32>(1i, 0i, 2i, 0i));
        let x_1280 : vec2<bool> = vec2<bool>(x_1279.x, x_1279.z);
        let x_1281 : vec3<bool> = u_xlatb3;
        u_xlatb3 = vec3<bool>(x_1280.x, x_1281.y, x_1280.y);
        let x_1283 : f32 = u_xlat10;
        u_xlat24 = x_1283;
        let x_1284 : f32 = u_xlat24;
        u_xlat24 = clamp(x_1284, 0.0f, 1.0f);
        let x_1287 : bool = u_xlatb3.x;
        let x_1288 : f32 = u_xlat24;
        let x_1289 : f32 = u_xlat10;
        u_xlat3.x = select(x_1289, x_1288, x_1287);
        let x_1293 : f32 = u_xlat3.x;
        u_xlat10 = (x_1293 * 0.5f);
        let x_1296 : f32 = u_xlat10;
        let x_1297 : f32 = u_xlat10;
        u_xlatb24 = (x_1296 >= -(x_1297));
        let x_1300 : f32 = u_xlat10;
        u_xlat10 = fract(abs(x_1300));
        let x_1303 : bool = u_xlatb24;
        if (x_1303) {
          let x_1307 : f32 = u_xlat10;
          x_1304 = x_1307;
        } else {
          let x_1309 : f32 = u_xlat10;
          x_1304 = -(x_1309);
        }
        let x_1311 : f32 = x_1304;
        u_xlat10 = x_1311;
        let x_1312 : f32 = u_xlat10;
        let x_1313 : f32 = u_xlat10;
        u_xlat24 = (x_1312 + x_1313);
        let x_1315 : f32 = u_xlat10;
        u_xlatb10 = (0.5f < x_1315);
        let x_1318 : f32 = u_xlat24;
        let x_1319 : f32 = u_xlat24;
        u_xlatb11 = (x_1318 >= -(x_1319));
        let x_1323 : f32 = u_xlat24;
        u_xlat25 = fract(abs(x_1323));
        let x_1326 : bool = u_xlatb11;
        if (x_1326) {
          let x_1330 : f32 = u_xlat25;
          x_1327 = x_1330;
        } else {
          let x_1332 : f32 = u_xlat25;
          x_1327 = -(x_1332);
        }
        let x_1334 : f32 = x_1327;
        u_xlat11.x = x_1334;
        let x_1337 : f32 = u_xlat11.x;
        u_xlat11.x = (-(x_1337) + 1.0f);
        let x_1341 : bool = u_xlatb10;
        if (x_1341) {
          let x_1346 : f32 = u_xlat11.x;
          x_1342 = x_1346;
        } else {
          let x_1348 : f32 = u_xlat24;
          x_1342 = x_1348;
        }
        let x_1349 : f32 = x_1342;
        u_xlat10 = x_1349;
        let x_1351 : bool = u_xlatb3.z;
        if (x_1351) {
          let x_1355 : f32 = u_xlat10;
          x_1352 = x_1355;
        } else {
          let x_1358 : f32 = u_xlat3.x;
          x_1352 = x_1358;
        }
        let x_1359 : f32 = x_1352;
        u_xlat4.x = x_1359;
        let x_1362 : f32 = x_596.x_GradientSettingsTex_TexelSize.x;
        u_xlat16.x = x_1362;
        let x_1364 : vec4<f32> = u_xlat2;
        let x_1367 : vec4<f32> = x_596.x_GradientSettingsTex_TexelSize;
        let x_1370 : vec2<f32> = u_xlat16;
        let x_1371 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + x_1370);
        let x_1372 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1371.x, x_1371.y, x_1372.z, x_1372.w);
        let x_1377 : vec4<f32> = u_xlat2;
        let x_1379 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1377.x, x_1377.y), 0.0f);
        u_xlat3 = x_1379;
        let x_1380 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_1380.y, x_1380.w, x_1380.x, x_1380.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1385 : vec4<f32> = u_xlat3;
        let x_1387 : vec4<f32> = u_xlat3;
        let x_1389 : vec2<f32> = (vec2<f32>(x_1385.x, x_1385.y) + vec2<f32>(x_1387.z, x_1387.w));
        let x_1390 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1392 : vec4<f32> = u_xlat2;
        let x_1394 : vec2<f32> = (vec2<f32>(x_1392.x, x_1392.y) + vec2<f32>(0.5f, 0.5f));
        let x_1395 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1394.x, x_1394.y, x_1395.z, x_1395.w);
        let x_1397 : vec2<f32> = u_xlat16;
        let x_1399 : vec3<f32> = u_xlat7;
        let x_1401 : vec2<f32> = ((x_1397 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_1399.x, x_1399.z));
        let x_1402 : vec3<f32> = u_xlat7;
        u_xlat7 = vec3<f32>(x_1401.x, x_1402.y, x_1401.y);
        let x_1407 : vec3<f32> = u_xlat7;
        let x_1409 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1407.x, x_1407.z), 0.0f);
        u_xlat2 = x_1409;
        let x_1410 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_1410.y, x_1410.w, x_1410.x, x_1410.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1413 : vec4<f32> = u_xlat2;
        let x_1415 : vec4<f32> = u_xlat2;
        let x_1417 : vec2<f32> = (vec2<f32>(x_1413.x, x_1413.y) + vec2<f32>(x_1415.z, x_1415.w));
        let x_1418 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1418.x, x_1418.y, x_1417.x, x_1417.y);
        let x_1420 : vec4<f32> = u_xlat3;
        let x_1421 : u32 = u_xlatu0;
        let x_1424 : vec4<f32> = x_596.x_TextureInfo[bitcast<i32>(x_1421)];
        u_xlat2 = (x_1420 * vec4<f32>(x_1424.y, x_1424.z, x_1424.y, x_1424.z));
        let x_1427 : vec4<f32> = u_xlat4;
        let x_1429 : vec4<f32> = u_xlat2;
        let x_1432 : vec4<f32> = u_xlat2;
        u_xlat0 = ((vec2<f32>(x_1427.x, x_1427.z) * vec2<f32>(x_1429.z, x_1429.w)) + vec2<f32>(x_1432.x, x_1432.y));
        let x_1436 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_1436 < 4.0f);
        let x_1438 : bool = u_xlatb21;
        if (x_1438) {
          let x_1442 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_1442 < 2.0f);
          let x_1444 : bool = u_xlatb21;
          if (x_1444) {
            let x_1448 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1448 < 1.0f);
            let x_1450 : bool = u_xlatb21;
            if (x_1450) {
              let x_1456 : vec2<f32> = u_xlat0;
              let x_1457 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, x_1456);
              u_xlat2 = x_1457;
            } else {
              let x_1462 : vec2<f32> = u_xlat0;
              let x_1463 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, x_1462);
              u_xlat2 = x_1463;
            }
          } else {
            let x_1466 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1466 < 3.0f);
            let x_1468 : bool = u_xlatb21;
            if (x_1468) {
              let x_1474 : vec2<f32> = u_xlat0;
              let x_1475 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, x_1474);
              u_xlat2 = x_1475;
            } else {
              let x_1480 : vec2<f32> = u_xlat0;
              let x_1481 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, x_1480);
              u_xlat2 = x_1481;
            }
          }
        } else {
          let x_1484 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_1484 < 6.0f);
          let x_1486 : bool = u_xlatb21;
          if (x_1486) {
            let x_1490 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1490 < 5.0f);
            let x_1492 : bool = u_xlatb21;
            if (x_1492) {
              let x_1498 : vec2<f32> = u_xlat0;
              let x_1499 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, x_1498);
              u_xlat2 = x_1499;
            } else {
              let x_1504 : vec2<f32> = u_xlat0;
              let x_1505 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, x_1504);
              u_xlat2 = x_1505;
            }
          } else {
            let x_1508 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1508 < 7.0f);
            let x_1510 : bool = u_xlatb21;
            if (x_1510) {
              let x_1516 : vec2<f32> = u_xlat0;
              let x_1517 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, x_1516);
              u_xlat2 = x_1517;
            } else {
              let x_1522 : vec2<f32> = u_xlat0;
              let x_1523 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, x_1522);
              u_xlat2 = x_1523;
            }
          }
        }
        let x_1524 : vec4<f32> = u_xlat2;
        let x_1526 : vec4<f32> = vs_COLOR0;
        u_xlat1 = (vec4<f32>(x_1524.w, x_1524.x, x_1524.y, x_1524.z) * vec4<f32>(x_1526.w, x_1526.x, x_1526.y, x_1526.z));
        let x_1529 : vec4<f32> = u_xlat1;
        let x_1530 : vec3<f32> = vec3<f32>(x_1529.y, x_1529.z, x_1529.w);
        let x_1531 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
      }
      u_xlat14 = 1.0f;
    }
  }
  let x_1533 : vec4<f32> = vs_TEXCOORD0;
  let x_1538 : vec4<bool> = (abs(vec4<f32>(x_1533.z, x_1533.w, x_1533.z, x_1533.z)) < vec4<f32>(1.00010001659393310547f, 1.00010001659393310547f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_1538.x, x_1538.y);
  let x_1541 : bool = u_xlatb0.x;
  let x_1543 : bool = u_xlatb0.y;
  u_xlatb0.x = (x_1541 & x_1543);
  let x_1547 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_1547);
  let x_1551 : f32 = u_xlat0.x;
  let x_1552 : f32 = u_xlat14;
  u_xlat7.x = (x_1551 * x_1552);
  let x_1555 : f32 = u_xlat14;
  let x_1557 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1555 * x_1557) + -0.00300000002607703209f);
  let x_1563 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1563 < 0.0f);
  let x_1567 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_1567) * -1i) != 0i)) {
    discard;
  }
  let x_1576 : f32 = u_xlat7.x;
  let x_1578 : f32 = u_xlat1.x;
  SV_Target0.w = (x_1576 * x_1578);
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


