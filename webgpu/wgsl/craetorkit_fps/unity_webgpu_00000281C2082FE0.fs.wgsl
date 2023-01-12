struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
  x_Edge : f32,
  x_Fade : f32,
  x_Fog : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(8) var sampler_Normal : sampler;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(10) var sampler_Noise : sampler;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Ramp : texture_2d<f32>;

@group(0) @binding(9) var sampler_Ramp : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD9 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlatb2 : bool;
  var x_383 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_42 : vec4<f32> = vs_TEXCOORD5;
  let x_44 : vec4<f32> = vs_TEXCOORD5;
  let x_46 : vec2<f32> = (vec2<f32>(x_42.x, x_42.y) / vec2<f32>(x_44.w, x_44.w));
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_60 : vec4<f32> = u_xlat2;
  let x_62 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_60.x, x_60.y));
  u_xlat19 = x_62.x;
  let x_70 : f32 = x_18.x_ZBufferParams.z;
  let x_71 : f32 = u_xlat19;
  let x_75 : f32 = x_18.x_ZBufferParams.w;
  u_xlat19 = ((x_70 * x_71) + x_75);
  let x_78 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_78);
  let x_80 : f32 = u_xlat19;
  let x_83 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_80 + -(x_83));
  let x_86 : f32 = u_xlat19;
  let x_91 : f32 = x_18.x_Edge;
  let x_94 : f32 = x_18.x_Fog;
  let x_97 : f32 = x_18.x_Fade;
  let x_100 : vec3<f32> = (abs(vec3<f32>(x_86, x_86, x_86)) + -(vec3<f32>(x_91, x_94, x_97)));
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat2;
  let x_106 : f32 = x_18.x_Edge;
  let x_108 : f32 = x_18.x_Fog;
  let x_110 : f32 = x_18.x_Fade;
  let x_113 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) / -(vec3<f32>(x_106, x_108, x_110)));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : vec3<f32> = clamp(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_126 : f32 = u_xlat2.y;
  u_xlat19 = (-(x_126) + 1.0f);
  let x_133 : vec4<f32> = x_18.x_Time;
  let x_140 : vec4<f32> = vs_TEXCOORD0;
  let x_142 : vec3<f32> = ((vec3<f32>(x_133.x, x_133.x, x_133.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_140.z, x_140.w, x_140.y));
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = u_xlat3;
  let x_150 : vec2<f32> = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(0.5f, 0.5f));
  let x_151 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_150.x, x_151.y, x_150.y);
  let x_159 : vec3<f32> = u_xlat8;
  let x_161 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_159.x, x_159.z));
  u_xlat4 = vec3<f32>(x_161.x, x_161.y, x_161.w);
  let x_164 : f32 = u_xlat4.z;
  let x_166 : f32 = u_xlat4.x;
  u_xlat4.x = (x_164 * x_166);
  let x_169 : vec3<f32> = u_xlat4;
  let x_176 : vec2<f32> = ((vec2<f32>(x_169.x, x_169.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_176.x, x_176.y, x_177.z);
  let x_179 : vec3<f32> = u_xlat4;
  let x_181 : vec3<f32> = u_xlat4;
  u_xlat8.x = dot(vec2<f32>(x_179.x, x_179.y), vec2<f32>(x_181.x, x_181.y));
  let x_186 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_186, 1.0f);
  let x_190 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_190) + 1.0f);
  let x_195 : f32 = u_xlat8.x;
  u_xlat4.z = sqrt(x_195);
  let x_198 : vec4<f32> = vs_TEXCOORD0;
  let x_199 : vec2<f32> = vec2<f32>(x_198.x, x_198.x);
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_200.y, x_200.z, x_199.y);
  let x_202 : vec3<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec2<f32> = ((vec2<f32>(x_202.x, x_202.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_206.w, x_206.z));
  let x_209 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_208.x, x_209.y, x_208.y);
  let x_212 : f32 = vs_TEXCOORD0.y;
  let x_214 : f32 = x_18.x_Time.x;
  u_xlat3.y = (x_212 + x_214);
  let x_217 : vec3<f32> = u_xlat4;
  let x_219 : vec4<f32> = u_xlat3;
  let x_221 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) + vec2<f32>(x_219.x, x_219.y));
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_221.x, x_221.y, x_222.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat3;
  let x_226 : vec2<f32> = (vec2<f32>(x_224.x, x_224.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_234.x, x_234.y));
  u_xlat3.x = x_236.x;
  let x_244 : vec3<f32> = u_xlat8;
  let x_246 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_244.x, x_244.z));
  u_xlat8.x = x_246.x;
  u_xlat8.z = 0.0f;
  let x_256 : vec3<f32> = u_xlat8;
  let x_258 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_256.x, x_256.z));
  u_xlat9 = vec3<f32>(x_258.x, x_258.y, x_258.z);
  let x_261 : vec3<f32> = u_xlat9;
  let x_265 : vec4<f32> = x_18.x_Color2;
  u_xlat5 = (-(x_261) + vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat5;
  let x_272 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_268.x, x_268.x, x_268.x) * x_270) + x_272);
  let x_274 : f32 = u_xlat19;
  let x_276 : f32 = u_xlat3.x;
  u_xlat2.x = (x_274 + -(x_276));
  let x_281 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_281, 0.0f, 1.0f);
  let x_286 : f32 = u_xlat2.x;
  u_xlat20 = ((x_286 * -2.0f) + 3.0f);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  u_xlat2.x = (x_292 * x_294);
  let x_298 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat20;
  u_xlat2.x = (x_298 * x_299);
  let x_302 : f32 = u_xlat19;
  let x_304 : f32 = u_xlat2.x;
  u_xlat19 = (x_302 * x_304);
  let x_308 : vec4<f32> = x_18.x_Color1;
  let x_311 : vec4<f32> = x_18.x_Color2;
  u_xlat5 = (vec3<f32>(x_308.x, x_308.y, x_308.z) + -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_315 : f32 = u_xlat19;
  let x_317 : vec3<f32> = u_xlat5;
  let x_320 : vec4<f32> = x_18.x_Color2;
  u_xlat5 = ((vec3<f32>(x_315, x_315, x_315) * x_317) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec3<f32> = u_xlat9;
  let x_324 : vec3<f32> = u_xlat5;
  let x_325 : vec3<f32> = (x_323 + x_324);
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : f32 = u_xlat8.x;
  u_xlat19 = (-(x_329) + 1.0f);
  let x_335 : f32 = u_xlat2.z;
  SV_Target0.w = (-(x_335) + 1.0f);
  let x_345 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_345 == 1.0f);
  let x_347 : bool = u_xlatb2;
  if (x_347) {
    let x_351 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_351 == 1.0f);
    let x_353 : vec3<f32> = vs_TEXCOORD4;
    let x_357 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat8 = (vec3<f32>(x_353.y, x_353.y, x_353.y) * vec3<f32>(x_357.x, x_357.y, x_357.z));
    let x_361 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_363 : vec3<f32> = vs_TEXCOORD4;
    let x_366 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.x, x_363.x)) + x_366);
    let x_370 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_372 : vec3<f32> = vs_TEXCOORD4;
    let x_375 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.z, x_372.z, x_372.z)) + x_375);
    let x_377 : vec3<f32> = u_xlat8;
    let x_379 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat8 = (x_377 + vec3<f32>(x_379.x, x_379.y, x_379.z));
    let x_382 : bool = u_xlatb2;
    if (x_382) {
      let x_386 : vec3<f32> = u_xlat8;
      x_383 = x_386;
    } else {
      let x_388 : vec3<f32> = vs_TEXCOORD4;
      x_383 = x_388;
    }
    let x_389 : vec3<f32> = x_383;
    let x_390 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
    let x_392 : vec4<f32> = u_xlat2;
    let x_396 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_398 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) + -(x_396));
    let x_399 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
    let x_401 : vec4<f32> = u_xlat2;
    let x_405 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_406 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) * x_405);
    let x_407 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_407.x, x_406.x, x_406.y, x_406.z);
    let x_410 : f32 = u_xlat2.y;
    u_xlat8.x = ((x_410 * 0.25f) + 0.75f);
    let x_418 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_418 * 0.5f) + 0.75f);
    let x_422 : f32 = u_xlat8.x;
    let x_423 : f32 = u_xlat21;
    u_xlat2.x = max(x_422, x_423);
    let x_434 : vec4<f32> = u_xlat2;
    let x_436 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_434.x, x_434.z, x_434.w));
    u_xlat2 = x_436;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_442 : vec4<f32> = u_xlat2;
  let x_445 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_442, x_445);
  let x_449 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_449, 0.0f, 1.0f);
  let x_453 : vec3<f32> = vs_TEXCOORD1;
  let x_454 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_453, x_454);
  let x_458 : vec3<f32> = vs_TEXCOORD2;
  let x_459 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_458, x_459);
  let x_463 : vec3<f32> = vs_TEXCOORD3;
  let x_464 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_463, x_464);
  let x_467 : vec3<f32> = u_xlat5;
  let x_468 : vec3<f32> = u_xlat5;
  u_xlat8.x = dot(x_467, x_468);
  let x_472 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_472);
  let x_475 : vec3<f32> = u_xlat8;
  let x_477 : vec3<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_475.x, x_475.x, x_475.x) * x_477);
  let x_479 : vec4<f32> = u_xlat2;
  let x_483 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_479.x, x_479.x, x_479.x) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_486.x, x_486.y, x_486.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_493 : f32 = x_18.x_Metallic;
  let x_495 : f32 = x_18.x_Metallic;
  let x_497 : f32 = x_18.x_Metallic;
  let x_498 : vec3<f32> = vec3<f32>(x_493, x_495, x_497);
  let x_503 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * x_503) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_509 : f32 = x_18.x_Metallic;
  u_xlat2.x = ((-(x_509) * 0.959999979f) + 0.959999979f);
  let x_515 : vec4<f32> = u_xlat2;
  let x_517 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.x, x_515.x) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : f32 = u_xlat19;
  let x_526 : f32 = x_18.x_Glossiness;
  u_xlat19 = ((-(x_522) * x_526) + 1.0f);
  let x_529 : vec3<f32> = u_xlat0;
  let x_530 : f32 = u_xlat18;
  let x_535 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_529 * vec3<f32>(x_530, x_530, x_530)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec3<f32> = u_xlat0;
  let x_539 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_538, x_539);
  let x_541 : f32 = u_xlat18;
  u_xlat18 = max(x_541, 0.001f);
  let x_544 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_544);
  let x_546 : f32 = u_xlat18;
  let x_548 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_546, x_546, x_546) * x_548);
  let x_550 : vec3<f32> = u_xlat8;
  let x_551 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_550, x_551);
  let x_553 : vec3<f32> = u_xlat8;
  let x_555 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_553, vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_560 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_560, 0.0f, 1.0f);
  let x_564 : vec3<f32> = u_xlat8;
  let x_565 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_564, x_565);
  let x_567 : f32 = u_xlat7;
  u_xlat7 = clamp(x_567, 0.0f, 1.0f);
  let x_570 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_572 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_570.x, x_570.y, x_570.z), x_572);
  let x_576 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_576, 0.0f, 1.0f);
  let x_581 : f32 = u_xlat0.x;
  let x_583 : f32 = u_xlat0.x;
  u_xlat6.x = (x_581 * x_583);
  let x_586 : vec3<f32> = u_xlat6;
  let x_588 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_586.x, x_586.x), vec2<f32>(x_588, x_588));
  let x_593 : f32 = u_xlat6.x;
  u_xlat6.x = (x_593 + -0.5f);
  let x_599 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_599) + 1.0f);
  let x_603 : f32 = u_xlat12;
  let x_604 : f32 = u_xlat12;
  u_xlat13 = (x_603 * x_604);
  let x_606 : f32 = u_xlat13;
  let x_607 : f32 = u_xlat13;
  u_xlat13 = (x_606 * x_607);
  let x_609 : f32 = u_xlat12;
  let x_610 : f32 = u_xlat13;
  u_xlat12 = (x_609 * x_610);
  let x_613 : f32 = u_xlat6.x;
  let x_614 : f32 = u_xlat12;
  u_xlat12 = ((x_613 * x_614) + 1.0f);
  let x_617 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_617)) + 1.0f);
  let x_621 : f32 = u_xlat13;
  let x_622 : f32 = u_xlat13;
  u_xlat2.x = (x_621 * x_622);
  let x_626 : f32 = u_xlat2.x;
  let x_628 : f32 = u_xlat2.x;
  u_xlat2.x = (x_626 * x_628);
  let x_631 : f32 = u_xlat13;
  let x_633 : f32 = u_xlat2.x;
  u_xlat13 = (x_631 * x_633);
  let x_636 : f32 = u_xlat6.x;
  let x_637 : f32 = u_xlat13;
  u_xlat6.x = ((x_636 * x_637) + 1.0f);
  let x_642 : f32 = u_xlat6.x;
  let x_643 : f32 = u_xlat12;
  u_xlat6.x = (x_642 * x_643);
  let x_646 : f32 = u_xlat19;
  let x_647 : f32 = u_xlat19;
  u_xlat12 = (x_646 * x_647);
  let x_649 : f32 = u_xlat12;
  u_xlat12 = max(x_649, 0.002f);
  let x_652 : f32 = u_xlat12;
  u_xlat13 = (-(x_652) + 1.0f);
  let x_655 : f32 = u_xlat18;
  let x_657 : f32 = u_xlat13;
  let x_659 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_655) * x_657) + x_659);
  let x_662 : f32 = u_xlat1.x;
  let x_663 : f32 = u_xlat13;
  let x_665 : f32 = u_xlat12;
  u_xlat13 = ((x_662 * x_663) + x_665);
  let x_667 : f32 = u_xlat18;
  let x_669 : f32 = u_xlat13;
  u_xlat18 = (abs(x_667) * x_669);
  let x_672 : f32 = u_xlat1.x;
  let x_673 : f32 = u_xlat19;
  let x_675 : f32 = u_xlat18;
  u_xlat18 = ((x_672 * x_673) + x_675);
  let x_677 : f32 = u_xlat18;
  u_xlat18 = (x_677 + 0.00001f);
  let x_680 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_680);
  let x_682 : f32 = u_xlat12;
  let x_683 : f32 = u_xlat12;
  u_xlat12 = (x_682 * x_683);
  let x_685 : f32 = u_xlat7;
  let x_686 : f32 = u_xlat12;
  let x_688 : f32 = u_xlat7;
  u_xlat13 = ((x_685 * x_686) + -(x_688));
  let x_691 : f32 = u_xlat13;
  let x_692 : f32 = u_xlat7;
  u_xlat7 = ((x_691 * x_692) + 1.0f);
  let x_695 : f32 = u_xlat12;
  u_xlat12 = (x_695 * 0.318309873f);
  let x_698 : f32 = u_xlat7;
  let x_699 : f32 = u_xlat7;
  u_xlat7 = ((x_698 * x_699) + 0.0000001f);
  let x_703 : f32 = u_xlat12;
  let x_704 : f32 = u_xlat7;
  u_xlat12 = (x_703 / x_704);
  let x_706 : f32 = u_xlat12;
  let x_707 : f32 = u_xlat18;
  u_xlat6.y = (x_706 * x_707);
  let x_710 : vec3<f32> = u_xlat1;
  let x_712 : vec3<f32> = u_xlat6;
  let x_714 : vec2<f32> = (vec2<f32>(x_710.x, x_710.x) * vec2<f32>(x_712.x, x_712.y));
  let x_715 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_714.x, x_714.y, x_715.z);
  let x_718 : f32 = u_xlat6.y;
  u_xlat12 = (x_718 * 3.141592741f);
  let x_721 : f32 = u_xlat12;
  u_xlat12 = max(x_721, 0.0f);
  let x_723 : vec3<f32> = u_xlat5;
  let x_724 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_723, x_724);
  let x_727 : f32 = u_xlat18;
  u_xlatb18 = !((x_727 == 0.0f));
  let x_729 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_729);
  let x_731 : f32 = u_xlat18;
  let x_732 : f32 = u_xlat12;
  u_xlat12 = (x_731 * x_732);
  let x_734 : vec3<f32> = u_xlat6;
  let x_736 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_734.x, x_734.x, x_734.x) * x_736);
  let x_738 : vec3<f32> = u_xlat4;
  let x_739 : f32 = u_xlat12;
  u_xlat6 = (x_738 * vec3<f32>(x_739, x_739, x_739));
  let x_743 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_743) + 1.0f);
  let x_748 : f32 = u_xlat0.x;
  let x_750 : f32 = u_xlat0.x;
  u_xlat19 = (x_748 * x_750);
  let x_752 : f32 = u_xlat19;
  let x_753 : f32 = u_xlat19;
  u_xlat19 = (x_752 * x_753);
  let x_756 : f32 = u_xlat0.x;
  let x_757 : f32 = u_xlat19;
  u_xlat0.x = (x_756 * x_757);
  let x_760 : vec3<f32> = u_xlat5;
  let x_763 : vec3<f32> = (-(x_760) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = u_xlat0;
  let x_771 : vec3<f32> = u_xlat5;
  let x_772 : vec3<f32> = ((vec3<f32>(x_766.x, x_766.y, x_766.z) * vec3<f32>(x_768.x, x_768.x, x_768.x)) + x_771);
  let x_773 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec3<f32> = u_xlat6;
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_775 * vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat3;
  let x_781 : vec3<f32> = u_xlat1;
  let x_783 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * x_781) + x_783);
  let x_786 : f32 = vs_TEXCOORD9;
  let x_788 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_786 / x_788);
  let x_790 : f32 = u_xlat18;
  u_xlat18 = (-(x_790) + 1.0f);
  let x_793 : f32 = u_xlat18;
  let x_795 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_793 * x_795);
  let x_797 : f32 = u_xlat18;
  u_xlat18 = max(x_797, 0.0f);
  let x_799 : f32 = u_xlat18;
  let x_802 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_799 * x_802);
  let x_804 : f32 = u_xlat18;
  let x_805 : f32 = u_xlat18;
  u_xlat18 = (x_804 * -(x_805));
  let x_808 : f32 = u_xlat18;
  u_xlat18 = exp2(x_808);
  let x_810 : vec3<f32> = u_xlat0;
  let x_811 : f32 = u_xlat18;
  let x_813 : vec3<f32> = (x_810 * vec3<f32>(x_811, x_811, x_811));
  let x_814 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(6) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD9_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD9 = vs_TEXCOORD9_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

