type Arr = array<vec4<f32>, 16u>;

struct PGlobals {
  x_GradientSettingsTex_TexelSize : vec4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

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

@group(1) @binding(0) var<uniform> x_549 : PGlobals;

var<private> vs_TEXCOORD3 : vec2<f32>;

@group(0) @binding(8) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShaderInfoTex : sampler;

@group(0) @binding(9) var x_GradientSettingsTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GradientSettingsTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : vec2<bool>;
  var u_xlat7 : f32;
  var x_32 : f32;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb7 : vec3<bool>;
  var u_xlatu7 : u32;
  var u_xlatb2 : bool;
  var u_xlatb16 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlatu16 : u32;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat0 : vec4<f32>;
  var x_950 : f32;
  var u_xlatb3 : vec3<bool>;
  var u_xlat17 : vec2<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat24 : f32;
  var u_xlatb12 : bool;
  var x_1099 : f32;
  var u_xlatb18 : bool;
  var u_xlatb25 : bool;
  var x_1129 : f32;
  var u_xlat11 : vec2<f32>;
  var x_1138 : f32;
  var x_1150 : vec2<f32>;
  var u_xlati3 : i32;
  var u_xlatb10 : bool;
  var u_xlat10 : f32;
  var x_1188 : f32;
  var x_1200 : f32;
  var u_xlatb24 : bool;
  var x_1237 : f32;
  var u_xlatb11 : bool;
  var u_xlat25 : f32;
  var x_1260 : f32;
  var x_1275 : f32;
  var x_1285 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = vs_TEXCOORD1.w;
  u_xlatb0.x = (x_18 >= 2.0f);
  let x_27 : f32 = vs_TEXCOORD1.w;
  u_xlat7 = (x_27 + -2.0f);
  let x_31 : bool = u_xlatb0.x;
  if (x_31) {
    let x_35 : f32 = u_xlat7;
    x_32 = x_35;
  } else {
    let x_38 : f32 = vs_TEXCOORD1.w;
    x_32 = x_38;
  }
  let x_39 : f32 = x_32;
  u_xlat7 = x_39;
  let x_42 : f32 = vs_TEXCOORD1.x;
  u_xlatb14.x = (x_42 == 1.0f);
  let x_47 : bool = u_xlatb14.x;
  if (x_47) {
    let x_52 : f32 = u_xlat7;
    u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_52, x_52, x_52, x_52))));
    let x_59 : bool = u_xlatb14.x;
    if (x_59) {
      let x_65 : vec4<f32> = vs_TEXCOORD4;
      let x_67 : vec4<bool> = (vec4<f32>(-9999.0f, -9999.0f, -9999.0f, -9999.0f) < vec4<f32>(x_65.x, x_65.z, x_65.x, x_65.z));
      u_xlatb14 = vec2<bool>(x_67.x, x_67.y);
      let x_70 : bool = u_xlatb14.x;
      if (x_70) {
        let x_75 : vec4<f32> = vs_TEXCOORD4;
        let x_77 : vec4<f32> = vs_TEXCOORD4;
        u_xlat14 = dot(vec2<f32>(x_75.x, x_75.y), vec2<f32>(x_77.x, x_77.y));
        let x_80 : f32 = u_xlat14;
        u_xlat14 = sqrt(x_80);
        let x_82 : f32 = u_xlat14;
        u_xlat14 = (x_82 + -1.0f);
        let x_87 : f32 = u_xlat14;
        u_xlat1.x = dpdxCoarse(x_87);
        let x_90 : f32 = u_xlat14;
        u_xlat1.y = dpdyCoarse(x_90);
        let x_94 : vec4<f32> = u_xlat1;
        let x_96 : vec4<f32> = u_xlat1;
        u_xlat1.x = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
        let x_101 : f32 = u_xlat1.x;
        u_xlat1.x = sqrt(x_101);
        let x_104 : f32 = u_xlat14;
        let x_106 : f32 = u_xlat1.x;
        u_xlat14 = (x_104 / x_106);
        let x_108 : f32 = u_xlat14;
        u_xlat14 = (-(x_108) + 0.5f);
        let x_112 : f32 = u_xlat14;
        u_xlat14 = clamp(x_112, 0.0f, 1.0f);
      } else {
        u_xlat14 = 1.0f;
      }
      let x_116 : bool = u_xlatb14.y;
      if (x_116) {
        let x_120 : vec4<f32> = vs_TEXCOORD4;
        let x_122 : vec4<f32> = vs_TEXCOORD4;
        u_xlat21 = dot(vec2<f32>(x_120.z, x_120.w), vec2<f32>(x_122.z, x_122.w));
        let x_125 : f32 = u_xlat21;
        u_xlat21 = sqrt(x_125);
        let x_127 : f32 = u_xlat21;
        u_xlat21 = (x_127 + -1.0f);
        let x_129 : f32 = u_xlat21;
        u_xlat1.x = dpdxCoarse(x_129);
        let x_132 : f32 = u_xlat21;
        u_xlat1.y = dpdyCoarse(x_132);
        let x_135 : vec4<f32> = u_xlat1;
        let x_137 : vec4<f32> = u_xlat1;
        u_xlat1.x = dot(vec2<f32>(x_135.x, x_135.y), vec2<f32>(x_137.x, x_137.y));
        let x_142 : f32 = u_xlat1.x;
        u_xlat1.x = sqrt(x_142);
        let x_145 : f32 = u_xlat21;
        let x_147 : f32 = u_xlat1.x;
        u_xlat21 = (x_145 / x_147);
        let x_149 : f32 = u_xlat21;
        u_xlat21 = (-(x_149) + 0.5f);
        let x_152 : f32 = u_xlat21;
        u_xlat21 = clamp(x_152, 0.0f, 1.0f);
        let x_154 : f32 = u_xlat21;
        u_xlat21 = (-(x_154) + 1.0f);
        let x_157 : f32 = u_xlat21;
        let x_158 : f32 = u_xlat14;
        u_xlat14 = (x_157 * x_158);
      }
    } else {
      u_xlat14 = 1.0f;
    }
    let x_165 : vec4<f32> = vs_COLOR0;
    let x_166 : vec3<f32> = vec3<f32>(x_165.x, x_165.y, x_165.z);
    let x_167 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_170 : f32 = vs_COLOR0.w;
    u_xlat1.x = x_170;
  } else {
    let x_175 : f32 = vs_TEXCOORD1.x;
    u_xlatb21 = (x_175 == 3.0f);
    let x_178 : bool = u_xlatb21;
    if (x_178) {
      let x_182 : f32 = vs_TEXCOORD1.y;
      u_xlatb21 = (x_182 < 4.0f);
      let x_185 : bool = u_xlatb21;
      if (x_185) {
        let x_189 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_189 < 2.0f);
        let x_191 : bool = u_xlatb21;
        if (x_191) {
          let x_195 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_195 < 1.0f);
          let x_197 : bool = u_xlatb21;
          if (x_197) {
            let x_212 : vec4<f32> = vs_TEXCOORD0;
            let x_214 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_212.x, x_212.y));
            u_xlat2 = x_214;
          } else {
            let x_221 : vec4<f32> = vs_TEXCOORD0;
            let x_223 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_221.x, x_221.y));
            u_xlat2 = x_223;
          }
        } else {
          let x_226 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_226 < 3.0f);
          let x_228 : bool = u_xlatb21;
          if (x_228) {
            let x_236 : vec4<f32> = vs_TEXCOORD0;
            let x_238 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_236.x, x_236.y));
            u_xlat2 = x_238;
          } else {
            let x_245 : vec4<f32> = vs_TEXCOORD0;
            let x_247 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_245.x, x_245.y));
            u_xlat2 = x_247;
          }
        }
      } else {
        let x_250 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_250 < 6.0f);
        let x_253 : bool = u_xlatb21;
        if (x_253) {
          let x_257 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_257 < 5.0f);
          let x_260 : bool = u_xlatb21;
          if (x_260) {
            let x_268 : vec4<f32> = vs_TEXCOORD0;
            let x_270 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_268.x, x_268.y));
            u_xlat2 = x_270;
          } else {
            let x_277 : vec4<f32> = vs_TEXCOORD0;
            let x_279 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_277.x, x_277.y));
            u_xlat2 = x_279;
          }
        } else {
          let x_282 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_282 < 7.0f);
          let x_285 : bool = u_xlatb21;
          if (x_285) {
            let x_293 : vec4<f32> = vs_TEXCOORD0;
            let x_295 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_293.x, x_293.y));
            u_xlat2 = x_295;
          } else {
            let x_302 : vec4<f32> = vs_TEXCOORD0;
            let x_304 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_302.x, x_302.y));
            u_xlat2 = x_304;
          }
        }
      }
      let x_305 : vec4<f32> = u_xlat2;
      let x_307 : vec4<f32> = vs_COLOR0;
      u_xlat1 = (vec4<f32>(x_305.w, x_305.x, x_305.y, x_305.z) * vec4<f32>(x_307.w, x_307.x, x_307.y, x_307.z));
      let x_313 : f32 = u_xlat7;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_313, x_313, x_313, x_313))));
      let x_319 : bool = u_xlatb7.x;
      if (x_319) {
        let x_323 : vec4<f32> = vs_TEXCOORD4;
        let x_325 : vec4<bool> = (vec4<f32>(-9999.0f, 0.0f, -9999.0f, -9999.0f) < vec4<f32>(x_323.x, x_323.x, x_323.z, x_323.z));
        let x_326 : vec2<bool> = vec2<bool>(x_325.x, x_325.z);
        let x_327 : vec3<bool> = u_xlatb7;
        u_xlatb7 = vec3<bool>(x_326.x, x_327.y, x_326.y);
        let x_330 : bool = u_xlatb7.x;
        if (x_330) {
          let x_333 : vec4<f32> = vs_TEXCOORD4;
          let x_335 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7 = dot(vec2<f32>(x_333.x, x_333.y), vec2<f32>(x_335.x, x_335.y));
          let x_338 : f32 = u_xlat7;
          u_xlat7 = sqrt(x_338);
          let x_340 : f32 = u_xlat7;
          u_xlat7 = (x_340 + -1.0f);
          let x_342 : f32 = u_xlat7;
          u_xlat2.x = dpdxCoarse(x_342);
          let x_345 : f32 = u_xlat7;
          u_xlat2.y = dpdyCoarse(x_345);
          let x_348 : vec4<f32> = u_xlat2;
          let x_350 : vec4<f32> = u_xlat2;
          u_xlat2.x = dot(vec2<f32>(x_348.x, x_348.y), vec2<f32>(x_350.x, x_350.y));
          let x_355 : f32 = u_xlat2.x;
          u_xlat2.x = sqrt(x_355);
          let x_358 : f32 = u_xlat7;
          let x_360 : f32 = u_xlat2.x;
          u_xlat7 = (x_358 / x_360);
          let x_362 : f32 = u_xlat7;
          u_xlat14 = (-(x_362) + 0.5f);
          let x_365 : f32 = u_xlat14;
          u_xlat14 = clamp(x_365, 0.0f, 1.0f);
        } else {
          u_xlat14 = 1.0f;
        }
        let x_370 : bool = u_xlatb7.z;
        if (x_370) {
          let x_373 : vec4<f32> = vs_TEXCOORD4;
          let x_375 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7 = dot(vec2<f32>(x_373.z, x_373.w), vec2<f32>(x_375.z, x_375.w));
          let x_378 : f32 = u_xlat7;
          u_xlat7 = sqrt(x_378);
          let x_380 : f32 = u_xlat7;
          u_xlat7 = (x_380 + -1.0f);
          let x_382 : f32 = u_xlat7;
          u_xlat2.x = dpdxCoarse(x_382);
          let x_385 : f32 = u_xlat7;
          u_xlat2.y = dpdyCoarse(x_385);
          let x_388 : vec4<f32> = u_xlat2;
          let x_390 : vec4<f32> = u_xlat2;
          u_xlat21 = dot(vec2<f32>(x_388.x, x_388.y), vec2<f32>(x_390.x, x_390.y));
          let x_393 : f32 = u_xlat21;
          u_xlat21 = sqrt(x_393);
          let x_395 : f32 = u_xlat7;
          let x_396 : f32 = u_xlat21;
          u_xlat7 = (x_395 / x_396);
          let x_398 : f32 = u_xlat7;
          u_xlat7 = (-(x_398) + 0.5f);
          let x_401 : f32 = u_xlat7;
          u_xlat7 = clamp(x_401, 0.0f, 1.0f);
          let x_403 : f32 = u_xlat7;
          u_xlat7 = (-(x_403) + 1.0f);
          let x_406 : f32 = u_xlat7;
          let x_407 : f32 = u_xlat14;
          u_xlat14 = (x_406 * x_407);
        }
      } else {
        u_xlat14 = 1.0f;
      }
      let x_410 : vec4<f32> = u_xlat1;
      let x_411 : vec3<f32> = vec3<f32>(x_410.y, x_410.z, x_410.w);
      let x_412 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    } else {
      let x_416 : f32 = vs_TEXCOORD1.y;
      let x_418 : f32 = vs_TEXCOORD1.y;
      u_xlat7 = (x_416 + x_418);
      let x_422 : f32 = u_xlat7;
      u_xlatu7 = u32(x_422);
      let x_425 : f32 = vs_TEXCOORD1.x;
      u_xlatb21 = (x_425 == 2.0f);
      let x_427 : bool = u_xlatb21;
      if (x_427) {
        let x_431 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_431 < 4.0f);
        let x_433 : bool = u_xlatb21;
        if (x_433) {
          let x_438 : f32 = vs_TEXCOORD1.y;
          u_xlatb2 = (x_438 < 2.0f);
          let x_440 : bool = u_xlatb2;
          if (x_440) {
            let x_444 : f32 = vs_TEXCOORD1.y;
            u_xlatb2 = (x_444 < 1.0f);
            let x_446 : bool = u_xlatb2;
            if (x_446) {
              let x_452 : vec4<f32> = vs_TEXCOORD0;
              let x_454 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_452.x, x_452.y));
              u_xlat2.x = x_454.w;
            } else {
              let x_461 : vec4<f32> = vs_TEXCOORD0;
              let x_463 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_461.x, x_461.y));
              u_xlat2.x = x_463.w;
            }
          } else {
            let x_469 : f32 = vs_TEXCOORD1.y;
            u_xlatb16 = (x_469 < 3.0f);
            let x_471 : bool = u_xlatb16;
            if (x_471) {
              let x_477 : vec4<f32> = vs_TEXCOORD0;
              let x_479 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_477.x, x_477.y));
              u_xlat2.x = x_479.w;
            } else {
              let x_486 : vec4<f32> = vs_TEXCOORD0;
              let x_488 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_486.x, x_486.y));
              u_xlat2.x = x_488.w;
            }
          }
        } else {
          let x_493 : f32 = vs_TEXCOORD1.y;
          u_xlatb16 = (x_493 < 6.0f);
          let x_495 : bool = u_xlatb16;
          if (x_495) {
            let x_499 : f32 = vs_TEXCOORD1.y;
            u_xlatb16 = (x_499 < 5.0f);
            let x_501 : bool = u_xlatb16;
            if (x_501) {
              let x_507 : vec4<f32> = vs_TEXCOORD0;
              let x_509 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_507.x, x_507.y));
              u_xlat2.x = x_509.w;
            } else {
              let x_516 : vec4<f32> = vs_TEXCOORD0;
              let x_518 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_516.x, x_516.y));
              u_xlat2.x = x_518.w;
            }
          } else {
            let x_523 : f32 = vs_TEXCOORD1.y;
            u_xlatb16 = (x_523 < 7.0f);
            let x_525 : bool = u_xlatb16;
            if (x_525) {
              let x_531 : vec4<f32> = vs_TEXCOORD0;
              let x_533 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_531.x, x_531.y));
              u_xlat2.x = x_533.w;
            } else {
              let x_540 : vec4<f32> = vs_TEXCOORD0;
              let x_542 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_540.x, x_540.y));
              u_xlat2.x = x_542.w;
            }
          }
        }
        let x_552 : u32 = u_xlatu7;
        let x_556 : f32 = x_549.x_TextureInfo[bitcast<i32>(x_552)].w;
        u_xlatb16 = (0.0f < x_556);
        let x_558 : bool = u_xlatb16;
        if (x_558) {
          let x_564 : vec2<f32> = vs_TEXCOORD3;
          u_xlat3 = (vec4<f32>(x_564.x, x_564.y, x_564.x, x_564.y) + vec4<f32>(0.5f, 3.5f, 0.5f, 1.5f));
          let x_570 : vec4<f32> = u_xlat3;
          let x_574 : vec4<f32> = x_549.x_ShaderInfoTex_TexelSize;
          u_xlat3 = (x_570 * vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y));
          let x_583 : vec4<f32> = u_xlat3;
          let x_585 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_583.x, x_583.y), 0.0f);
          u_xlat4 = x_585;
          let x_586 : vec4<f32> = u_xlat4;
          let x_587 : u32 = u_xlatu7;
          let x_590 : vec4<f32> = x_549.x_TextureInfo[bitcast<i32>(x_587)];
          u_xlat4 = (x_586 * vec4<f32>(x_590.w, x_590.w, x_590.w, x_590.w));
          let x_595 : f32 = u_xlat4.w;
          u_xlat5.y = (x_595 * 0.25f);
          let x_602 : f32 = vs_TEXCOORD1.y;
          u_xlat16.x = ((x_602 * 2.0f) + 1.0f);
          let x_608 : f32 = u_xlat16.x;
          u_xlatu16 = u32(x_608);
          let x_610 : vec4<f32> = u_xlat4;
          let x_612 : u32 = u_xlatu7;
          let x_615 : vec4<f32> = x_549.x_TextureInfo[bitcast<i32>(x_612)];
          let x_618 : vec4<f32> = vs_TEXCOORD0;
          let x_620 : vec2<f32> = ((vec2<f32>(x_610.x, x_610.y) * vec2<f32>(x_615.y, x_615.y)) + vec2<f32>(x_618.x, x_618.y));
          let x_621 : vec4<f32> = u_xlat3;
          u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
          let x_623 : bool = u_xlatb21;
          if (x_623) {
            let x_627 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_627 < 2.0f);
            let x_629 : bool = u_xlatb21;
            if (x_629) {
              let x_633 : f32 = vs_TEXCOORD1.y;
              u_xlatb21 = (x_633 < 1.0f);
              let x_635 : bool = u_xlatb21;
              if (x_635) {
                let x_641 : vec4<f32> = u_xlat3;
                let x_643 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_641.x, x_641.y));
                u_xlat2.y = x_643.w;
              } else {
                let x_650 : vec4<f32> = u_xlat3;
                let x_652 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_650.x, x_650.y));
                u_xlat2.y = x_652.w;
              }
            } else {
              let x_657 : f32 = vs_TEXCOORD1.y;
              u_xlatb21 = (x_657 < 3.0f);
              let x_659 : bool = u_xlatb21;
              if (x_659) {
                let x_665 : vec4<f32> = u_xlat3;
                let x_667 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_665.x, x_665.y));
                u_xlat2.y = x_667.w;
              } else {
                let x_674 : vec4<f32> = u_xlat3;
                let x_676 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_674.x, x_674.y));
                u_xlat2.y = x_676.w;
              }
            }
          } else {
            let x_681 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_681 < 6.0f);
            let x_683 : bool = u_xlatb21;
            if (x_683) {
              let x_687 : f32 = vs_TEXCOORD1.y;
              u_xlatb21 = (x_687 < 5.0f);
              let x_689 : bool = u_xlatb21;
              if (x_689) {
                let x_695 : vec4<f32> = u_xlat3;
                let x_697 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_695.x, x_695.y));
                u_xlat2.y = x_697.w;
              } else {
                let x_704 : vec4<f32> = u_xlat3;
                let x_706 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_704.x, x_704.y));
                u_xlat2.y = x_706.w;
              }
            } else {
              let x_711 : f32 = vs_TEXCOORD1.y;
              u_xlatb21 = (x_711 < 7.0f);
              let x_713 : bool = u_xlatb21;
              if (x_713) {
                let x_719 : vec4<f32> = u_xlat3;
                let x_721 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_719.x, x_719.y));
                u_xlat2.y = x_721.w;
              } else {
                let x_728 : vec4<f32> = u_xlat3;
                let x_730 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_728.x, x_728.y));
                u_xlat2.y = x_730.w;
              }
            }
          }
          let x_734 : f32 = u_xlat5.y;
          u_xlat5.x = -(x_734);
          u_xlat5.z = 0.0f;
          let x_738 : vec4<f32> = u_xlat5;
          let x_740 : vec4<f32> = vs_TEXCOORD4;
          let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + vec3<f32>(x_740.x, x_740.x, x_740.x));
          let x_743 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
          let x_746 : f32 = vs_TEXCOORD0.y;
          u_xlat21 = dpdxCoarse(x_746);
          let x_750 : f32 = vs_TEXCOORD0.y;
          u_xlat23 = dpdyCoarse(x_750);
          let x_752 : f32 = u_xlat21;
          let x_754 : f32 = u_xlat23;
          u_xlat21 = (abs(x_752) + abs(x_754));
          let x_759 : vec4<f32> = u_xlat2;
          u_xlat6 = (vec3<f32>(x_759.x, x_759.x, x_759.y) + vec3<f32>(-0.5f, -0.5f, -0.5f));
          let x_764 : vec3<f32> = u_xlat6;
          let x_765 : u32 = u_xlatu7;
          let x_768 : vec4<f32> = x_549.x_TextureInfo[bitcast<i32>(x_765)];
          let x_771 : vec4<f32> = u_xlat5;
          let x_773 : vec3<f32> = ((x_764 * vec3<f32>(x_768.w, x_768.w, x_768.w)) + vec3<f32>(x_771.x, x_771.y, x_771.z));
          let x_774 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
          let x_776 : vec4<f32> = u_xlat5;
          let x_778 : vec4<f32> = u_xlat5;
          let x_780 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) + vec3<f32>(x_778.x, x_778.y, x_778.z));
          let x_781 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
          u_xlat4.x = 0.0f;
          u_xlat4.y = 0.0f;
          let x_786 : u32 = u_xlatu16;
          let x_789 : vec4<f32> = x_549.x_TextureInfo[bitcast<i32>(x_786)];
          let x_791 : f32 = u_xlat21;
          let x_794 : vec4<f32> = u_xlat4;
          u_xlat9 = ((vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_791, x_791, x_791)) + vec3<f32>(x_794.x, x_794.y, x_794.z));
          let x_797 : vec4<f32> = u_xlat5;
          let x_799 : vec3<f32> = u_xlat9;
          u_xlat9 = (vec3<f32>(x_797.x, x_797.y, x_797.z) / x_799);
          let x_801 : vec3<f32> = u_xlat9;
          u_xlat9 = (x_801 + vec3<f32>(0.5f, 0.5f, 0.5f));
          let x_804 : vec3<f32> = u_xlat9;
          u_xlat9 = clamp(x_804, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_809 : bool = u_xlatb0.x;
          if (x_809) {
            let x_813 : vec2<f32> = vs_TEXCOORD3;
            let x_815 : vec2<f32> = (x_813 + vec2<f32>(0.5f, 0.5f));
            let x_816 : vec4<f32> = u_xlat0;
            u_xlat0 = vec4<f32>(x_815.x, x_816.y, x_816.z, x_815.y);
            let x_818 : vec4<f32> = u_xlat0;
            let x_821 : vec4<f32> = x_549.x_ShaderInfoTex_TexelSize;
            let x_823 : vec2<f32> = (vec2<f32>(x_818.x, x_818.w) * vec2<f32>(x_821.x, x_821.y));
            let x_824 : vec4<f32> = u_xlat0;
            u_xlat0 = vec4<f32>(x_823.x, x_824.y, x_824.z, x_823.y);
            let x_829 : vec4<f32> = u_xlat0;
            let x_831 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_829.x, x_829.w), 0.0f);
            u_xlat4 = x_831;
            let x_833 : f32 = u_xlat4.w;
            let x_835 : f32 = vs_TEXCOORD1.z;
            u_xlat5.w = (x_833 * x_835);
          } else {
            let x_839 : vec4<f32> = vs_COLOR0;
            let x_840 : vec3<f32> = vec3<f32>(x_839.x, x_839.y, x_839.z);
            let x_841 : vec4<f32> = u_xlat4;
            u_xlat4 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
            let x_844 : f32 = vs_COLOR0.w;
            u_xlat5.w = x_844;
          }
          let x_846 : vec4<f32> = u_xlat4;
          let x_848 : vec4<f32> = u_xlat5;
          let x_850 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848.w, x_848.w, x_848.w));
          let x_851 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
          let x_856 : vec4<f32> = u_xlat3;
          let x_858 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_856.z, x_856.w), 0.0f);
          u_xlat3 = x_858;
          let x_860 : f32 = u_xlat3.w;
          let x_862 : f32 = vs_TEXCOORD1.z;
          u_xlat4.w = (x_860 * x_862);
          let x_865 : vec4<f32> = u_xlat3;
          let x_867 : vec4<f32> = u_xlat4;
          let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_867.w, x_867.w, x_867.w));
          let x_870 : vec4<f32> = u_xlat4;
          u_xlat4 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
          let x_872 : vec3<f32> = u_xlat9;
          let x_876 : vec2<f32> = (-(vec2<f32>(x_872.x, x_872.y)) + vec2<f32>(1.0f, 1.0f));
          let x_877 : vec4<f32> = u_xlat0;
          u_xlat0 = vec4<f32>(x_876.x, x_877.y, x_877.z, x_876.y);
          let x_879 : vec4<f32> = u_xlat0;
          let x_881 : vec4<f32> = u_xlat4;
          u_xlat3 = (vec4<f32>(x_879.x, x_879.x, x_879.x, x_879.x) * x_881);
          let x_883 : vec3<f32> = u_xlat9;
          let x_885 : vec4<f32> = u_xlat3;
          u_xlat3 = (vec4<f32>(x_883.y, x_883.y, x_883.y, x_883.y) * x_885);
          let x_887 : vec4<f32> = u_xlat5;
          let x_888 : vec3<f32> = u_xlat9;
          let x_891 : vec4<f32> = u_xlat3;
          u_xlat3 = ((x_887 * vec4<f32>(x_888.x, x_888.x, x_888.x, x_888.x)) + x_891);
          let x_893 : vec2<f32> = vs_TEXCOORD3;
          let x_896 : vec2<f32> = (x_893 + vec2<f32>(0.5f, 2.5f));
          let x_897 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_896.x, x_896.y, x_897.z);
          let x_899 : vec3<f32> = u_xlat9;
          let x_902 : vec4<f32> = x_549.x_ShaderInfoTex_TexelSize;
          let x_904 : vec2<f32> = (vec2<f32>(x_899.x, x_899.y) * vec2<f32>(x_902.x, x_902.y));
          let x_905 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_904.x, x_904.y, x_905.z);
          let x_910 : vec3<f32> = u_xlat9;
          let x_912 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_910.x, x_910.y), 0.0f);
          u_xlat4 = x_912;
          let x_914 : f32 = u_xlat4.w;
          let x_916 : f32 = vs_TEXCOORD1.z;
          u_xlat9.x = (x_914 * x_916);
          let x_920 : f32 = u_xlat9.z;
          let x_922 : f32 = u_xlat9.x;
          u_xlat5.w = (x_920 * x_922);
          let x_925 : vec4<f32> = u_xlat4;
          let x_927 : vec4<f32> = u_xlat5;
          let x_929 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(x_927.w, x_927.w, x_927.w));
          let x_930 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
          let x_932 : vec4<f32> = u_xlat0;
          let x_934 : vec4<f32> = u_xlat5;
          u_xlat4 = (vec4<f32>(x_932.x, x_932.x, x_932.x, x_932.x) * x_934);
          let x_936 : vec4<f32> = u_xlat4;
          let x_938 : vec4<f32> = u_xlat0;
          let x_941 : vec4<f32> = u_xlat3;
          u_xlat1 = ((vec4<f32>(x_936.w, x_936.x, x_936.y, x_936.z) * vec4<f32>(x_938.w, x_938.w, x_938.w, x_938.w)) + vec4<f32>(x_941.w, x_941.x, x_941.y, x_941.z));
          let x_945 : f32 = u_xlat1.x;
          u_xlatb0.x = (0.0f < x_945);
          let x_949 : bool = u_xlatb0.x;
          if (x_949) {
            let x_954 : f32 = u_xlat1.x;
            x_950 = x_954;
          } else {
            x_950 = 1.0f;
          }
          let x_956 : f32 = x_950;
          u_xlat0.x = x_956;
          let x_958 : vec4<f32> = u_xlat1;
          let x_960 : vec4<f32> = u_xlat0;
          let x_962 : vec3<f32> = (vec3<f32>(x_958.y, x_958.z, x_958.w) / vec3<f32>(x_960.x, x_960.x, x_960.x));
          let x_963 : vec4<f32> = SV_Target0;
          SV_Target0 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        } else {
          let x_967 : f32 = u_xlat2.x;
          let x_969 : f32 = vs_COLOR0.w;
          u_xlat1.x = (x_967 * x_969);
          let x_972 : vec4<f32> = vs_COLOR0;
          let x_973 : vec3<f32> = vec3<f32>(x_972.x, x_972.y, x_972.z);
          let x_974 : vec4<f32> = SV_Target0;
          SV_Target0 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
        }
      } else {
        u_xlat2.x = 0.5f;
        u_xlat16.y = 0.0f;
        let x_980 : f32 = vs_TEXCOORD1.z;
        u_xlat2.y = (x_980 + 0.5f);
        let x_983 : vec4<f32> = u_xlat2;
        let x_987 : vec4<f32> = x_549.x_GradientSettingsTex_TexelSize;
        let x_989 : vec2<f32> = (vec2<f32>(x_983.x, x_983.y) * vec2<f32>(x_987.x, x_987.y));
        let x_990 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_989.x, x_990.y, x_990.z, x_989.y);
        let x_997 : vec4<f32> = u_xlat0;
        let x_999 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_997.x, x_997.w), 0.0f);
        u_xlat3 = x_999;
        let x_1002 : f32 = u_xlat3.x;
        u_xlatb3.x = (0.0f < x_1002);
        let x_1006 : vec4<f32> = u_xlat3;
        u_xlat17 = (vec2<f32>(x_1006.z, x_1006.w) + vec2<f32>(-0.5f, -0.5f));
        let x_1010 : vec2<f32> = u_xlat17;
        let x_1011 : vec2<f32> = u_xlat17;
        u_xlat17 = (x_1010 + x_1011);
        let x_1013 : vec4<f32> = vs_TEXCOORD0;
        let x_1015 : vec2<f32> = (vec2<f32>(x_1013.x, x_1013.y) + vec2<f32>(-0.5f, -0.5f));
        let x_1016 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat4;
        let x_1022 : vec2<f32> = u_xlat17;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(2.0f, 2.0f)) + -(x_1022));
        let x_1025 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1028 : vec4<f32> = u_xlat4;
        let x_1030 : vec4<f32> = u_xlat4;
        u_xlat18.x = dot(vec2<f32>(x_1028.x, x_1028.y), vec2<f32>(x_1030.x, x_1030.y));
        let x_1035 : f32 = u_xlat18.x;
        u_xlat18.x = inverseSqrt(x_1035);
        let x_1038 : vec2<f32> = u_xlat18;
        let x_1040 : vec4<f32> = u_xlat4;
        u_xlat18 = (vec2<f32>(x_1038.x, x_1038.x) * vec2<f32>(x_1040.x, x_1040.y));
        let x_1043 : vec2<f32> = u_xlat17;
        let x_1045 : vec2<f32> = u_xlat18;
        u_xlat5.x = dot(-(x_1043), x_1045);
        let x_1048 : vec2<f32> = u_xlat17;
        let x_1049 : vec2<f32> = u_xlat17;
        u_xlat17.x = dot(x_1048, x_1049);
        let x_1053 : f32 = u_xlat5.x;
        let x_1056 : f32 = u_xlat5.x;
        let x_1059 : f32 = u_xlat17.x;
        u_xlat17.x = ((-(x_1053) * x_1056) + x_1059);
        let x_1063 : f32 = u_xlat17.x;
        u_xlat17.x = (-(x_1063) + 1.0f);
        let x_1068 : f32 = u_xlat17.x;
        u_xlat17.x = sqrt(x_1068);
        let x_1073 : f32 = u_xlat17.x;
        let x_1076 : f32 = u_xlat5.x;
        u_xlat24 = (-(x_1073) + x_1076);
        let x_1079 : f32 = u_xlat17.x;
        let x_1081 : f32 = u_xlat5.x;
        u_xlat17.x = (x_1079 + x_1081);
        let x_1085 : f32 = u_xlat17.x;
        let x_1086 : f32 = u_xlat24;
        u_xlat5.x = min(x_1085, x_1086);
        let x_1091 : f32 = u_xlat5.x;
        u_xlatb12 = (x_1091 < 0.0f);
        let x_1094 : f32 = u_xlat17.x;
        let x_1095 : f32 = u_xlat24;
        u_xlat17.x = max(x_1094, x_1095);
        let x_1098 : bool = u_xlatb12;
        if (x_1098) {
          let x_1103 : f32 = u_xlat17.x;
          x_1099 = x_1103;
        } else {
          let x_1106 : f32 = u_xlat5.x;
          x_1099 = x_1106;
        }
        let x_1107 : f32 = x_1099;
        u_xlat17.x = x_1107;
        let x_1109 : vec2<f32> = u_xlat17;
        let x_1111 : vec2<f32> = u_xlat18;
        u_xlat17 = (vec2<f32>(x_1109.x, x_1109.x) * x_1111);
        let x_1116 : f32 = u_xlat17.x;
        u_xlatb18 = (0.0001f >= abs(x_1116));
        let x_1121 : f32 = u_xlat17.y;
        u_xlatb25 = (0.0001f < abs(x_1121));
        let x_1124 : vec4<f32> = u_xlat4;
        let x_1126 : vec2<f32> = u_xlat17;
        u_xlat17 = (vec2<f32>(x_1124.x, x_1124.y) / x_1126);
        let x_1128 : bool = u_xlatb25;
        if (x_1128) {
          let x_1133 : f32 = u_xlat17.y;
          x_1129 = x_1133;
        } else {
          x_1129 = 0.0f;
        }
        let x_1135 : f32 = x_1129;
        u_xlat24 = x_1135;
        let x_1137 : bool = u_xlatb18;
        if (x_1137) {
          let x_1141 : f32 = u_xlat24;
          x_1138 = x_1141;
        } else {
          let x_1144 : f32 = u_xlat17.x;
          x_1138 = x_1144;
        }
        let x_1145 : f32 = x_1138;
        u_xlat11.x = x_1145;
        u_xlat11.y = 0.0f;
        let x_1149 : bool = u_xlatb3.x;
        if (x_1149) {
          let x_1153 : vec2<f32> = u_xlat11;
          x_1150 = x_1153;
        } else {
          let x_1155 : vec4<f32> = vs_TEXCOORD0;
          x_1150 = vec2<f32>(x_1155.x, x_1155.y);
        }
        let x_1157 : vec2<f32> = x_1150;
        let x_1158 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1158.x, x_1157.x, x_1157.y, x_1158.w);
        let x_1161 : f32 = u_xlat3.y;
        u_xlat3.x = (x_1161 * 255.0f);
        let x_1166 : f32 = u_xlat3.x;
        u_xlat3.x = round(x_1166);
        let x_1172 : f32 = u_xlat3.x;
        u_xlati3 = i32(x_1172);
        let x_1176 : f32 = u_xlat4.y;
        let x_1178 : f32 = u_xlat4.y;
        u_xlatb10 = (x_1176 >= -(x_1178));
        let x_1182 : f32 = u_xlat4.y;
        u_xlat17.x = fract(abs(x_1182));
        let x_1187 : bool = u_xlatb10;
        if (x_1187) {
          let x_1192 : f32 = u_xlat17.x;
          x_1188 = x_1192;
        } else {
          let x_1195 : f32 = u_xlat17.x;
          x_1188 = -(x_1195);
        }
        let x_1197 : f32 = x_1188;
        u_xlat10 = x_1197;
        let x_1198 : i32 = u_xlati3;
        if ((x_1198 != 0i)) {
          let x_1204 : f32 = u_xlat4.y;
          x_1200 = x_1204;
        } else {
          let x_1206 : f32 = u_xlat10;
          x_1200 = x_1206;
        }
        let x_1207 : f32 = x_1200;
        u_xlat10 = x_1207;
        let x_1208 : i32 = u_xlati3;
        let x_1212 : vec4<bool> = (vec4<i32>(x_1208, x_1208, x_1208, x_1208) == vec4<i32>(1i, 0i, 2i, 0i));
        let x_1213 : vec2<bool> = vec2<bool>(x_1212.x, x_1212.z);
        let x_1214 : vec3<bool> = u_xlatb3;
        u_xlatb3 = vec3<bool>(x_1213.x, x_1214.y, x_1213.y);
        let x_1216 : f32 = u_xlat10;
        u_xlat24 = x_1216;
        let x_1217 : f32 = u_xlat24;
        u_xlat24 = clamp(x_1217, 0.0f, 1.0f);
        let x_1220 : bool = u_xlatb3.x;
        let x_1221 : f32 = u_xlat24;
        let x_1222 : f32 = u_xlat10;
        u_xlat3.x = select(x_1222, x_1221, x_1220);
        let x_1226 : f32 = u_xlat3.x;
        u_xlat10 = (x_1226 * 0.5f);
        let x_1229 : f32 = u_xlat10;
        let x_1230 : f32 = u_xlat10;
        u_xlatb24 = (x_1229 >= -(x_1230));
        let x_1233 : f32 = u_xlat10;
        u_xlat10 = fract(abs(x_1233));
        let x_1236 : bool = u_xlatb24;
        if (x_1236) {
          let x_1240 : f32 = u_xlat10;
          x_1237 = x_1240;
        } else {
          let x_1242 : f32 = u_xlat10;
          x_1237 = -(x_1242);
        }
        let x_1244 : f32 = x_1237;
        u_xlat10 = x_1244;
        let x_1245 : f32 = u_xlat10;
        let x_1246 : f32 = u_xlat10;
        u_xlat24 = (x_1245 + x_1246);
        let x_1248 : f32 = u_xlat10;
        u_xlatb10 = (0.5f < x_1248);
        let x_1251 : f32 = u_xlat24;
        let x_1252 : f32 = u_xlat24;
        u_xlatb11 = (x_1251 >= -(x_1252));
        let x_1256 : f32 = u_xlat24;
        u_xlat25 = fract(abs(x_1256));
        let x_1259 : bool = u_xlatb11;
        if (x_1259) {
          let x_1263 : f32 = u_xlat25;
          x_1260 = x_1263;
        } else {
          let x_1265 : f32 = u_xlat25;
          x_1260 = -(x_1265);
        }
        let x_1267 : f32 = x_1260;
        u_xlat11.x = x_1267;
        let x_1270 : f32 = u_xlat11.x;
        u_xlat11.x = (-(x_1270) + 1.0f);
        let x_1274 : bool = u_xlatb10;
        if (x_1274) {
          let x_1279 : f32 = u_xlat11.x;
          x_1275 = x_1279;
        } else {
          let x_1281 : f32 = u_xlat24;
          x_1275 = x_1281;
        }
        let x_1282 : f32 = x_1275;
        u_xlat10 = x_1282;
        let x_1284 : bool = u_xlatb3.z;
        if (x_1284) {
          let x_1288 : f32 = u_xlat10;
          x_1285 = x_1288;
        } else {
          let x_1291 : f32 = u_xlat3.x;
          x_1285 = x_1291;
        }
        let x_1292 : f32 = x_1285;
        u_xlat4.x = x_1292;
        let x_1295 : f32 = x_549.x_GradientSettingsTex_TexelSize.x;
        u_xlat16.x = x_1295;
        let x_1297 : vec4<f32> = u_xlat2;
        let x_1300 : vec4<f32> = x_549.x_GradientSettingsTex_TexelSize;
        let x_1303 : vec2<f32> = u_xlat16;
        let x_1304 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + x_1303);
        let x_1305 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
        let x_1310 : vec4<f32> = u_xlat2;
        let x_1312 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1310.x, x_1310.y), 0.0f);
        u_xlat3 = x_1312;
        let x_1313 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_1313.y, x_1313.w, x_1313.x, x_1313.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1318 : vec4<f32> = u_xlat3;
        let x_1320 : vec4<f32> = u_xlat3;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1318.x, x_1318.y) + vec2<f32>(x_1320.z, x_1320.w));
        let x_1323 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : vec4<f32> = u_xlat2;
        let x_1327 : vec2<f32> = (vec2<f32>(x_1325.x, x_1325.y) + vec2<f32>(0.5f, 0.5f));
        let x_1328 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
        let x_1330 : vec2<f32> = u_xlat16;
        let x_1332 : vec4<f32> = u_xlat0;
        let x_1334 : vec2<f32> = ((x_1330 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_1332.x, x_1332.w));
        let x_1335 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_1334.x, x_1335.y, x_1335.z, x_1334.y);
        let x_1340 : vec4<f32> = u_xlat0;
        let x_1342 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1340.x, x_1340.w), 0.0f);
        u_xlat2 = x_1342;
        let x_1343 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_1343.y, x_1343.w, x_1343.x, x_1343.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1346 : vec4<f32> = u_xlat2;
        let x_1348 : vec4<f32> = u_xlat2;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1346.x, x_1346.y) + vec2<f32>(x_1348.z, x_1348.w));
        let x_1351 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1351.x, x_1351.y, x_1350.x, x_1350.y);
        let x_1353 : vec4<f32> = u_xlat3;
        let x_1354 : u32 = u_xlatu7;
        let x_1357 : vec4<f32> = x_549.x_TextureInfo[bitcast<i32>(x_1354)];
        u_xlat2 = (x_1353 * vec4<f32>(x_1357.y, x_1357.z, x_1357.y, x_1357.z));
        let x_1360 : vec4<f32> = u_xlat4;
        let x_1362 : vec4<f32> = u_xlat2;
        let x_1365 : vec4<f32> = u_xlat2;
        let x_1367 : vec2<f32> = ((vec2<f32>(x_1360.x, x_1360.z) * vec2<f32>(x_1362.z, x_1362.w)) + vec2<f32>(x_1365.x, x_1365.y));
        let x_1368 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1371 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_1371 < 4.0f);
        let x_1373 : bool = u_xlatb21;
        if (x_1373) {
          let x_1377 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_1377 < 2.0f);
          let x_1379 : bool = u_xlatb21;
          if (x_1379) {
            let x_1383 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1383 < 1.0f);
            let x_1385 : bool = u_xlatb21;
            if (x_1385) {
              let x_1391 : vec4<f32> = u_xlat0;
              let x_1393 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_1391.x, x_1391.y));
              u_xlat2 = x_1393;
            } else {
              let x_1398 : vec4<f32> = u_xlat0;
              let x_1400 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_1398.x, x_1398.y));
              u_xlat2 = x_1400;
            }
          } else {
            let x_1403 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1403 < 3.0f);
            let x_1405 : bool = u_xlatb21;
            if (x_1405) {
              let x_1411 : vec4<f32> = u_xlat0;
              let x_1413 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_1411.x, x_1411.y));
              u_xlat2 = x_1413;
            } else {
              let x_1418 : vec4<f32> = u_xlat0;
              let x_1420 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_1418.x, x_1418.y));
              u_xlat2 = x_1420;
            }
          }
        } else {
          let x_1423 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_1423 < 6.0f);
          let x_1425 : bool = u_xlatb21;
          if (x_1425) {
            let x_1429 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1429 < 5.0f);
            let x_1431 : bool = u_xlatb21;
            if (x_1431) {
              let x_1437 : vec4<f32> = u_xlat0;
              let x_1439 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_1437.x, x_1437.y));
              u_xlat2 = x_1439;
            } else {
              let x_1444 : vec4<f32> = u_xlat0;
              let x_1446 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_1444.x, x_1444.y));
              u_xlat2 = x_1446;
            }
          } else {
            let x_1449 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1449 < 7.0f);
            let x_1451 : bool = u_xlatb21;
            if (x_1451) {
              let x_1457 : vec4<f32> = u_xlat0;
              let x_1459 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_1457.x, x_1457.y));
              u_xlat2 = x_1459;
            } else {
              let x_1464 : vec4<f32> = u_xlat0;
              let x_1466 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_1464.x, x_1464.y));
              u_xlat2 = x_1466;
            }
          }
        }
        let x_1467 : vec4<f32> = u_xlat2;
        let x_1469 : vec4<f32> = vs_COLOR0;
        u_xlat1 = (vec4<f32>(x_1467.w, x_1467.x, x_1467.y, x_1467.z) * vec4<f32>(x_1469.w, x_1469.x, x_1469.y, x_1469.z));
        let x_1472 : vec4<f32> = u_xlat1;
        let x_1473 : vec3<f32> = vec3<f32>(x_1472.y, x_1472.z, x_1472.w);
        let x_1474 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
      }
      u_xlat14 = 1.0f;
    }
  }
  let x_1476 : vec4<f32> = vs_TEXCOORD0;
  let x_1481 : vec4<bool> = (abs(vec4<f32>(x_1476.z, x_1476.w, x_1476.z, x_1476.z)) < vec4<f32>(1.000100017f, 1.000100017f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_1481.x, x_1481.y);
  let x_1484 : bool = u_xlatb0.x;
  let x_1486 : bool = u_xlatb0.y;
  u_xlatb0.x = (x_1484 & x_1486);
  let x_1490 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_1490);
  let x_1494 : f32 = u_xlat0.x;
  let x_1495 : f32 = u_xlat14;
  u_xlat7 = (x_1494 * x_1495);
  let x_1497 : f32 = u_xlat14;
  let x_1499 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1497 * x_1499) + -0.003f);
  let x_1505 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1505 < 0.0f);
  let x_1509 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_1509) * -1i) != 0i)) {
    discard;
  }
  let x_1517 : f32 = u_xlat7;
  let x_1519 : f32 = u_xlat1.x;
  SV_Target0.w = (x_1517 * x_1519);
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

