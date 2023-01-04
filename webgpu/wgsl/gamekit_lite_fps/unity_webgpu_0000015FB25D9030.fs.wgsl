type Arr = array<vec4<f32>, 8u>;

type Arr_1 = array<vec4<f32>, 20u>;

struct PGlobals {
  x_GradientSettingsTex_TexelSize : vec4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
  x_ClipRects : Arr_1,
}

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat14 : f32;

@group(0) @binding(1) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShaderInfoTex : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb2 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(2) var x_Texture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_Texture0 : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Texture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Texture1 : sampler;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_Texture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_Texture2 : sampler;

@group(0) @binding(5) var x_Texture3 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Texture3 : sampler;

var<private> u_xlatb7 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatu16 : u32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_512 : PGlobals;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatu23 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat0 : vec2<f32>;

var<private> u_xlatu0 : u32;

@group(0) @binding(6) var x_GradientSettingsTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GradientSettingsTex : sampler;

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

var<private> u_xlatb14 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_36 : f32;
  var x_821 : f32;
  var x_965 : f32;
  var x_995 : f32;
  var x_1004 : f32;
  var x_1017 : vec2<f32>;
  var x_1055 : f32;
  var x_1067 : f32;
  var x_1104 : f32;
  var x_1127 : f32;
  var x_1142 : f32;
  var x_1152 : f32;
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
  let x_58 : vec4<f32> = vs_TEXCOORD2;
  let x_61 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_58.z, x_58.w), 0.0f);
  u_xlat14 = x_61.w;
  let x_65 : f32 = vs_TEXCOORD1.x;
  u_xlatb21 = !((x_65 == 2.0f));
  let x_67 : bool = u_xlatb21;
  let x_69 : bool = u_xlatb0.x;
  u_xlatb21 = (x_67 & x_69);
  let x_71 : bool = u_xlatb21;
  if (x_71) {
    let x_81 : vec2<f32> = vs_TEXCOORD3;
    let x_82 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_81, 0.0f);
    u_xlat1 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  } else {
    let x_85 : f32 = u_xlat14;
    let x_88 : f32 = vs_COLOR0.w;
    u_xlat1.x = (x_85 * x_88);
    let x_92 : vec4<f32> = vs_COLOR0;
    let x_93 : vec3<f32> = vec3<f32>(x_92.x, x_92.y, x_92.z);
    let x_94 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_94.x, x_93.x, x_93.y, x_93.z);
  }
  let x_97 : f32 = vs_TEXCOORD1.x;
  u_xlatb21 = (x_97 == 1.0f);
  let x_100 : bool = u_xlatb21;
  if (x_100) {
    let x_105 : f32 = u_xlat7.x;
    u_xlatb21 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_105, x_105, x_105, x_105))));
    let x_110 : bool = u_xlatb21;
    if (x_110) {
      let x_117 : vec4<f32> = vs_TEXCOORD4;
      let x_119 : vec4<bool> = (vec4<f32>(-9999.0f, -9999.0f, 0.0f, 0.0f) < vec4<f32>(x_117.x, x_117.z, x_117.x, x_117.x));
      u_xlatb2 = vec2<bool>(x_119.x, x_119.y);
      let x_122 : bool = u_xlatb2.x;
      if (x_122) {
        let x_126 : vec4<f32> = vs_TEXCOORD4;
        let x_128 : vec4<f32> = vs_TEXCOORD4;
        u_xlat21 = dot(vec2<f32>(x_126.x, x_126.y), vec2<f32>(x_128.x, x_128.y));
        let x_131 : f32 = u_xlat21;
        u_xlat21 = sqrt(x_131);
        let x_133 : f32 = u_xlat21;
        u_xlat21 = (x_133 + -1.0f);
        let x_137 : f32 = u_xlat21;
        u_xlat2.x = dpdxCoarse(x_137);
        let x_141 : f32 = u_xlat21;
        u_xlat16.x = dpdyCoarse(x_141);
        let x_145 : f32 = u_xlat16.x;
        let x_148 : f32 = u_xlat2.x;
        u_xlat2.x = (abs(x_145) + abs(x_148));
        let x_152 : f32 = u_xlat21;
        let x_154 : f32 = u_xlat2.x;
        u_xlat21 = (x_152 / x_154);
        let x_156 : f32 = u_xlat21;
        u_xlat21 = (-(x_156) + 0.5f);
        let x_160 : f32 = u_xlat21;
        u_xlat21 = clamp(x_160, 0.0f, 1.0f);
      } else {
        u_xlat21 = 1.0f;
      }
      let x_165 : bool = u_xlatb2.y;
      if (x_165) {
        let x_168 : vec4<f32> = vs_TEXCOORD4;
        let x_170 : vec4<f32> = vs_TEXCOORD4;
        u_xlat2.x = dot(vec2<f32>(x_168.z, x_168.w), vec2<f32>(x_170.z, x_170.w));
        let x_175 : f32 = u_xlat2.x;
        u_xlat2.x = sqrt(x_175);
        let x_179 : f32 = u_xlat2.x;
        u_xlat2.x = (x_179 + -1.0f);
        let x_184 : f32 = u_xlat2.x;
        u_xlat9 = dpdxCoarse(x_184);
        let x_187 : f32 = u_xlat2.x;
        u_xlat16.x = dpdyCoarse(x_187);
        let x_191 : f32 = u_xlat16.x;
        let x_193 : f32 = u_xlat9;
        u_xlat9 = (abs(x_191) + abs(x_193));
        let x_197 : f32 = u_xlat2.x;
        let x_198 : f32 = u_xlat9;
        u_xlat2.x = (x_197 / x_198);
        let x_202 : f32 = u_xlat2.x;
        u_xlat2.x = (-(x_202) + 0.5f);
        let x_207 : f32 = u_xlat2.x;
        u_xlat2.x = clamp(x_207, 0.0f, 1.0f);
        let x_211 : f32 = u_xlat2.x;
        u_xlat2.x = (-(x_211) + 1.0f);
        let x_215 : f32 = u_xlat21;
        let x_217 : f32 = u_xlat2.x;
        u_xlat21 = (x_215 * x_217);
      }
    } else {
      u_xlat21 = 1.0f;
    }
    let x_222 : vec4<f32> = u_xlat1;
    let x_223 : vec3<f32> = vec3<f32>(x_222.y, x_222.z, x_222.w);
    let x_224 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  } else {
    let x_228 : f32 = vs_TEXCOORD1.x;
    u_xlatb2.x = (x_228 == 3.0f);
    let x_233 : bool = u_xlatb2.x;
    if (x_233) {
      let x_237 : f32 = vs_TEXCOORD1.y;
      u_xlatb2.x = (x_237 < 2.0f);
      let x_241 : bool = u_xlatb2.x;
      if (x_241) {
        let x_245 : f32 = vs_TEXCOORD1.y;
        u_xlatb2.x = (x_245 < 1.0f);
        let x_249 : bool = u_xlatb2.x;
        if (x_249) {
          let x_258 : vec4<f32> = vs_TEXCOORD0;
          let x_260 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_258.x, x_258.y));
          u_xlat2 = x_260;
        } else {
          let x_267 : vec4<f32> = vs_TEXCOORD0;
          let x_269 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_267.x, x_267.y));
          u_xlat2 = x_269;
        }
      } else {
        let x_275 : f32 = vs_TEXCOORD1.y;
        u_xlatb3.x = (x_275 < 3.0f);
        let x_279 : bool = u_xlatb3.x;
        if (x_279) {
          let x_287 : vec4<f32> = vs_TEXCOORD0;
          let x_289 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_287.x, x_287.y));
          u_xlat2 = x_289;
        } else {
          let x_296 : vec4<f32> = vs_TEXCOORD0;
          let x_298 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_296.x, x_296.y));
          u_xlat2 = x_298;
        }
      }
      let x_299 : vec4<f32> = u_xlat1;
      let x_300 : vec4<f32> = u_xlat2;
      u_xlat1 = (x_299 * vec4<f32>(x_300.w, x_300.x, x_300.y, x_300.z));
      let x_305 : f32 = u_xlat7.x;
      u_xlatb7 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_305, x_305, x_305, x_305))));
      let x_309 : bool = u_xlatb7;
      if (x_309) {
        let x_312 : vec4<f32> = vs_TEXCOORD4;
        let x_314 : vec4<bool> = (vec4<f32>(-9999.0f, -9999.0f, 0.0f, 0.0f) < vec4<f32>(x_312.x, x_312.z, x_312.x, x_312.x));
        u_xlatb2 = vec2<bool>(x_314.x, x_314.y);
        let x_317 : bool = u_xlatb2.x;
        if (x_317) {
          let x_320 : vec4<f32> = vs_TEXCOORD4;
          let x_322 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7.x = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
          let x_327 : f32 = u_xlat7.x;
          u_xlat7.x = sqrt(x_327);
          let x_331 : f32 = u_xlat7.x;
          u_xlat7.x = (x_331 + -1.0f);
          let x_335 : f32 = u_xlat7.x;
          u_xlat2.x = dpdxCoarse(x_335);
          let x_339 : f32 = u_xlat7.x;
          u_xlat16.x = dpdyCoarse(x_339);
          let x_343 : f32 = u_xlat16.x;
          let x_346 : f32 = u_xlat2.x;
          u_xlat2.x = (abs(x_343) + abs(x_346));
          let x_351 : f32 = u_xlat7.x;
          let x_353 : f32 = u_xlat2.x;
          u_xlat7.x = (x_351 / x_353);
          let x_357 : f32 = u_xlat7.x;
          u_xlat21 = (-(x_357) + 0.5f);
          let x_360 : f32 = u_xlat21;
          u_xlat21 = clamp(x_360, 0.0f, 1.0f);
        } else {
          u_xlat21 = 1.0f;
        }
        let x_364 : bool = u_xlatb2.y;
        if (x_364) {
          let x_367 : vec4<f32> = vs_TEXCOORD4;
          let x_369 : vec4<f32> = vs_TEXCOORD4;
          u_xlat7.x = dot(vec2<f32>(x_367.z, x_367.w), vec2<f32>(x_369.z, x_369.w));
          let x_374 : f32 = u_xlat7.x;
          u_xlat7.x = sqrt(x_374);
          let x_378 : f32 = u_xlat7.x;
          u_xlat7.x = (x_378 + -1.0f);
          let x_382 : f32 = u_xlat7.x;
          u_xlat2.x = dpdxCoarse(x_382);
          let x_386 : f32 = u_xlat7.x;
          u_xlat9 = dpdyCoarse(x_386);
          let x_388 : f32 = u_xlat9;
          let x_391 : f32 = u_xlat2.x;
          u_xlat2.x = (abs(x_388) + abs(x_391));
          let x_396 : f32 = u_xlat7.x;
          let x_398 : f32 = u_xlat2.x;
          u_xlat7.x = (x_396 / x_398);
          let x_402 : f32 = u_xlat7.x;
          u_xlat7.x = (-(x_402) + 0.5f);
          let x_407 : f32 = u_xlat7.x;
          u_xlat7.x = clamp(x_407, 0.0f, 1.0f);
          let x_411 : f32 = u_xlat7.x;
          u_xlat7.x = (-(x_411) + 1.0f);
          let x_416 : f32 = u_xlat7.x;
          let x_417 : f32 = u_xlat21;
          u_xlat21 = (x_416 * x_417);
        }
      } else {
        u_xlat21 = 1.0f;
      }
      let x_420 : vec4<f32> = u_xlat1;
      let x_421 : vec3<f32> = vec3<f32>(x_420.y, x_420.z, x_420.w);
      let x_422 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    } else {
      let x_426 : f32 = vs_TEXCOORD1.x;
      u_xlatb7 = (x_426 == 2.0f);
      let x_428 : bool = u_xlatb7;
      if (x_428) {
        let x_432 : f32 = vs_TEXCOORD1.y;
        u_xlatb7 = (x_432 < 2.0f);
        let x_434 : bool = u_xlatb7;
        if (x_434) {
          let x_438 : f32 = vs_TEXCOORD1.y;
          u_xlatb2.x = (x_438 < 1.0f);
          let x_442 : bool = u_xlatb2.x;
          if (x_442) {
            let x_448 : vec4<f32> = vs_TEXCOORD0;
            let x_450 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_448.x, x_448.y));
            u_xlat2.x = x_450.w;
          } else {
            let x_457 : vec4<f32> = vs_TEXCOORD0;
            let x_459 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_457.x, x_457.y));
            u_xlat2.x = x_459.w;
          }
        } else {
          let x_465 : f32 = vs_TEXCOORD1.y;
          u_xlatb16 = (x_465 < 3.0f);
          let x_467 : bool = u_xlatb16;
          if (x_467) {
            let x_473 : vec4<f32> = vs_TEXCOORD0;
            let x_475 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_473.x, x_473.y));
            u_xlat2.x = x_475.w;
          } else {
            let x_482 : vec4<f32> = vs_TEXCOORD0;
            let x_484 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_482.x, x_482.y));
            u_xlat2.x = x_484.w;
          }
        }
        let x_488 : f32 = vs_TEXCOORD1.y;
        let x_490 : f32 = vs_TEXCOORD1.y;
        u_xlat16.x = (x_488 + x_490);
        let x_496 : f32 = u_xlat16.x;
        u_xlatu16 = u32(x_496);
        let x_499 : vec2<f32> = vs_TEXCOORD3;
        u_xlat3 = (vec4<f32>(x_499.x, x_499.y, x_499.x, x_499.y) + vec4<f32>(0.5f, 3.5f, 0.5f, 1.5f));
        let x_505 : vec4<f32> = u_xlat3;
        let x_517 : vec4<f32> = x_512.x_ShaderInfoTex_TexelSize;
        u_xlat3 = (x_505 * vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y));
        let x_524 : vec4<f32> = u_xlat3;
        let x_526 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_524.x, x_524.y), 0.0f);
        u_xlat4 = x_526;
        let x_527 : vec4<f32> = u_xlat4;
        let x_529 : u32 = u_xlatu16;
        let x_532 : vec4<f32> = x_512.x_TextureInfo[bitcast<i32>(x_529)];
        u_xlat4 = (x_527 * vec4<f32>(x_532.w, x_532.w, x_532.w, x_532.w));
        let x_538 : f32 = u_xlat4.w;
        u_xlat5.y = (x_538 * 0.25f);
        let x_544 : f32 = vs_TEXCOORD1.y;
        u_xlat23 = ((x_544 * 2.0f) + 1.0f);
        let x_548 : f32 = u_xlat23;
        u_xlatu23 = u32(x_548);
        let x_550 : vec4<f32> = u_xlat4;
        let x_552 : u32 = u_xlatu16;
        let x_555 : vec4<f32> = x_512.x_TextureInfo[bitcast<i32>(x_552)];
        let x_558 : vec4<f32> = vs_TEXCOORD0;
        let x_560 : vec2<f32> = ((vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_555.y, x_555.y)) + vec2<f32>(x_558.x, x_558.y));
        let x_561 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
        let x_563 : bool = u_xlatb7;
        if (x_563) {
          let x_567 : f32 = vs_TEXCOORD1.y;
          u_xlatb7 = (x_567 < 1.0f);
          let x_569 : bool = u_xlatb7;
          if (x_569) {
            let x_575 : vec4<f32> = u_xlat3;
            let x_577 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, vec2<f32>(x_575.x, x_575.y));
            u_xlat2.y = x_577.w;
          } else {
            let x_584 : vec4<f32> = u_xlat3;
            let x_586 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, vec2<f32>(x_584.x, x_584.y));
            u_xlat2.y = x_586.w;
          }
        } else {
          let x_591 : f32 = vs_TEXCOORD1.y;
          u_xlatb7 = (x_591 < 3.0f);
          let x_593 : bool = u_xlatb7;
          if (x_593) {
            let x_599 : vec4<f32> = u_xlat3;
            let x_601 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, vec2<f32>(x_599.x, x_599.y));
            u_xlat2.y = x_601.w;
          } else {
            let x_608 : vec4<f32> = u_xlat3;
            let x_610 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, vec2<f32>(x_608.x, x_608.y));
            u_xlat2.y = x_610.w;
          }
        }
        let x_614 : f32 = u_xlat5.y;
        u_xlat5.x = -(x_614);
        u_xlat5.z = 0.0f;
        let x_619 : vec3<f32> = u_xlat5;
        let x_620 : vec4<f32> = vs_TEXCOORD4;
        u_xlat5 = (x_619 + vec3<f32>(x_620.x, x_620.x, x_620.x));
        let x_624 : f32 = vs_TEXCOORD0.y;
        u_xlat7.x = dpdxCoarse(x_624);
        let x_628 : f32 = vs_TEXCOORD0.y;
        u_xlat3.x = dpdyCoarse(x_628);
        let x_632 : f32 = u_xlat7.x;
        let x_635 : f32 = u_xlat3.x;
        u_xlat7.x = (abs(x_632) + abs(x_635));
        let x_640 : vec4<f32> = u_xlat2;
        u_xlat6 = (vec3<f32>(x_640.x, x_640.x, x_640.y) + vec3<f32>(-0.5f, -0.5f, -0.5f));
        let x_645 : vec3<f32> = u_xlat6;
        let x_646 : u32 = u_xlatu16;
        let x_649 : vec4<f32> = x_512.x_TextureInfo[bitcast<i32>(x_646)];
        let x_652 : vec3<f32> = u_xlat5;
        let x_653 : vec3<f32> = ((x_645 * vec3<f32>(x_649.w, x_649.w, x_649.w)) + x_652);
        let x_654 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat2;
        let x_658 : vec4<f32> = u_xlat2;
        let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) + vec3<f32>(x_658.x, x_658.y, x_658.z));
        let x_661 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        u_xlat4.x = 0.0f;
        u_xlat4.y = 0.0f;
        let x_665 : u32 = u_xlatu23;
        let x_668 : vec4<f32> = x_512.x_TextureInfo[bitcast<i32>(x_665)];
        let x_670 : vec2<f32> = u_xlat7;
        let x_673 : vec4<f32> = u_xlat4;
        let x_675 : vec3<f32> = ((vec3<f32>(x_668.y, x_668.y, x_668.y) * vec3<f32>(x_670.x, x_670.x, x_670.x)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
        let x_676 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat2;
        let x_680 : vec4<f32> = u_xlat4;
        let x_682 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) / vec3<f32>(x_680.x, x_680.y, x_680.z));
        let x_683 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat2;
        let x_688 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(0.5f, 0.5f, 0.5f));
        let x_689 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat2;
        let x_695 : vec3<f32> = clamp(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
        let x_696 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_699 : bool = u_xlatb0.x;
        if (x_699) {
          let x_703 : vec2<f32> = vs_TEXCOORD3;
          u_xlat0 = (x_703 + vec2<f32>(0.5f, 0.5f));
          let x_706 : vec2<f32> = u_xlat0;
          let x_708 : vec4<f32> = x_512.x_ShaderInfoTex_TexelSize;
          u_xlat0 = (x_706 * vec2<f32>(x_708.x, x_708.y));
          let x_714 : vec2<f32> = u_xlat0;
          let x_715 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_714, 0.0f);
          u_xlat1 = vec4<f32>(x_715.w, x_715.x, x_715.y, x_715.z);
          let x_717 : f32 = u_xlat14;
          let x_719 : f32 = u_xlat1.x;
          u_xlat1.x = (x_717 * x_719);
        }
        let x_722 : vec4<f32> = u_xlat1;
        let x_724 : vec4<f32> = u_xlat1;
        let x_726 : vec3<f32> = (vec3<f32>(x_722.x, x_722.x, x_722.x) * vec3<f32>(x_724.y, x_724.z, x_724.w));
        let x_727 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_727.x, x_726.x, x_726.y, x_726.z);
        let x_732 : vec4<f32> = u_xlat3;
        let x_734 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_732.z, x_732.w), 0.0f);
        u_xlat3 = x_734;
        let x_735 : f32 = u_xlat14;
        let x_737 : f32 = u_xlat3.w;
        u_xlat4.w = (x_735 * x_737);
        let x_740 : vec4<f32> = u_xlat3;
        let x_742 : vec4<f32> = u_xlat4;
        let x_744 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_742.w, x_742.w, x_742.w));
        let x_745 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat2;
        u_xlat0 = (-(vec2<f32>(x_747.x, x_747.y)) + vec2<f32>(1.0f, 1.0f));
        let x_752 : vec2<f32> = u_xlat0;
        let x_754 : vec4<f32> = u_xlat4;
        u_xlat3 = (vec4<f32>(x_752.x, x_752.x, x_752.x, x_752.x) * x_754);
        let x_756 : vec4<f32> = u_xlat2;
        let x_758 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_756.y, x_756.y, x_756.y, x_756.y) * x_758);
        let x_760 : vec4<f32> = u_xlat1;
        let x_762 : vec4<f32> = u_xlat2;
        let x_765 : vec4<f32> = u_xlat3;
        u_xlat3 = ((vec4<f32>(x_760.y, x_760.z, x_760.w, x_760.x) * vec4<f32>(x_762.x, x_762.x, x_762.x, x_762.x)) + x_765);
        let x_767 : vec2<f32> = vs_TEXCOORD3;
        let x_770 : vec2<f32> = (x_767 + vec2<f32>(0.5f, 2.5f));
        let x_771 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat2;
        let x_776 : vec4<f32> = x_512.x_ShaderInfoTex_TexelSize;
        let x_778 : vec2<f32> = (vec2<f32>(x_773.x, x_773.y) * vec2<f32>(x_776.x, x_776.y));
        let x_779 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_784 : vec4<f32> = u_xlat2;
        let x_786 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_784.x, x_784.y), 0.0f);
        u_xlat4 = x_786;
        let x_787 : f32 = u_xlat14;
        let x_789 : f32 = u_xlat4.w;
        u_xlat14 = (x_787 * x_789);
        let x_792 : f32 = u_xlat2.z;
        let x_793 : f32 = u_xlat14;
        u_xlat2.w = (x_792 * x_793);
        let x_796 : vec4<f32> = u_xlat2;
        let x_798 : vec4<f32> = u_xlat4;
        let x_800 : vec3<f32> = (vec3<f32>(x_796.w, x_796.w, x_796.w) * vec3<f32>(x_798.x, x_798.y, x_798.z));
        let x_801 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec2<f32> = u_xlat0;
        let x_805 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_803.x, x_803.x, x_803.x, x_803.x) * x_805);
        let x_807 : vec4<f32> = u_xlat2;
        let x_809 : vec2<f32> = u_xlat0;
        let x_812 : vec4<f32> = u_xlat3;
        u_xlat1 = ((vec4<f32>(x_807.w, x_807.x, x_807.y, x_807.z) * vec4<f32>(x_809.y, x_809.y, x_809.y, x_809.y)) + vec4<f32>(x_812.w, x_812.x, x_812.y, x_812.z));
        let x_816 : f32 = u_xlat1.x;
        u_xlatb0.x = (0.0f < x_816);
        let x_820 : bool = u_xlatb0.x;
        if (x_820) {
          let x_825 : f32 = u_xlat1.x;
          x_821 = x_825;
        } else {
          x_821 = 1.0f;
        }
        let x_827 : f32 = x_821;
        u_xlat0.x = x_827;
        let x_829 : vec4<f32> = u_xlat1;
        let x_831 : vec2<f32> = u_xlat0;
        let x_833 : vec3<f32> = (vec3<f32>(x_829.y, x_829.z, x_829.w) / vec3<f32>(x_831.x, x_831.x, x_831.x));
        let x_834 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
      } else {
        let x_838 : f32 = vs_TEXCOORD1.y;
        let x_840 : f32 = vs_TEXCOORD1.y;
        u_xlat0.x = (x_838 + x_840);
        let x_845 : f32 = u_xlat0.x;
        u_xlatu0 = u32(x_845);
        u_xlat2.x = 0.5f;
        u_xlat16.y = 0.0f;
        let x_850 : f32 = vs_TEXCOORD1.z;
        u_xlat2.y = (x_850 + 0.5f);
        let x_853 : vec4<f32> = u_xlat2;
        let x_857 : vec4<f32> = x_512.x_GradientSettingsTex_TexelSize;
        u_xlat7 = (vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_857.x, x_857.y));
        let x_865 : vec2<f32> = u_xlat7;
        let x_866 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, x_865, 0.0f);
        u_xlat3 = x_866;
        let x_868 : f32 = u_xlat3.x;
        u_xlatb3.x = (0.0f < x_868);
        let x_872 : vec4<f32> = u_xlat3;
        u_xlat17 = (vec2<f32>(x_872.z, x_872.w) + vec2<f32>(-0.5f, -0.5f));
        let x_876 : vec2<f32> = u_xlat17;
        let x_877 : vec2<f32> = u_xlat17;
        u_xlat17 = (x_876 + x_877);
        let x_879 : vec4<f32> = vs_TEXCOORD0;
        let x_881 : vec2<f32> = (vec2<f32>(x_879.x, x_879.y) + vec2<f32>(-0.5f, -0.5f));
        let x_882 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
        let x_884 : vec4<f32> = u_xlat4;
        let x_888 : vec2<f32> = u_xlat17;
        let x_890 : vec2<f32> = ((vec2<f32>(x_884.x, x_884.y) * vec2<f32>(2.0f, 2.0f)) + -(x_888));
        let x_891 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
        let x_894 : vec4<f32> = u_xlat4;
        let x_896 : vec4<f32> = u_xlat4;
        u_xlat18.x = dot(vec2<f32>(x_894.x, x_894.y), vec2<f32>(x_896.x, x_896.y));
        let x_901 : f32 = u_xlat18.x;
        u_xlat18.x = inverseSqrt(x_901);
        let x_904 : vec2<f32> = u_xlat18;
        let x_906 : vec4<f32> = u_xlat4;
        u_xlat18 = (vec2<f32>(x_904.x, x_904.x) * vec2<f32>(x_906.x, x_906.y));
        let x_909 : vec2<f32> = u_xlat17;
        let x_911 : vec2<f32> = u_xlat18;
        u_xlat5.x = dot(-(x_909), x_911);
        let x_914 : vec2<f32> = u_xlat17;
        let x_915 : vec2<f32> = u_xlat17;
        u_xlat17.x = dot(x_914, x_915);
        let x_919 : f32 = u_xlat5.x;
        let x_922 : f32 = u_xlat5.x;
        let x_925 : f32 = u_xlat17.x;
        u_xlat17.x = ((-(x_919) * x_922) + x_925);
        let x_929 : f32 = u_xlat17.x;
        u_xlat17.x = (-(x_929) + 1.0f);
        let x_934 : f32 = u_xlat17.x;
        u_xlat17.x = sqrt(x_934);
        let x_939 : f32 = u_xlat17.x;
        let x_942 : f32 = u_xlat5.x;
        u_xlat24 = (-(x_939) + x_942);
        let x_945 : f32 = u_xlat17.x;
        let x_947 : f32 = u_xlat5.x;
        u_xlat17.x = (x_945 + x_947);
        let x_951 : f32 = u_xlat17.x;
        let x_952 : f32 = u_xlat24;
        u_xlat5.x = min(x_951, x_952);
        let x_957 : f32 = u_xlat5.x;
        u_xlatb12 = (x_957 < 0.0f);
        let x_960 : f32 = u_xlat17.x;
        let x_961 : f32 = u_xlat24;
        u_xlat17.x = max(x_960, x_961);
        let x_964 : bool = u_xlatb12;
        if (x_964) {
          let x_969 : f32 = u_xlat17.x;
          x_965 = x_969;
        } else {
          let x_972 : f32 = u_xlat5.x;
          x_965 = x_972;
        }
        let x_973 : f32 = x_965;
        u_xlat17.x = x_973;
        let x_975 : vec2<f32> = u_xlat17;
        let x_977 : vec2<f32> = u_xlat18;
        u_xlat17 = (vec2<f32>(x_975.x, x_975.x) * x_977);
        let x_982 : f32 = u_xlat17.x;
        u_xlatb18 = (0.0001f >= abs(x_982));
        let x_987 : f32 = u_xlat17.y;
        u_xlatb25 = (0.0001f < abs(x_987));
        let x_990 : vec4<f32> = u_xlat4;
        let x_992 : vec2<f32> = u_xlat17;
        u_xlat17 = (vec2<f32>(x_990.x, x_990.y) / x_992);
        let x_994 : bool = u_xlatb25;
        if (x_994) {
          let x_999 : f32 = u_xlat17.y;
          x_995 = x_999;
        } else {
          x_995 = 0.0f;
        }
        let x_1001 : f32 = x_995;
        u_xlat24 = x_1001;
        let x_1003 : bool = u_xlatb18;
        if (x_1003) {
          let x_1007 : f32 = u_xlat24;
          x_1004 = x_1007;
        } else {
          let x_1010 : f32 = u_xlat17.x;
          x_1004 = x_1010;
        }
        let x_1011 : f32 = x_1004;
        u_xlat11.x = x_1011;
        u_xlat11.y = 0.0f;
        let x_1015 : bool = u_xlatb3.x;
        if (x_1015) {
          let x_1020 : vec2<f32> = u_xlat11;
          x_1017 = x_1020;
        } else {
          let x_1022 : vec4<f32> = vs_TEXCOORD0;
          x_1017 = vec2<f32>(x_1022.x, x_1022.y);
        }
        let x_1024 : vec2<f32> = x_1017;
        let x_1025 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1025.x, x_1024.x, x_1024.y, x_1025.w);
        let x_1028 : f32 = u_xlat3.y;
        u_xlat3.x = (x_1028 * 255.0f);
        let x_1033 : f32 = u_xlat3.x;
        u_xlat3.x = round(x_1033);
        let x_1039 : f32 = u_xlat3.x;
        u_xlati3 = i32(x_1039);
        let x_1043 : f32 = u_xlat4.y;
        let x_1045 : f32 = u_xlat4.y;
        u_xlatb10 = (x_1043 >= -(x_1045));
        let x_1049 : f32 = u_xlat4.y;
        u_xlat17.x = fract(abs(x_1049));
        let x_1054 : bool = u_xlatb10;
        if (x_1054) {
          let x_1059 : f32 = u_xlat17.x;
          x_1055 = x_1059;
        } else {
          let x_1062 : f32 = u_xlat17.x;
          x_1055 = -(x_1062);
        }
        let x_1064 : f32 = x_1055;
        u_xlat10 = x_1064;
        let x_1065 : i32 = u_xlati3;
        if ((x_1065 != 0i)) {
          let x_1071 : f32 = u_xlat4.y;
          x_1067 = x_1071;
        } else {
          let x_1073 : f32 = u_xlat10;
          x_1067 = x_1073;
        }
        let x_1074 : f32 = x_1067;
        u_xlat10 = x_1074;
        let x_1075 : i32 = u_xlati3;
        let x_1079 : vec4<bool> = (vec4<i32>(x_1075, x_1075, x_1075, x_1075) == vec4<i32>(1i, 0i, 2i, 0i));
        let x_1080 : vec2<bool> = vec2<bool>(x_1079.x, x_1079.z);
        let x_1081 : vec3<bool> = u_xlatb3;
        u_xlatb3 = vec3<bool>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : f32 = u_xlat10;
        u_xlat24 = x_1083;
        let x_1084 : f32 = u_xlat24;
        u_xlat24 = clamp(x_1084, 0.0f, 1.0f);
        let x_1087 : bool = u_xlatb3.x;
        let x_1088 : f32 = u_xlat24;
        let x_1089 : f32 = u_xlat10;
        u_xlat3.x = select(x_1089, x_1088, x_1087);
        let x_1093 : f32 = u_xlat3.x;
        u_xlat10 = (x_1093 * 0.5f);
        let x_1096 : f32 = u_xlat10;
        let x_1097 : f32 = u_xlat10;
        u_xlatb24 = (x_1096 >= -(x_1097));
        let x_1100 : f32 = u_xlat10;
        u_xlat10 = fract(abs(x_1100));
        let x_1103 : bool = u_xlatb24;
        if (x_1103) {
          let x_1107 : f32 = u_xlat10;
          x_1104 = x_1107;
        } else {
          let x_1109 : f32 = u_xlat10;
          x_1104 = -(x_1109);
        }
        let x_1111 : f32 = x_1104;
        u_xlat10 = x_1111;
        let x_1112 : f32 = u_xlat10;
        let x_1113 : f32 = u_xlat10;
        u_xlat24 = (x_1112 + x_1113);
        let x_1115 : f32 = u_xlat10;
        u_xlatb10 = (0.5f < x_1115);
        let x_1118 : f32 = u_xlat24;
        let x_1119 : f32 = u_xlat24;
        u_xlatb11 = (x_1118 >= -(x_1119));
        let x_1123 : f32 = u_xlat24;
        u_xlat25 = fract(abs(x_1123));
        let x_1126 : bool = u_xlatb11;
        if (x_1126) {
          let x_1130 : f32 = u_xlat25;
          x_1127 = x_1130;
        } else {
          let x_1132 : f32 = u_xlat25;
          x_1127 = -(x_1132);
        }
        let x_1134 : f32 = x_1127;
        u_xlat11.x = x_1134;
        let x_1137 : f32 = u_xlat11.x;
        u_xlat11.x = (-(x_1137) + 1.0f);
        let x_1141 : bool = u_xlatb10;
        if (x_1141) {
          let x_1146 : f32 = u_xlat11.x;
          x_1142 = x_1146;
        } else {
          let x_1148 : f32 = u_xlat24;
          x_1142 = x_1148;
        }
        let x_1149 : f32 = x_1142;
        u_xlat10 = x_1149;
        let x_1151 : bool = u_xlatb3.z;
        if (x_1151) {
          let x_1155 : f32 = u_xlat10;
          x_1152 = x_1155;
        } else {
          let x_1158 : f32 = u_xlat3.x;
          x_1152 = x_1158;
        }
        let x_1159 : f32 = x_1152;
        u_xlat4.x = x_1159;
        let x_1163 : f32 = x_512.x_GradientSettingsTex_TexelSize.x;
        u_xlat16.x = x_1163;
        let x_1165 : vec4<f32> = u_xlat2;
        let x_1168 : vec4<f32> = x_512.x_GradientSettingsTex_TexelSize;
        let x_1171 : vec2<f32> = u_xlat16;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(x_1168.x, x_1168.y)) + x_1171);
        let x_1173 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1178 : vec4<f32> = u_xlat2;
        let x_1180 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, vec2<f32>(x_1178.x, x_1178.y), 0.0f);
        u_xlat3 = x_1180;
        let x_1181 : vec4<f32> = u_xlat3;
        u_xlat3 = (vec4<f32>(x_1181.y, x_1181.w, x_1181.x, x_1181.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1186 : vec4<f32> = u_xlat3;
        let x_1188 : vec4<f32> = u_xlat3;
        let x_1190 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.y) + vec2<f32>(x_1188.z, x_1188.w));
        let x_1191 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat2;
        let x_1195 : vec2<f32> = (vec2<f32>(x_1193.x, x_1193.y) + vec2<f32>(0.5f, 0.5f));
        let x_1196 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat16;
        let x_1200 : vec2<f32> = u_xlat7;
        u_xlat7 = ((x_1198 * vec2<f32>(2.0f, 2.0f)) + x_1200);
        let x_1205 : vec2<f32> = u_xlat7;
        let x_1206 : vec4<f32> = textureSampleLevel(x_GradientSettingsTex, sampler_GradientSettingsTex, x_1205, 0.0f);
        u_xlat2 = x_1206;
        let x_1207 : vec4<f32> = u_xlat2;
        u_xlat2 = (vec4<f32>(x_1207.y, x_1207.w, x_1207.x, x_1207.z) * vec4<f32>(255.0f, 255.0f, 65025.0f, 65025.0f));
        let x_1210 : vec4<f32> = u_xlat2;
        let x_1212 : vec4<f32> = u_xlat2;
        let x_1214 : vec2<f32> = (vec2<f32>(x_1210.x, x_1210.y) + vec2<f32>(x_1212.z, x_1212.w));
        let x_1215 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1215.x, x_1215.y, x_1214.x, x_1214.y);
        let x_1217 : vec4<f32> = u_xlat3;
        let x_1218 : u32 = u_xlatu0;
        let x_1221 : vec4<f32> = x_512.x_TextureInfo[bitcast<i32>(x_1218)];
        u_xlat2 = (x_1217 * vec4<f32>(x_1221.y, x_1221.z, x_1221.y, x_1221.z));
        let x_1224 : vec4<f32> = u_xlat4;
        let x_1226 : vec4<f32> = u_xlat2;
        let x_1229 : vec4<f32> = u_xlat2;
        u_xlat0 = ((vec2<f32>(x_1224.x, x_1224.z) * vec2<f32>(x_1226.z, x_1226.w)) + vec2<f32>(x_1229.x, x_1229.y));
        let x_1234 : f32 = vs_TEXCOORD1.y;
        u_xlatb14 = (x_1234 < 2.0f);
        let x_1236 : bool = u_xlatb14;
        if (x_1236) {
          let x_1240 : f32 = vs_TEXCOORD1.y;
          u_xlatb14 = (x_1240 < 1.0f);
          let x_1242 : bool = u_xlatb14;
          if (x_1242) {
            let x_1248 : vec2<f32> = u_xlat0;
            let x_1249 : vec4<f32> = textureSample(x_Texture0, sampler_Texture0, x_1248);
            u_xlat2 = x_1249;
          } else {
            let x_1254 : vec2<f32> = u_xlat0;
            let x_1255 : vec4<f32> = textureSample(x_Texture1, sampler_Texture1, x_1254);
            u_xlat2 = x_1255;
          }
        } else {
          let x_1258 : f32 = vs_TEXCOORD1.y;
          u_xlatb14 = (x_1258 < 3.0f);
          let x_1260 : bool = u_xlatb14;
          if (x_1260) {
            let x_1266 : vec2<f32> = u_xlat0;
            let x_1267 : vec4<f32> = textureSample(x_Texture2, sampler_Texture2, x_1266);
            u_xlat2 = x_1267;
          } else {
            let x_1272 : vec2<f32> = u_xlat0;
            let x_1273 : vec4<f32> = textureSample(x_Texture3, sampler_Texture3, x_1272);
            u_xlat2 = x_1273;
          }
        }
        let x_1274 : vec4<f32> = u_xlat1;
        let x_1275 : vec4<f32> = u_xlat2;
        u_xlat1 = (x_1274 * vec4<f32>(x_1275.w, x_1275.x, x_1275.y, x_1275.z));
        let x_1278 : vec4<f32> = u_xlat1;
        let x_1279 : vec3<f32> = vec3<f32>(x_1278.y, x_1278.z, x_1278.w);
        let x_1280 : vec4<f32> = SV_Target0;
        SV_Target0 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
      }
      u_xlat21 = 1.0f;
    }
  }
  let x_1283 : f32 = vs_TEXCOORD2.x;
  u_xlatu0 = u32(x_1283);
  let x_1285 : vec4<f32> = vs_TEXCOORD0;
  let x_1288 : u32 = u_xlatu0;
  let x_1291 : vec4<f32> = x_512.x_ClipRects[bitcast<i32>(x_1288)];
  let x_1294 : u32 = u_xlatu0;
  let x_1297 : vec4<f32> = x_512.x_ClipRects[bitcast<i32>(x_1294)];
  u_xlat0 = ((vec2<f32>(x_1285.z, x_1285.w) * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1297.z, x_1297.w));
  let x_1300 : vec2<f32> = u_xlat0;
  let x_1305 : vec4<bool> = (abs(vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.x)) < vec4<f32>(1.000100017f, 1.000100017f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_1305.x, x_1305.y);
  let x_1308 : bool = u_xlatb0.x;
  let x_1310 : bool = u_xlatb0.y;
  u_xlatb0.x = (x_1308 & x_1310);
  let x_1314 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_1314);
  let x_1318 : f32 = u_xlat0.x;
  let x_1319 : f32 = u_xlat21;
  u_xlat7.x = (x_1318 * x_1319);
  let x_1322 : f32 = u_xlat21;
  let x_1324 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1322 * x_1324) + -0.003f);
  let x_1330 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1330 < 0.0f);
  let x_1334 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_1334) * -1i) != 0i)) {
    discard;
  }
  let x_1343 : f32 = u_xlat7.x;
  let x_1345 : f32 = u_xlat1.x;
  SV_Target0.w = (x_1343 * x_1345);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

