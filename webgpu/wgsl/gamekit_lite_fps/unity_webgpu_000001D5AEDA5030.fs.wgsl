struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(11) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : vec2<f32>;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(12) var sampler_Gradient : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_303 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_77 : vec4<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_77.z, x_77.w));
  u_xlat16.x = x_79.x;
  let x_84 : f32 = u_xlat16.x;
  u_xlat23 = (-(x_84) + 1.0f);
  let x_88 : f32 = u_xlat22;
  let x_89 : f32 = u_xlat23;
  u_xlat22 = (x_88 * x_89);
  let x_91 : f32 = u_xlat22;
  let x_95 : f32 = x_18.x_NoiseStrength;
  let x_98 : f32 = u_xlat16.x;
  u_xlat22 = ((x_91 * x_95) + x_98);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = (-(x_100) + 1.0f);
  let x_103 : f32 = u_xlat22;
  let x_106 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_103 + -(x_106));
  let x_111 : f32 = x_18.x_EdgeSize;
  u_xlat16.x = (1.0f / -(x_111));
  let x_115 : f32 = u_xlat22;
  let x_117 : f32 = u_xlat16.x;
  u_xlat22 = (x_115 * x_117);
  let x_119 : f32 = u_xlat22;
  u_xlat22 = clamp(x_119, 0.0f, 1.0f);
  let x_122 : f32 = u_xlat22;
  u_xlat16.x = ((x_122 * -2.0f) + 3.0f);
  let x_128 : f32 = u_xlat22;
  let x_129 : f32 = u_xlat22;
  u_xlat22 = (x_128 * x_129);
  let x_137 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_137.z, x_137.w));
  u_xlat3 = vec3<f32>(x_139.x, x_139.y, x_139.z);
  let x_142 : vec3<f32> = u_xlat3;
  let x_146 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_142 * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_155 : vec4<f32> = vs_TEXCOORD0;
  let x_157 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_155.z, x_155.w));
  u_xlat5 = vec3<f32>(x_157.x, x_157.y, x_157.w);
  let x_161 : f32 = u_xlat5.z;
  let x_163 : f32 = u_xlat5.x;
  u_xlat5.x = (x_161 * x_163);
  let x_166 : vec3<f32> = u_xlat5;
  let x_173 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_174 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_173.x, x_173.y, x_174.z);
  let x_176 : vec3<f32> = u_xlat5;
  let x_178 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_176.x, x_176.y), vec2<f32>(x_178.x, x_178.y));
  let x_181 : f32 = u_xlat23;
  u_xlat23 = min(x_181, 1.0f);
  let x_183 : f32 = u_xlat23;
  u_xlat23 = (-(x_183) + 1.0f);
  let x_186 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_186);
  let x_190 : f32 = u_xlat2.x;
  let x_193 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_190 * x_193);
  let x_197 : f32 = u_xlat16.x;
  let x_199 : f32 = u_xlat22;
  let x_202 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_197) * x_199) + -(x_202));
  let x_205 : f32 = u_xlat22;
  u_xlat22 = (x_205 + 1.0f);
  let x_210 : f32 = u_xlat22;
  u_xlatb22 = (x_210 < 0.0f);
  let x_212 : bool = u_xlatb22;
  if (((select(0i, 1i, x_212) * -1i) != 0i)) {
    discard;
  }
  let x_221 : vec3<f32> = vs_TEXCOORD4;
  let x_225 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat16 = (vec2<f32>(x_221.y, x_221.y) * vec2<f32>(x_225.x, x_225.y));
  let x_229 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_231 : vec3<f32> = vs_TEXCOORD4;
  let x_234 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_229.x, x_229.y) * vec2<f32>(x_231.x, x_231.x)) + x_234);
  let x_238 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_240 : vec3<f32> = vs_TEXCOORD4;
  let x_243 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.z, x_240.z)) + x_243);
  let x_245 : vec2<f32> = u_xlat16;
  let x_248 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat16 = (x_245 + vec2<f32>(x_248.x, x_248.y));
  let x_252 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_252 == 1.0f);
  let x_254 : bool = u_xlatb22;
  if (x_254) {
    let x_259 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_259 == 1.0f);
    let x_262 : vec3<f32> = vs_TEXCOORD4;
    let x_266 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_268 : vec3<f32> = (vec3<f32>(x_262.y, x_262.y, x_262.y) * vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_272 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_274 : vec3<f32> = vs_TEXCOORD4;
    let x_277 : vec4<f32> = u_xlat6;
    let x_279 : vec3<f32> = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.x, x_274.x, x_274.x)) + vec3<f32>(x_277.x, x_277.y, x_277.z));
    let x_280 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_283 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_285 : vec3<f32> = vs_TEXCOORD4;
    let x_288 : vec4<f32> = u_xlat6;
    let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.z, x_285.z, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat6;
    let x_296 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_298 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) + vec3<f32>(x_296.x, x_296.y, x_296.z));
    let x_299 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
    let x_301 : bool = u_xlatb22;
    if (x_301) {
      let x_306 : vec4<f32> = u_xlat6;
      x_303 = vec3<f32>(x_306.x, x_306.y, x_306.z);
    } else {
      let x_309 : vec3<f32> = vs_TEXCOORD4;
      x_303 = x_309;
    }
    let x_310 : vec3<f32> = x_303;
    let x_311 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat6;
    let x_317 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_319 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) + -(x_317));
    let x_320 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat6;
    let x_326 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) * x_326);
    let x_328 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_328.x, x_327.x, x_327.y, x_327.z);
    let x_331 : f32 = u_xlat6.y;
    u_xlat22 = ((x_331 * 0.25f) + 0.75f);
    let x_338 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_338 * 0.5f) + 0.75f);
    let x_342 : f32 = u_xlat22;
    let x_343 : f32 = u_xlat24;
    u_xlat6.x = max(x_342, x_343);
    let x_354 : vec4<f32> = u_xlat6;
    let x_356 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_354.x, x_354.z, x_354.w));
    u_xlat6 = x_356;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_363 : vec4<f32> = u_xlat6;
  let x_365 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_363, x_365);
  let x_367 : f32 = u_xlat22;
  u_xlat22 = clamp(x_367, 0.0f, 1.0f);
  let x_374 : vec2<f32> = u_xlat16;
  let x_375 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_374);
  u_xlat16.x = x_375.w;
  let x_378 : f32 = u_xlat22;
  let x_380 : f32 = u_xlat16.x;
  u_xlat22 = (x_378 * x_380);
  let x_383 : vec3<f32> = vs_TEXCOORD1;
  let x_384 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_383, x_384);
  let x_388 : vec3<f32> = vs_TEXCOORD2;
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_388, x_389);
  let x_393 : vec3<f32> = vs_TEXCOORD3;
  let x_394 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_393, x_394);
  let x_397 : vec4<f32> = u_xlat6;
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_404 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_404);
  let x_407 : vec2<f32> = u_xlat16;
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_407.x, x_407.x, x_407.x) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : f32 = u_xlat22;
  let x_416 : vec4<f32> = x_18.x_LightColor0;
  let x_418 : vec3<f32> = (vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat3;
  let x_423 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_421 * vec3<f32>(x_423.x, x_423.y, x_423.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_429 : vec4<f32> = u_xlat2;
  let x_431 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_429.x, x_429.x, x_429.x) * x_431) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_437 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_437) * 0.959999979f) + 0.959999979f);
  let x_442 : f32 = u_xlat22;
  let x_444 : vec3<f32> = u_xlat4;
  let x_445 : vec3<f32> = (vec3<f32>(x_442, x_442, x_442) * x_444);
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_445.x, x_446.y, x_445.y, x_445.z);
  let x_449 : f32 = u_xlat2.y;
  let x_453 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_449) * x_453) + 1.0f);
  let x_456 : vec3<f32> = u_xlat0;
  let x_457 : f32 = u_xlat21;
  let x_461 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_456 * vec3<f32>(x_457, x_457, x_457)) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec3<f32> = u_xlat0;
  let x_465 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_464, x_465);
  let x_467 : f32 = u_xlat21;
  u_xlat21 = max(x_467, 0.001f);
  let x_470 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_470);
  let x_472 : f32 = u_xlat21;
  let x_474 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_472, x_472, x_472) * x_474);
  let x_476 : vec3<f32> = u_xlat5;
  let x_477 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_476, x_477);
  let x_479 : vec3<f32> = u_xlat5;
  let x_481 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_479, vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_486 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_486, 0.0f, 1.0f);
  let x_490 : vec3<f32> = u_xlat5;
  let x_491 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_490, x_491);
  let x_493 : f32 = u_xlat8;
  u_xlat8 = clamp(x_493, 0.0f, 1.0f);
  let x_496 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_498 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_496.x, x_496.y, x_496.z), x_498);
  let x_502 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_502, 0.0f, 1.0f);
  let x_507 : f32 = u_xlat0.x;
  let x_509 : f32 = u_xlat0.x;
  u_xlat7.x = (x_507 * x_509);
  let x_512 : vec3<f32> = u_xlat7;
  let x_514 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_512.x, x_512.x), vec2<f32>(x_514, x_514));
  let x_519 : f32 = u_xlat7.x;
  u_xlat7.x = (x_519 + -0.5f);
  let x_525 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_525) + 1.0f);
  let x_529 : f32 = u_xlat14;
  let x_530 : f32 = u_xlat14;
  u_xlat15 = (x_529 * x_530);
  let x_532 : f32 = u_xlat15;
  let x_533 : f32 = u_xlat15;
  u_xlat15 = (x_532 * x_533);
  let x_535 : f32 = u_xlat14;
  let x_536 : f32 = u_xlat15;
  u_xlat14 = (x_535 * x_536);
  let x_539 : f32 = u_xlat7.x;
  let x_540 : f32 = u_xlat14;
  u_xlat14 = ((x_539 * x_540) + 1.0f);
  let x_543 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_543)) + 1.0f);
  let x_548 : f32 = u_xlat15;
  let x_549 : f32 = u_xlat15;
  u_xlat9 = (x_548 * x_549);
  let x_551 : f32 = u_xlat9;
  let x_552 : f32 = u_xlat9;
  u_xlat9 = (x_551 * x_552);
  let x_554 : f32 = u_xlat15;
  let x_555 : f32 = u_xlat9;
  u_xlat15 = (x_554 * x_555);
  let x_558 : f32 = u_xlat7.x;
  let x_559 : f32 = u_xlat15;
  u_xlat7.x = ((x_558 * x_559) + 1.0f);
  let x_564 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat14;
  u_xlat7.x = (x_564 * x_565);
  let x_568 : f32 = u_xlat22;
  let x_569 : f32 = u_xlat22;
  u_xlat14 = (x_568 * x_569);
  let x_571 : f32 = u_xlat14;
  u_xlat14 = max(x_571, 0.002f);
  let x_574 : f32 = u_xlat14;
  u_xlat15 = (-(x_574) + 1.0f);
  let x_577 : f32 = u_xlat21;
  let x_579 : f32 = u_xlat15;
  let x_581 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_577) * x_579) + x_581);
  let x_584 : f32 = u_xlat1.x;
  let x_585 : f32 = u_xlat15;
  let x_587 : f32 = u_xlat14;
  u_xlat15 = ((x_584 * x_585) + x_587);
  let x_589 : f32 = u_xlat21;
  let x_591 : f32 = u_xlat15;
  u_xlat21 = (abs(x_589) * x_591);
  let x_594 : f32 = u_xlat1.x;
  let x_595 : f32 = u_xlat22;
  let x_597 : f32 = u_xlat21;
  u_xlat21 = ((x_594 * x_595) + x_597);
  let x_599 : f32 = u_xlat21;
  u_xlat21 = (x_599 + 0.00001f);
  let x_602 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_602);
  let x_604 : f32 = u_xlat14;
  let x_605 : f32 = u_xlat14;
  u_xlat14 = (x_604 * x_605);
  let x_607 : f32 = u_xlat8;
  let x_608 : f32 = u_xlat14;
  let x_610 : f32 = u_xlat8;
  u_xlat15 = ((x_607 * x_608) + -(x_610));
  let x_613 : f32 = u_xlat15;
  let x_614 : f32 = u_xlat8;
  u_xlat8 = ((x_613 * x_614) + 1.0f);
  let x_617 : f32 = u_xlat14;
  u_xlat14 = (x_617 * 0.318309873f);
  let x_620 : f32 = u_xlat8;
  let x_621 : f32 = u_xlat8;
  u_xlat8 = ((x_620 * x_621) + 0.0000001f);
  let x_625 : f32 = u_xlat14;
  let x_626 : f32 = u_xlat8;
  u_xlat14 = (x_625 / x_626);
  let x_628 : f32 = u_xlat14;
  let x_629 : f32 = u_xlat21;
  u_xlat7.y = (x_628 * x_629);
  let x_632 : vec3<f32> = u_xlat1;
  let x_634 : vec3<f32> = u_xlat7;
  let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.x) * vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_636.x, x_636.y, x_637.z);
  let x_640 : f32 = u_xlat7.y;
  u_xlat14 = (x_640 * 3.141592741f);
  let x_643 : f32 = u_xlat14;
  u_xlat14 = max(x_643, 0.0f);
  let x_645 : vec3<f32> = u_xlat3;
  let x_646 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_645, x_646);
  let x_649 : f32 = u_xlat21;
  u_xlatb21 = !((x_649 == 0.0f));
  let x_651 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_651);
  let x_653 : f32 = u_xlat21;
  let x_654 : f32 = u_xlat14;
  u_xlat14 = (x_653 * x_654);
  let x_656 : vec3<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_656.x, x_656.x, x_656.x) * vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat6;
  let x_663 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663));
  let x_667 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_667) + 1.0f);
  let x_672 : f32 = u_xlat0.x;
  let x_674 : f32 = u_xlat0.x;
  u_xlat22 = (x_672 * x_674);
  let x_676 : f32 = u_xlat22;
  let x_677 : f32 = u_xlat22;
  u_xlat22 = (x_676 * x_677);
  let x_680 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat22;
  u_xlat0.x = (x_680 * x_681);
  let x_684 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_684) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_688 : vec3<f32> = u_xlat4;
  let x_689 : vec3<f32> = u_xlat0;
  let x_692 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_688 * vec3<f32>(x_689.x, x_689.x, x_689.x)) + x_692);
  let x_694 : vec3<f32> = u_xlat7;
  let x_695 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_694 * x_695);
  let x_699 : vec4<f32> = u_xlat2;
  let x_701 : vec3<f32> = u_xlat1;
  let x_703 : vec3<f32> = u_xlat0;
  let x_704 : vec3<f32> = ((vec3<f32>(x_699.x, x_699.z, x_699.w) * x_701) + x_703);
  let x_705 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

