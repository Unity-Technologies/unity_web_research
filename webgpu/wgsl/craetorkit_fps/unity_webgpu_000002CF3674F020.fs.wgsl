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

@group(1) @binding(0) var<uniform> x_595 : PGlobals;

var<private> vs_TEXCOORD3 : vec2<f32>;

@group(0) @binding(8) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShaderInfoTex : sampler;

@group(0) @binding(9) var x_GradientSettingsTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GradientSettingsTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : vec2<bool>;
  var u_xlat7 : vec3<f32>;
  var x_35 : f32;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb7 : vec3<bool>;
  var u_xlatu21 : u32;
  var u_xlat16 : vec2<f32>;
  var u_xlatu16 : u32;
  var u_xlatb23 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat0 : vec2<f32>;
  var x_1002 : f32;
  var u_xlatu0 : u32;
  var u_xlatb3 : vec3<bool>;
  var u_xlat17 : vec2<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat24 : f32;
  var u_xlatb12 : bool;
  var x_1161 : f32;
  var u_xlatb18 : bool;
  var u_xlatb25 : bool;
  var x_1191 : f32;
  var u_xlat11 : vec2<f32>;
  var x_1200 : f32;
  var x_1212 : vec2<f32>;
  var u_xlati3 : i32;
  var u_xlatb10 : bool;
  var u_xlat10 : f32;
  var x_1250 : f32;
  var x_1262 : f32;
  var u_xlatb24 : bool;
  var x_1299 : f32;
  var u_xlatb11 : bool;
  var u_xlat25 : f32;
  var x_1322 : f32;
  var x_1337 : f32;
  var x_1347 : f32;
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
    let x_39 : f32 = u_xlat7.x;
    x_35 = x_39;
  } else {
    let x_42 : f32 = vs_TEXCOORD1.w;
    x_35 = x_42;
  }
  let x_43 : f32 = x_35;
  u_xlat7.x = x_43;
  let x_47 : f32 = vs_TEXCOORD1.x;
  u_xlatb14.x = (x_47 == 1.0f);
  let x_52 : bool = u_xlatb14.x;
  if (x_52) {
    let x_58 : f32 = u_xlat7.x;
    u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_58, x_58, x_58, x_58))));
    let x_65 : bool = u_xlatb14.x;
    if (x_65) {
      let x_71 : vec4<f32> = vs_TEXCOORD4;
      let x_73 : vec4<bool> = (vec4<f32>(-9999.0f, -9999.0f, -9999.0f, -9999.0f) < vec4<f32>(x_71.x, x_71.z, x_71.x, x_71.z));
      u_xlatb14 = vec2<bool>(x_73.x, x_73.y);
      let x_76 : bool = u_xlatb14.x;
      if (x_76) {
        let x_81 : vec4<f32> = vs_TEXCOORD4;
        let x_83 : vec4<f32> = vs_TEXCOORD4;
        u_xlat14 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
        let x_86 : f32 = u_xlat14;
        u_xlat14 = sqrt(x_86);
        let x_88 : f32 = u_xlat14;
        u_xlat14 = (x_88 + -1.0f);
        let x_93 : f32 = u_xlat14;
        u_xlat1.x = dpdxCoarse(x_93);
        let x_96 : f32 = u_xlat14;
        u_xlat1.y = dpdyCoarse(x_96);
        let x_100 : vec4<f32> = u_xlat1;
        let x_102 : vec4<f32> = u_xlat1;
        u_xlat1.x = dot(vec2<f32>(x_100.x, x_100.y), vec2<f32>(x_102.x, x_102.y));
        let x_107 : f32 = u_xlat1.x;
        u_xlat1.x = sqrt(x_107);
        let x_110 : f32 = u_xlat14;
        let x_112 : f32 = u_xlat1.x;
        u_xlat14 = (x_110 / x_112);
        let x_114 : f32 = u_xlat14;
        u_xlat14 = (-(x_114) + 0.5f);
        let x_118 : f32 = u_xlat14;
        u_xlat14 = clamp(x_118, 0.0f, 1.0f);
      } else {
        u_xlat14 = 1.0f;
      }
      let x_122 : bool = u_xlatb14.y;
      if (x_122) {
        let x_126 : vec4<f32> = vs_TEXCOORD4;
        let x_128 : vec4<f32> = vs_TEXCOORD4;
        u_xlat21 = dot(vec2<f32>(x_126.z, x_126.w), vec2<f32>(x_128.z, x_128.w));
        let x_131 : f32 = u_xlat21;
        u_xlat21 = sqrt(x_131);
        let x_133 : f32 = u_xlat21;
        u_xlat21 = (x_133 + -1.0f);
        let x_135 : f32 = u_xlat21;
        u_xlat1.x = dpdxCoarse(x_135);
        let x_138 : f32 = u_xlat21;
        u_xlat1.y = dpdyCoarse(x_138);
        let x_141 : vec4<f32> = u_xlat1;
        let x_143 : vec4<f32> = u_xlat1;
        u_xlat1.x = dot(vec2<f32>(x_141.x, x_141.y), vec2<f32>(x_143.x, x_143.y));
        let x_148 : f32 = u_xlat1.x;
        u_xlat1.x = sqrt(x_148);
        let x_151 : f32 = u_xlat21;
        let x_153 : f32 = u_xlat1.x;
        u_xlat21 = (x_151 / x_153);
        let x_155 : f32 = u_xlat21;
        u_xlat21 = (-(x_155) + 0.5f);
        let x_158 : f32 = u_xlat21;
        u_xlat21 = clamp(x_158, 0.0f, 1.0f);
        let x_160 : f32 = u_xlat21;
        u_xlat21 = (-(x_160) + 1.0f);
        let x_163 : f32 = u_xlat21;
        let x_164 : f32 = u_xlat14;
        u_xlat14 = (x_163 * x_164);
      }
    } else {
      u_xlat14 = 1.0f;
    }
    let x_170 : vec4<f32> = vs_COLOR0;
    let x_171 : vec3<f32> = vec3<f32>(x_170.x, x_170.y, x_170.z);
    let x_172 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : f32 = vs_COLOR0.w;
    u_xlat1.x = x_175;
  } else {
    let x_180 : f32 = vs_TEXCOORD1.x;
    u_xlatb21 = (x_180 == 3.0f);
    let x_183 : bool = u_xlatb21;
    if (x_183) {
      let x_187 : f32 = vs_TEXCOORD1.y;
      u_xlatb21 = (x_187 < 4.0f);
      let x_190 : bool = u_xlatb21;
      if (x_190) {
        let x_194 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_194 < 2.0f);
        let x_196 : bool = u_xlatb21;
        if (x_196) {
          let x_200 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_200 < 1.0f);
          let x_202 : bool = u_xlatb21;
          if (x_202) {
            let x_217 : vec4<f32> = vs_TEXCOORD0;
            let x_219 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_217.x, x_217.y));
            u_xlat2 = x_219;
          } else {
            let x_226 : vec4<f32> = vs_TEXCOORD0;
            let x_228 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_226.x, x_226.y));
            u_xlat2 = x_228;
          }
        } else {
          let x_231 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_231 < 3.0f);
          let x_233 : bool = u_xlatb21;
          if (x_233) {
            let x_241 : vec4<f32> = vs_TEXCOORD0;
            let x_243 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_241.x, x_241.y));
            u_xlat2 = x_243;
          } else {
            let x_250 : vec4<f32> = vs_TEXCOORD0;
            let x_252 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_250.x, x_250.y));
            u_xlat2 = x_252;
          }
        }
      } else {
        let x_255 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_255 < 6.0f);
        let x_258 : bool = u_xlatb21;
        if (x_258) {
          let x_262 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_262 < 5.0f);
          let x_265 : bool = u_xlatb21;
          if (x_265) {
            let x_273 : vec4<f32> = vs_TEXCOORD0;
            let x_275 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_273.x, x_273.y));
            u_xlat2 = x_275;
          } else {
            let x_282 : vec4<f32> = vs_TEXCOORD0;
            let x_284 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_282.x, x_282.y));
            u_xlat2 = x_284;
          }
        } else {
          let x_287 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_287 < 7.0f);
          let x_290 : bool = u_xlatb21;
          if (x_290) {
            let x_298 : vec4<f32> = vs_TEXCOORD0;
            let x_300 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_298.x, x_298.y));
            u_xlat2 = x_300;
          } else {
            let x_307 : vec4<f32> = vs_TEXCOORD0;
            let x_309 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_307.x, x_307.y));
            u_xlat2 = x_309;
          }
        }
      }
      let x_310 : vec4<f32> = u_xlat2;
      let x_312 : vec4<f32> = vs_COLOR0;
      u_xlat1 = (vec4<f32>(x_310.w, x_310.x, x_310.y, x_310.z) * vec4<f32>(x_312.w, x_312.x, x_312.y, x_312.z));
      let x_319 : f32 = u_xlat7.x;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_319, x_319, x_319, x_319))));
      let x_325 : bool = u_xlatb7.x;
      if (x_325) {
        let x_329 : vec4<f32> = vs_TEXCOORD4;
        let x_331 : vec4<bool> = (vec4<f32>(-9999.0f, 0.0f, -9999.0f, -9999.0f) < vec4<f32>(x_329.x, x_329.x, x_329.z, x_329.z));
        let x_332 : vec2<bool> = vec2<bool>(x_331.x, x_331.z);
        let x_333 : vec3<bool> = u_xlatb7;
        u_xlatb7 = vec3<bool>(x_332.x, x_333.y, x_332.y);
        let x_336 : bool = u_xlatb7.x;
        if (x_336) {
          let x_339 : vec4<f32> = vs_TEXCOORD4;
          let x_341 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7.x = dot(vec2<f32>(x_339.x, x_339.y), vec2<f32>(x_341.x, x_341.y));
          let x_346 : f32 = u_xlat7.x;
          u_xlat7.x = sqrt(x_346);
          let x_350 : f32 = u_xlat7.x;
          u_xlat7.x = (x_350 + -1.0f);
          let x_354 : f32 = u_xlat7.x;
          u_xlat2.x = dpdxCoarse(x_354);
          let x_358 : f32 = u_xlat7.x;
          u_xlat2.y = dpdyCoarse(x_358);
          let x_361 : vec4<f32> = u_xlat2;
          let x_363 : vec4<f32> = u_xlat2;
          u_xlat2.x = dot(vec2<f32>(x_361.x, x_361.y), vec2<f32>(x_363.x, x_363.y));
          let x_368 : f32 = u_xlat2.x;
          u_xlat2.x = sqrt(x_368);
          let x_372 : f32 = u_xlat7.x;
          let x_374 : f32 = u_xlat2.x;
          u_xlat7.x = (x_372 / x_374);
          let x_378 : f32 = u_xlat7.x;
          u_xlat14 = (-(x_378) + 0.5f);
          let x_381 : f32 = u_xlat14;
          u_xlat14 = clamp(x_381, 0.0f, 1.0f);
        } else {
          u_xlat14 = 1.0f;
        }
        let x_386 : bool = u_xlatb7.z;
        if (x_386) {
          let x_389 : vec4<f32> = vs_TEXCOORD4;
          let x_391 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7.x = dot(vec2<f32>(x_389.z, x_389.w), vec2<f32>(x_391.z, x_391.w));
          let x_396 : f32 = u_xlat7.x;
          u_xlat7.x = sqrt(x_396);
          let x_400 : f32 = u_xlat7.x;
          u_xlat7.x = (x_400 + -1.0f);
          let x_404 : f32 = u_xlat7.x;
          u_xlat2.x = dpdxCoarse(x_404);
          let x_408 : f32 = u_xlat7.x;
          u_xlat2.y = dpdyCoarse(x_408);
          let x_411 : vec4<f32> = u_xlat2;
          let x_413 : vec4<f32> = u_xlat2;
          u_xlat21 = dot(vec2<f32>(x_411.x, x_411.y), vec2<f32>(x_413.x, x_413.y));
          let x_416 : f32 = u_xlat21;
          u_xlat21 = sqrt(x_416);
          let x_419 : f32 = u_xlat7.x;
          let x_420 : f32 = u_xlat21;
          u_xlat7.x = (x_419 / x_420);
          let x_424 : f32 = u_xlat7.x;
          u_xlat7.x = (-(x_424) + 0.5f);
          let x_429 : f32 = u_xlat7.x;
          u_xlat7.x = clamp(x_429, 0.0f, 1.0f);
          let x_433 : f32 = u_xlat7.x;
          u_xlat7.x = (-(x_433) + 1.0f);
          let x_438 : f32 = u_xlat7.x;
          let x_439 : f32 = u_xlat14;
          u_xlat14 = (x_438 * x_439);
        }
      } else {
        u_xlat14 = 1.0f;
      }
      let x_442 : vec4<f32> = u_xlat1;
      let x_443 : vec3<f32> = vec3<f32>(x_442.y, x_442.z, x_442.w);
      let x_444 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
    } else {
      let x_448 : f32 = vs_TEXCOORD1.x;
      u_xlatb7.x = (x_448 == 2.0f);
      let x_452 : bool = u_xlatb7.x;
      if (x_452) {
        let x_456 : f32 = vs_TEXCOORD1.y;
        u_xlatb7.x = (x_456 < 4.0f);
        let x_460 : bool = u_xlatb7.x;
        if (x_460) {
          let x_464 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_464 < 2.0f);
          let x_466 : bool = u_xlatb21;
          if (x_466) {
            let x_470 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_470 < 1.0f);
            let x_472 : bool = u_xlatb21;
            if (x_472) {
              let x_478 : vec4<f32> = vs_TEXCOORD0;
              let x_480 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_478.x, x_478.y));
              u_xlat2.x = x_480.w;
            } else {
              let x_487 : vec4<f32> = vs_TEXCOORD0;
              let x_489 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_487.x, x_487.y));
              u_xlat2.x = x_489.w;
            }
          } else {
            let x_494 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_494 < 3.0f);
            let x_496 : bool = u_xlatb21;
            if (x_496) {
              let x_502 : vec4<f32> = vs_TEXCOORD0;
              let x_504 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_502.x, x_502.y));
              u_xlat2.x = x_504.w;
            } else {
              let x_511 : vec4<f32> = vs_TEXCOORD0;
              let x_513 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_511.x, x_511.y));
              u_xlat2.x = x_513.w;
            }
          }
        } else {
          let x_518 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_518 < 6.0f);
          let x_520 : bool = u_xlatb21;
          if (x_520) {
            let x_524 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_524 < 5.0f);
            let x_526 : bool = u_xlatb21;
            if (x_526) {
              let x_532 : vec4<f32> = vs_TEXCOORD0;
              let x_534 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_532.x, x_532.y));
              u_xlat2.x = x_534.w;
            } else {
              let x_541 : vec4<f32> = vs_TEXCOORD0;
              let x_543 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_541.x, x_541.y));
              u_xlat2.x = x_543.w;
            }
          } else {
            let x_548 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_548 < 7.0f);
            let x_550 : bool = u_xlatb21;
            if (x_550) {
              let x_556 : vec4<f32> = vs_TEXCOORD0;
              let x_558 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_556.x, x_556.y));
              u_xlat2.x = x_558.w;
            } else {
              let x_565 : vec4<f32> = vs_TEXCOORD0;
              let x_567 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_565.x, x_565.y));
              u_xlat2.x = x_567.w;
            }
          }
        }
        let x_571 : f32 = vs_TEXCOORD1.y;
        let x_573 : f32 = vs_TEXCOORD1.y;
        u_xlat21 = (x_571 + x_573);
        let x_577 : f32 = u_xlat21;
        u_xlatu21 = u32(x_577);
        let x_582 : f32 = vs_TEXCOORD1.y;
        u_xlat16.x = ((x_582 * 2.0f) + 1.0f);
        let x_588 : f32 = u_xlat16.x;
        u_xlatu16 = u32(x_588);
        let x_598 : u32 = u_xlatu21;
        let x_602 : f32 = x_595.x_TextureInfo[bitcast<i32>(x_598)].w;
        u_xlatb23 = (0.0f < x_602);
        let x_604 : bool = u_xlatb23;
        if (x_604) {
          let x_610 : vec2<f32> = vs_TEXCOORD3;
          u_xlat3 = (vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) + vec4<f32>(0.5f, 3.5f, 0.5f, 1.5f));
          let x_616 : vec4<f32> = u_xlat3;
          let x_620 : vec4<f32> = x_595.x_ShaderInfoTex_TexelSize;
          u_xlat3 = (x_616 * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y));
          let x_629 : vec4<f32> = u_xlat3;
          let x_631 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_629.x, x_629.y), 0.0f);
          u_xlat4 = x_631;
          let x_632 : vec4<f32> = u_xlat4;
          let x_633 : u32 = u_xlatu21;
          let x_636 : vec4<f32> = x_595.x_TextureInfo[bitcast<i32>(x_633)];
          u_xlat4 = (x_632 * vec4<f32>(x_636.w, x_636.w, x_636.w, x_636.w));
          let x_641 : f32 = u_xlat4.w;
          u_xlat5.y = (x_641 * 0.25f);
          let x_645 : vec4<f32> = u_xlat4;
          let x_647 : u32 = u_xlatu21;
          let x_650 : vec4<f32> = x_595.x_TextureInfo[bitcast<i32>(x_647)];
          let x_653 : vec4<f32> = vs_TEXCOORD0;
          let x_655 : vec2<f32> = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_650.y, x_650.y)) + vec2<f32>(x_653.x, x_653.y));
          let x_656 : vec4<f32> = u_xlat3;
          u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
          let x_659 : bool = u_xlatb7.x;
          if (x_659) {
            let x_663 : f32 = vs_TEXCOORD1.y;
            u_xlatb7.x = (x_663 < 2.0f);
            let x_667 : bool = u_xlatb7.x;
            if (x_667) {
              let x_671 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_671 < 1.0f);
              let x_675 : bool = u_xlatb7.x;
              if (x_675) {
                let x_681 : vec4<f32> = u_xlat3;
                let x_683 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_681.x, x_681.y));
                u_xlat2.y = x_683.w;
              } else {
                let x_690 : vec4<f32> = u_xlat3;
                let x_692 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_690.x, x_690.y));
                u_xlat2.y = x_692.w;
              }
            } else {
              let x_697 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_697 < 3.0f);
              let x_701 : bool = u_xlatb7.x;
              if (x_701) {
                let x_707 : vec4<f32> = u_xlat3;
                let x_709 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_707.x, x_707.y));
                u_xlat2.y = x_709.w;
              } else {
                let x_716 : vec4<f32> = u_xlat3;
                let x_718 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_716.x, x_716.y));
                u_xlat2.y = x_718.w;
              }
            }
          } else {
            let x_723 : f32 = vs_TEXCOORD1.y;
            u_xlatb7.x = (x_723 < 6.0f);
            let x_727 : bool = u_xlatb7.x;
            if (x_727) {
              let x_731 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_731 < 5.0f);
              let x_735 : bool = u_xlatb7.x;
              if (x_735) {
                let x_741 : vec4<f32> = u_xlat3;
                let x_743 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, vec2<f32>(x_741.x, x_741.y));
                u_xlat2.y = x_743.w;
              } else {
                let x_750 : vec4<f32> = u_xlat3;
                let x_752 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, vec2<f32>(x_750.x, x_750.y));
                u_xlat2.y = x_752.w;
              }
            } else {
              let x_757 : f32 = vs_TEXCOORD1.y;
              u_xlatb7.x = (x_757 < 7.0f);
              let x_761 : bool = u_xlatb7.x;
              if (x_761) {
                let x_767 : vec4<f32> = u_xlat3;
                let x_769 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, vec2<f32>(x_767.x, x_767.y));
                u_xlat2.y = x_769.w;
              } else {
                let x_776 : vec4<f32> = u_xlat3;
                let x_778 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, vec2<f32>(x_776.x, x_776.y));
                u_xlat2.y = x_778.w;
              }
            }
          }
          let x_782 : f32 = u_xlat5.y;
          u_xlat5.x = -(x_782);
          u_xlat5.z = 0.0f;
          let x_786 : vec4<f32> = u_xlat5;
          let x_788 : vec4<f32> = vs_TEXCOORD4;
          let x_790 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) + vec3<f32>(x_788.x, x_788.x, x_788.x));
          let x_791 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
          let x_794 : f32 = vs_TEXCOORD0.y;
          u_xlat7.x = dpdxCoarse(x_794);
          let x_799 : f32 = vs_TEXCOORD0.y;
          u_xlat23 = dpdyCoarse(x_799);
          let x_802 : f32 = u_xlat7.x;
          let x_804 : f32 = u_xlat23;
          u_xlat7.x = (abs(x_802) + abs(x_804));
          let x_809 : f32 = u_xlat7.x;
          let x_810 : u32 = u_xlatu16;
          let x_813 : f32 = x_595.x_TextureInfo[bitcast<i32>(x_810)].y;
          u_xlat7.x = (x_809 * x_813);
          let x_817 : vec4<f32> = u_xlat2;
          u_xlat6 = (vec3<f32>(x_817.x, x_817.x, x_817.y) + vec3<f32>(-0.5f, -0.5f, -0.5f));
          let x_822 : vec3<f32> = u_xlat6;
          let x_823 : u32 = u_xlatu21;
          let x_826 : vec4<f32> = x_595.x_TextureInfo[bitcast<i32>(x_823)];
          let x_829 : vec4<f32> = u_xlat5;
          let x_831 : vec3<f32> = ((x_822 * vec3<f32>(x_826.w, x_826.w, x_826.w)) + vec3<f32>(x_829.x, x_829.y, x_829.z));
          let x_832 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
          let x_834 : vec4<f32> = u_xlat5;
          let x_836 : vec4<f32> = u_xlat5;
          let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(x_836.x, x_836.y, x_836.z));
          let x_839 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
          let x_841 : u32 = u_xlatu16;
          let x_844 : f32 = x_595.x_TextureInfo[bitcast<i32>(x_841)].z;
          u_xlat21 = (1.0f + x_844);
          let x_847 : f32 = u_xlat7.x;
          let x_848 : f32 = u_xlat21;
          u_xlat7.x = (x_847 / x_848);
          u_xlat4.x = 0.0f;
          u_xlat4.y = 0.0f;
          let x_854 : vec3<f32> = u_xlat7;
          let x_856 : vec4<f32> = u_xlat4;
          u_xlat9 = (vec3<f32>(x_854.x, x_854.x, x_854.x) + vec3<f32>(x_856.x, x_856.y, x_856.z));
          let x_859 : vec4<f32> = u_xlat5;
          let x_861 : vec3<f32> = u_xlat9;
          u_xlat9 = (vec3<f32>(x_859.x, x_859.y, x_859.z) / x_861);
          let x_863 : vec3<f32> = u_xlat9;
          u_xlat9 = (x_863 + vec3<f32>(0.5f, 0.5f, 0.5f));
          let x_866 : vec3<f32> = u_xlat9;
          u_xlat9 = clamp(x_866, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_871 : bool = u_xlatb0.x;
          if (x_871) {
            let x_875 : vec2<f32> = vs_TEXCOORD3;
            u_xlat0 = (x_875 + vec2<f32>(0.5f, 0.5f));
            let x_878 : vec2<f32> = u_xlat0;
            let x_880 : vec4<f32> = x_595.x_ShaderInfoTex_TexelSize;
            u_xlat0 = (x_878 * vec2<f32>(x_880.x, x_880.y));
            let x_886 : vec2<f32> = u_xlat0;
            let x_887 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_886, 0.0f);
            u_xlat4 = x_887;
            let x_889 : f32 = u_xlat4.w;
            let x_891 : f32 = vs_TEXCOORD1.z;
            u_xlat5.w = (x_889 * x_891);
          } else {
            let x_895 : vec4<f32> = vs_COLOR0;
            let x_896 : vec3<f32> = vec3<f32>(x_895.x, x_895.y, x_895.z);
            let x_897 : vec4<f32> = u_xlat4;
            u_xlat4 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
            let x_900 : f32 = vs_COLOR0.w;
            u_xlat5.w = x_900;
          }
          let x_902 : vec4<f32> = u_xlat4;
          let x_904 : vec4<f32> = u_xlat5;
          let x_906 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(x_904.w, x_904.w, x_904.w));
          let x_907 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
          let x_912 : vec4<f32> = u_xlat3;
          let x_914 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_912.z, x_912.w), 0.0f);
          u_xlat3 = x_914;
          let x_916 : f32 = u_xlat3.w;
          let x_918 : f32 = vs_TEXCOORD1.z;
          u_xlat4.w = (x_916 * x_918);
          let x_921 : vec4<f32> = u_xlat3;
          let x_923 : vec4<f32> = u_xlat4;
          let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923.w, x_923.w, x_923.w));
          let x_926 : vec4<f32> = u_xlat4;
          u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
          let x_928 : vec3<f32> = u_xlat9;
          u_xlat0 = (-(vec2<f32>(x_928.x, x_928.y)) + vec2<f32>(1.0f, 1.0f));
          let x_933 : vec2<f32> = u_xlat0;
          let x_935 : vec4<f32> = u_xlat4;
          u_xlat3 = (vec4<f32>(x_933.x, x_933.x, x_933.x, x_933.x) * x_935);
          let x_937 : vec3<f32> = u_xlat9;
          let x_939 : vec4<f32> = u_xlat3;
          u_xlat3 = (vec4<f32>(x_937.y, x_937.y, x_937.y, x_937.y) * x_939);
          let x_941 : vec4<f32> = u_xlat5;
          let x_942 : vec3<f32> = u_xlat9;
          let x_945 : vec4<f32> = u_xlat3;
          u_xlat3 = ((x_941 * vec4<f32>(x_942.x, x_942.x, x_942.x, x_942.x)) + x_945);
          let x_947 : vec2<f32> = vs_TEXCOORD3;
          let x_950 : vec2<f32> = (x_947 + vec2<f32>(0.5f, 2.5f));
          let x_951 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_950.x, x_950.y, x_951.z);
          let x_953 : vec3<f32> = u_xlat9;
          let x_956 : vec4<f32> = x_595.x_ShaderInfoTex_TexelSize;
          let x_958 : vec2<f32> = (vec2<f32>(x_953.x, x_953.y) * vec2<f32>(x_956.x, x_956.y));
          let x_959 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_958.x, x_958.y, x_959.z);
          let x_964 : vec3<f32> = u_xlat9;
          let x_966 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_964.x, x_964.y), 0.0f);
          u_xlat4 = x_966;
          let x_968 : f32 = u_xlat4.w;
          let x_970 : f32 = vs_TEXCOORD1.z;
          u_xlat21 = (x_968 * x_970);
          let x_973 : f32 = u_xlat9.z;
          let x_974 : f32 = u_xlat21;
          u_xlat5.w = (x_973 * x_974);
          let x_977 : vec4<f32> = u_xlat4;
          let x_979 : vec4<f32> = u_xlat5;
          let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) * vec3<f32>(x_979.w, x_979.w, x_979.w));
          let x_982 : vec4<f32> = u_xlat5;
          u_xlat5 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
          let x_984 : vec2<f32> = u_xlat0;
          let x_986 : vec4<f32> = u_xlat5;
          u_xlat4 = (vec4<f32>(x_984.x, x_984.x, x_984.x, x_984.x) * x_986);
          let x_988 : vec4<f32> = u_xlat4;
          let x_990 : vec2<f32> = u_xlat0;
          let x_993 : vec4<f32> = u_xlat3;
          u_xlat1 = ((vec4<f32>(x_988.w, x_988.x, x_988.y, x_988.z) * vec4<f32>(x_990.y, x_990.y, x_990.y, x_990.y)) + vec4<f32>(x_993.w, x_993.x, x_993.y, x_993.z));
          let x_997 : f32 = u_xlat1.x;
          u_xlatb0.x = (0.0f < x_997);
          let x_1001 : bool = u_xlatb0.x;
          if (x_1001) {
            let x_1006 : f32 = u_xlat1.x;
            x_1002 = x_1006;
          } else {
            x_1002 = 1.0f;
          }
          let x_1008 : f32 = x_1002;
          u_xlat0.x = x_1008;
          let x_1010 : vec4<f32> = u_xlat1;
          let x_1012 : vec2<f32> = u_xlat0;
          let x_1014 : vec3<f32> = (vec3<f32>(x_1010.y, x_1010.z, x_1010.w) / vec3<f32>(x_1012.x, x_1012.x, x_1012.x));
          let x_1015 : vec4<f32> = SV_Target0;
          SV_Target0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        } else {
          let x_1019 : f32 = u_xlat2.x;
          let x_1021 : f32 = vs_COLOR0.w;
          u_xlat1.x = (x_1019 * x_1021);
          let x_1024 : vec4<f32> = vs_COLOR0;
          let x_1025 : vec3<f32> = vec3<f32>(x_1024.x, x_1024.y, x_1024.z);
          let x_1026 : vec4<f32> = SV_Target0;
          SV_Target0 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        }
      } else {
        let x_1030 : f32 = vs_TEXCOORD1.y;
        let x_1032 : f32 = vs_TEXCOORD1.y;
        u_xlat0.x = (x_1030 + x_1032);
        let x_1037 : f32 = u_xlat0.x;
        u_xlatu0 = u32(x_1037);
        u_xlat2.x = 0.5f;
        u_xlat16.y = 0.0f;
        let x_1042 : f32 = vs_TEXCOORD1.z;
        u_xlat2.y = (x_1042 + 0.5f);
        let x_1045 : vec4<f32> = u_xlat2;
        let x_1049 : vec4<f32> = x_595.x_GradientSettingsTex_TexelSize;
        let x_1051 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1049.x, x_1049.y));
        let x_1052 : vec3<f32> = u_xlat7;
        u_xlat7 = vec3<f32>(x_1051.x, x_1052.y, x_1051.y);
        let x_1059 : vec3<f32> = u_xlat7;
        let x_1061 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1059.x, x_1059.z), 0.0f);
        u_xlat3 = x_1061;
        let x_1064 : f32 = u_xlat3.x;
        u_xlatb3.x = (0.0f < x_1064);
        let x_1068 : vec4<f32> = u_xlat3;
        u_xlat17 = (vec2<f32>(x_1068.z, x_1068.w) + vec2<f32>(-0.5f, -0.5f));
        let x_1072 : vec2<f32> = u_xlat17;
        let x_1073 : vec2<f32> = u_xlat17;
        u_xlat17 = (x_1072 + x_1073);
        let x_1075 : vec4<f32> = vs_TEXCOORD0;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) + vec2<f32>(-0.5f, -0.5f));
        let x_1078 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1084 : vec2<f32> = u_xlat17;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(2.0f, 2.0f)) + -(x_1084));
        let x_1087 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1090 : vec4<f32> = u_xlat4;
        let x_1092 : vec4<f32> = u_xlat4;
        u_xlat18.x = dot(vec2<f32>(x_1090.x, x_1090.y), vec2<f32>(x_1092.x, x_1092.y));
        let x_1097 : f32 = u_xlat18.x;
        u_xlat18.x = inverseSqrt(x_1097);
        let x_1100 : vec2<f32> = u_xlat18;
        let x_1102 : vec4<f32> = u_xlat4;
        u_xlat18 = (vec2<f32>(x_1100.x, x_1100.x) * vec2<f32>(x_1102.x, x_1102.y));
        let x_1105 : vec2<f32> = u_xlat17;
        let x_1107 : vec2<f32> = u_xlat18;
        u_xlat5.x = dot(-(x_1105), x_1107);
        let x_1110 : vec2<f32> = u_xlat17;
        let x_1111 : vec2<f32> = u_xlat17;
        u_xlat17.x = dot(x_1110, x_1111);
        let x_1115 : f32 = u_xlat5.x;
        let x_1118 : f32 = u_xlat5.x;
        let x_1121 : f32 = u_xlat17.x;
        u_xlat17.x = ((-(x_1115) * x_1118) + x_1121);
        let x_1125 : f32 = u_xlat17.x;
        u_xlat17.x = (-(x_1125) + 1.0f);
        let x_1130 : f32 = u_xlat17.x;
        u_xlat17.x = sqrt(x_1130);
        let x_1135 : f32 = u_xlat17.x;
        let x_1138 : f32 = u_xlat5.x;
        u_xlat24 = (-(x_1135) + x_1138);
        let x_1141 : f32 = u_xlat17.x;
        let x_1143 : f32 = u_xlat5.x;
        u_xlat17.x = (x_1141 + x_1143);
        let x_1147 : f32 = u_xlat17.x;
        let x_1148 : f32 = u_xlat24;
        u_xlat5.x = min(x_1147, x_1148);
        let x_1153 : f32 = u_xlat5.x;
        u_xlatb12 = (x_1153 < 0.0f);
        let x_1156 : f32 = u_xlat17.x;
        let x_1157 : f32 = u_xlat24;
        u_xlat17.x = max(x_1156, x_1157);
        let x_1160 : bool = u_xlatb12;
        if (x_1160) {
          let x_1165 : f32 = u_xlat17.x;
          x_1161 = x_1165;
        } else {
          let x_1168 : f32 = u_xlat5.x;
          x_1161 = x_1168;
        }
        let x_1169 : f32 = x_1161;
        u_xlat17.x = x_1169;
        let x_1171 : vec2<f32> = u_xlat17;
        let x_1173 : vec2<f32> = u_xlat18;
        u_xlat17 = (vec2<f32>(x_1171.x, x_1171.x) * x_1173);
        let x_1178 : f32 = u_xlat17.x;
        u_xlatb18 = (0.0001f >= abs(x_1178));
        let x_1183 : f32 = u_xlat17.y;
        u_xlatb25 = (0.0001f < abs(x_1183));
        let x_1186 : vec4<f32> = u_xlat4;
        let x_1188 : vec2<f32> = u_xlat17;
        u_xlat17 = (vec2<f32>(x_1186.x, x_1186.y) / x_1188);
        let x_1190 : bool = u_xlatb25;
        if (x_1190) {
          let x_1195 : f32 = u_xlat17.y;
          x_1191 = x_1195;
        } else {
          x_1191 = 0.0f;
        }
        let x_1197 : f32 = x_1191;
        u_xlat24 = x_1197;
        let x_1199 : bool = u_xlatb18;
        if (x_1199) {
          let x_1203 : f32 = u_xlat24;
          x_1200 = x_1203;
        } else {
          let x_1206 : f32 = u_xlat17.x;
          x_1200 = x_1206;
        }
        let x_1207 : f32 = x_1200;
        u_xlat11.x = x_1207;
        u_xlat11.y = 0.0f;
        let x_1211 : bool = u_xlatb3.x;
        if (x_1211) {
          let x_1215 : vec2<f32> = u_xlat11;
          x_1212 = x_1215;
        } else {
          let x_1217 : vec4<f32> = vs_TEXCOORD0;
          x_1212 = vec2<f32>(x_1217.x, x_1217.y);
        }
        let x_1219 : vec2<f32> = x_1212;
        let x_1220 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1220.x, x_1219.x, x_1219.y, x_1220.w);
        let x_1223 : f32 = u_xlat3.y;
        u_xlat3.x = (x_1223 * 255.0f);
        let x_1228 : f32 = u_xlat3.x;
        u_xlat3.x = round(x_1228);
        let x_1234 : f32 = u_xlat3.x;
        u_xlati3 = i32(x_1234);
        let x_1238 : f32 = u_xlat4.y;
        let x_1240 : f32 = u_xlat4.y;
        u_xlatb10 = (x_1238 >= -(x_1240));
        let x_1244 : f32 = u_xlat4.y;
        u_xlat17.x = fract(abs(x_1244));
        let x_1249 : bool = u_xlatb10;
        if (x_1249) {
          let x_1254 : f32 = u_xlat17.x;
          x_1250 = x_1254;
        } else {
          let x_1257 : f32 = u_xlat17.x;
          x_1250 = -(x_1257);
        }
        let x_1259 : f32 = x_1250;
        u_xlat10 = x_1259;
        let x_1260 : i32 = u_xlati3;
        if ((x_1260 != 0i)) {
          let x_1266 : f32 = u_xlat4.y;
          x_1262 = x_1266;
        } else {
          let x_1268 : f32 = u_xlat10;
          x_1262 = x_1268;
        }
        let x_1269 : f32 = x_1262;
        u_xlat10 = x_1269;
        let x_1270 : i32 = u_xlati3;
        let x_1274 : vec4<bool> = (vec4<i32>(x_1270, x_1270, x_1270, x_1270) == vec4<i32>(1i, 0i, 2i, 0i));
        let x_1275 : vec2<bool> = vec2<bool>(x_1274.x, x_1274.z);
        let x_1276 : vec3<bool> = u_xlatb3;
        u_xlatb3 = vec3<bool>(x_1275.x, x_1276.y, x_1275.y);
        let x_1278 : f32 = u_xlat10;
        u_xlat24 = x_1278;
        let x_1279 : f32 = u_xlat24;
        u_xlat24 = clamp(x_1279, 0.0f, 1.0f);
        let x_1282 : bool = u_xlatb3.x;
        let x_1283 : f32 = u_xlat24;
        let x_1284 : f32 = u_xlat10;
        u_xlat3.x = select(x_1284, x_1283, x_1282);
        let x_1288 : f32 = u_xlat3.x;
        u_xlat10 = (x_1288 * 0.5f);
        let x_1291 : f32 = u_xlat10;
        let x_1292 : f32 = u_xlat10;
        u_xlatb24 = (x_1291 >= -(x_1292));
        let x_1295 : f32 = u_xlat10;
        u_xlat10 = fract(abs(x_1295));
        let x_1298 : bool = u_xlatb24;
        if (x_1298) {
          let x_1302 : f32 = u_xlat10;
          x_1299 = x_1302;
        } else {
          let x_1304 : f32 = u_xlat10;
          x_1299 = -(x_1304);
        }
        let x_1306 : f32 = x_1299;
        u_xlat10 = x_1306;
        let x_1307 : f32 = u_xlat10;
        let x_1308 : f32 = u_xlat10;
        u_xlat24 = (x_1307 + x_1308);
        let x_1310 : f32 = u_xlat10;
        u_xlatb10 = (0.5f < x_1310);
        let x_1313 : f32 = u_xlat24;
        let x_1314 : f32 = u_xlat24;
        u_xlatb11 = (x_1313 >= -(x_1314));
        let x_1318 : f32 = u_xlat24;
        u_xlat25 = fract(abs(x_1318));
        let x_1321 : bool = u_xlatb11;
        if (x_1321) {
          let x_1325 : f32 = u_xlat25;
          x_1322 = x_1325;
        } else {
          let x_1327 : f32 = u_xlat25;
          x_1322 = -(x_1327);
        }
        let x_1329 : f32 = x_1322;
        u_xlat11.x = x_1329;
        let x_1332 : f32 = u_xlat11.x;
        u_xlat11.x = (-(x_1332) + 1.0f);
        let x_1336 : bool = u_xlatb10;
        if (x_1336) {
          let x_1341 : f32 = u_xlat11.x;
          x_1337 = x_1341;
        } else {
          let x_1343 : f32 = u_xlat24;
          x_1337 = x_1343;
        }
        let x_1344 : f32 = x_1337;
        u_xlat10 = x_1344;
        let x_1346 : bool = u_xlatb3.z;
        if (x_1346) {
          let x_1350 : f32 = u_xlat10;
          x_1347 = x_1350;
        } else {
          let x_1353 : f32 = u_xlat3.x;
          x_1347 = x_1353;
        }
        let x_1354 : f32 = x_1347;
        u_xlat4.x = x_1354;
        let x_1357 : f32 = x_595.x_GradientSettingsTex_TexelSize.x;
        u_xlat16.x = x_1357;
        let x_1359 : vec4<f32> = u_xlat2;
        let x_1362 : vec4<f32> = x_595.x_GradientSettingsTex_TexelSize;
        let x_1365 : vec2<f32> = u_xlat16;
        let x_1366 : vec2<f32> = ((vec2<f32>(x_1359.x, x_1359.y) * vec2<f32>(x_1362.x, x_1362.y)) + x_1365);
        let x_1367 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1372 : vec4<f32> = u_xlat2;
        let x_1374 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1372.x, x_1372.y), 0.0f);
        u_xlat3 = x_1374;
        let x_1375 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_1375.y, x_1375.w, x_1375.x, x_1375.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1380 : vec4<f32> = u_xlat3;
        let x_1382 : vec4<f32> = u_xlat3;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) + vec2<f32>(x_1382.z, x_1382.w));
        let x_1385 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec4<f32> = u_xlat2;
        let x_1389 : vec2<f32> = (vec2<f32>(x_1387.x, x_1387.y) + vec2<f32>(0.5f, 0.5f));
        let x_1390 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1392 : vec2<f32> = u_xlat16;
        let x_1394 : vec3<f32> = u_xlat7;
        let x_1396 : vec2<f32> = ((x_1392 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_1394.x, x_1394.z));
        let x_1397 : vec3<f32> = u_xlat7;
        u_xlat7 = vec3<f32>(x_1396.x, x_1397.y, x_1396.y);
        let x_1402 : vec3<f32> = u_xlat7;
        let x_1404 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1402.x, x_1402.z), 0.0f);
        u_xlat2 = x_1404;
        let x_1405 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_1405.y, x_1405.w, x_1405.x, x_1405.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1408 : vec4<f32> = u_xlat2;
        let x_1410 : vec4<f32> = u_xlat2;
        let x_1412 : vec2<f32> = (vec2<f32>(x_1408.x, x_1408.y) + vec2<f32>(x_1410.z, x_1410.w));
        let x_1413 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1413.x, x_1413.y, x_1412.x, x_1412.y);
        let x_1415 : vec4<f32> = u_xlat3;
        let x_1416 : u32 = u_xlatu0;
        let x_1419 : vec4<f32> = x_595.x_TextureInfo[bitcast<i32>(x_1416)];
        u_xlat2 = (x_1415 * vec4<f32>(x_1419.y, x_1419.z, x_1419.y, x_1419.z));
        let x_1422 : vec4<f32> = u_xlat4;
        let x_1424 : vec4<f32> = u_xlat2;
        let x_1427 : vec4<f32> = u_xlat2;
        u_xlat0 = ((vec2<f32>(x_1422.x, x_1422.z) * vec2<f32>(x_1424.z, x_1424.w)) + vec2<f32>(x_1427.x, x_1427.y));
        let x_1431 : f32 = vs_TEXCOORD1.y;
        u_xlatb21 = (x_1431 < 4.0f);
        let x_1433 : bool = u_xlatb21;
        if (x_1433) {
          let x_1437 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_1437 < 2.0f);
          let x_1439 : bool = u_xlatb21;
          if (x_1439) {
            let x_1443 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1443 < 1.0f);
            let x_1445 : bool = u_xlatb21;
            if (x_1445) {
              let x_1451 : vec2<f32> = u_xlat0;
              let x_1452 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, x_1451);
              u_xlat2 = x_1452;
            } else {
              let x_1457 : vec2<f32> = u_xlat0;
              let x_1458 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, x_1457);
              u_xlat2 = x_1458;
            }
          } else {
            let x_1461 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1461 < 3.0f);
            let x_1463 : bool = u_xlatb21;
            if (x_1463) {
              let x_1469 : vec2<f32> = u_xlat0;
              let x_1470 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, x_1469);
              u_xlat2 = x_1470;
            } else {
              let x_1475 : vec2<f32> = u_xlat0;
              let x_1476 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, x_1475);
              u_xlat2 = x_1476;
            }
          }
        } else {
          let x_1479 : f32 = vs_TEXCOORD1.y;
          u_xlatb21 = (x_1479 < 6.0f);
          let x_1481 : bool = u_xlatb21;
          if (x_1481) {
            let x_1485 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1485 < 5.0f);
            let x_1487 : bool = u_xlatb21;
            if (x_1487) {
              let x_1493 : vec2<f32> = u_xlat0;
              let x_1494 : vec4<f32> = textureSample(x_Texture4, sampler_Texture4, x_1493);
              u_xlat2 = x_1494;
            } else {
              let x_1499 : vec2<f32> = u_xlat0;
              let x_1500 : vec4<f32> = textureSample(x_Texture5, sampler_Texture5, x_1499);
              u_xlat2 = x_1500;
            }
          } else {
            let x_1503 : f32 = vs_TEXCOORD1.y;
            u_xlatb21 = (x_1503 < 7.0f);
            let x_1505 : bool = u_xlatb21;
            if (x_1505) {
              let x_1511 : vec2<f32> = u_xlat0;
              let x_1512 : vec4<f32> = textureSample(x_Texture6, sampler_Texture6, x_1511);
              u_xlat2 = x_1512;
            } else {
              let x_1517 : vec2<f32> = u_xlat0;
              let x_1518 : vec4<f32> = textureSample(x_Texture7, sampler_Texture7, x_1517);
              u_xlat2 = x_1518;
            }
          }
        }
        let x_1519 : vec4<f32> = u_xlat2;
        let x_1521 : vec4<f32> = vs_COLOR0;
        u_xlat1 = (vec4<f32>(x_1519.w, x_1519.x, x_1519.y, x_1519.z) * vec4<f32>(x_1521.w, x_1521.x, x_1521.y, x_1521.z));
        let x_1524 : vec4<f32> = u_xlat1;
        let x_1525 : vec3<f32> = vec3<f32>(x_1524.y, x_1524.z, x_1524.w);
        let x_1526 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
      }
      u_xlat14 = 1.0f;
    }
  }
  let x_1528 : vec4<f32> = vs_TEXCOORD0;
  let x_1533 : vec4<bool> = (abs(vec4<f32>(x_1528.z, x_1528.w, x_1528.z, x_1528.z)) < vec4<f32>(1.000100017f, 1.000100017f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_1533.x, x_1533.y);
  let x_1536 : bool = u_xlatb0.x;
  let x_1538 : bool = u_xlatb0.y;
  u_xlatb0.x = (x_1536 & x_1538);
  let x_1542 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_1542);
  let x_1546 : f32 = u_xlat0.x;
  let x_1547 : f32 = u_xlat14;
  u_xlat7.x = (x_1546 * x_1547);
  let x_1550 : f32 = u_xlat14;
  let x_1552 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1550 * x_1552) + -0.003f);
  let x_1558 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1558 < 0.0f);
  let x_1562 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_1562) * -1i) != 0i)) {
    discard;
  }
  let x_1571 : f32 = u_xlat7.x;
  let x_1573 : f32 = u_xlat1.x;
  SV_Target0.w = (x_1571 * x_1573);
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

