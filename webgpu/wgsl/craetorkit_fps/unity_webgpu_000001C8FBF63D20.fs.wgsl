struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat17 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_251 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
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
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_110 : vec3<f32> = vs_TEXCOORD4;
  let x_116 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat17 = (vec2<f32>(x_110.y, x_110.y) * vec2<f32>(x_116.x, x_116.y));
  let x_120 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_122 : vec3<f32> = vs_TEXCOORD4;
  let x_125 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_131 : vec3<f32> = vs_TEXCOORD4;
  let x_134 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_131.z, x_131.z)) + x_134);
  let x_136 : vec2<f32> = u_xlat17;
  let x_139 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat17 = (x_136 + vec2<f32>(x_139.x, x_139.y));
  let x_147 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_147;
  let x_150 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_150;
  let x_154 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_154;
  let x_156 : vec3<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(x_156, vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec3<f32> = vs_TEXCOORD4;
  let x_163 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_166 : vec3<f32> = (x_160 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec4<f32> = u_xlat5;
  let x_172 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_175);
  let x_177 : f32 = u_xlat22;
  let x_179 : f32 = u_xlat23;
  u_xlat23 = (-(x_177) + x_179);
  let x_183 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_184 : f32 = u_xlat23;
  let x_186 : f32 = u_xlat22;
  u_xlat22 = ((x_183 * x_184) + x_186);
  let x_188 : f32 = u_xlat22;
  let x_190 : f32 = x_18.x_LightShadowData.z;
  let x_193 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_188 * x_190) + x_193);
  let x_195 : f32 = u_xlat22;
  u_xlat22 = clamp(x_195, 0.0f, 1.0f);
  let x_203 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_203 == 1.0f);
  let x_205 : bool = u_xlatb23;
  if (x_205) {
    let x_209 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_209 == 1.0f);
    let x_211 : vec3<f32> = vs_TEXCOORD4;
    let x_215 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_217 : vec3<f32> = (vec3<f32>(x_211.y, x_211.y, x_211.y) * vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_221 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_223 : vec3<f32> = vs_TEXCOORD4;
    let x_226 : vec4<f32> = u_xlat5;
    let x_228 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223.x, x_223.x, x_223.x)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
    let x_229 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_232 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_234 : vec3<f32> = vs_TEXCOORD4;
    let x_237 : vec4<f32> = u_xlat5;
    let x_239 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234.z, x_234.z, x_234.z)) + vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_240 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat5;
    let x_245 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_247 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + vec3<f32>(x_245.x, x_245.y, x_245.z));
    let x_248 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : bool = u_xlatb23;
    if (x_250) {
      let x_254 : vec4<f32> = u_xlat5;
      x_251 = vec3<f32>(x_254.x, x_254.y, x_254.z);
    } else {
      let x_257 : vec3<f32> = vs_TEXCOORD4;
      x_251 = x_257;
    }
    let x_258 : vec3<f32> = x_251;
    let x_259 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat5;
    let x_265 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_267 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + -(x_265));
    let x_268 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat5;
    let x_274 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_275 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) * x_274);
    let x_276 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
    let x_279 : f32 = u_xlat5.y;
    u_xlat23 = ((x_279 * 0.25f) + 0.75f);
    let x_286 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_286 * 0.5f) + 0.75f);
    let x_290 : f32 = u_xlat23;
    let x_291 : f32 = u_xlat25;
    u_xlat5.x = max(x_290, x_291);
    let x_302 : vec4<f32> = u_xlat5;
    let x_304 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_302.x, x_302.z, x_302.w));
    u_xlat5 = x_304;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_310 : vec4<f32> = u_xlat5;
  let x_312 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_310, x_312);
  let x_314 : f32 = u_xlat23;
  u_xlat23 = clamp(x_314, 0.0f, 1.0f);
  let x_318 : vec4<f32> = vs_TEXCOORD6;
  let x_320 : vec4<f32> = vs_TEXCOORD6;
  let x_322 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) / vec2<f32>(x_320.w, x_320.w));
  let x_323 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_330.x, x_330.y));
  u_xlat25 = x_332.x;
  let x_334 : f32 = u_xlat23;
  let x_335 : f32 = u_xlat25;
  u_xlat23 = (x_334 + -(x_335));
  let x_338 : f32 = u_xlat22;
  let x_339 : f32 = u_xlat23;
  let x_341 : f32 = u_xlat25;
  u_xlat22 = ((x_338 * x_339) + x_341);
  let x_348 : vec2<f32> = u_xlat17;
  let x_349 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_348);
  u_xlat23 = x_349.w;
  let x_351 : f32 = u_xlat22;
  let x_352 : f32 = u_xlat23;
  u_xlat22 = (x_351 * x_352);
  let x_355 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_355, x_356);
  let x_360 : vec3<f32> = vs_TEXCOORD2;
  let x_361 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_360, x_361);
  let x_365 : vec3<f32> = vs_TEXCOORD3;
  let x_366 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_365, x_366);
  let x_369 : vec4<f32> = u_xlat5;
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_374);
  let x_376 : f32 = u_xlat23;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : f32 = u_xlat22;
  let x_385 : vec4<f32> = x_18.x_LightColor0;
  let x_387 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_391 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_395 : vec3<f32> = u_xlat3;
  let x_397 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_395.x, x_395.x, x_395.x) * x_397) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_403 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_403) * 0.959999979f) + 0.959999979f);
  let x_408 : f32 = u_xlat22;
  let x_410 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_408, x_408, x_408) * x_410);
  let x_413 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_413) + 1.0f);
  let x_416 : vec3<f32> = u_xlat0;
  let x_417 : f32 = u_xlat21;
  let x_421 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_416 * vec3<f32>(x_417, x_417, x_417)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec3<f32> = u_xlat0;
  let x_425 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_424, x_425);
  let x_427 : f32 = u_xlat21;
  u_xlat21 = max(x_427, 0.001f);
  let x_430 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_430);
  let x_432 : f32 = u_xlat21;
  let x_434 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_432, x_432, x_432) * x_434);
  let x_436 : vec3<f32> = u_xlat4;
  let x_437 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_436, x_437);
  let x_439 : vec3<f32> = u_xlat4;
  let x_441 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_439, vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_446 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_446, 0.0f, 1.0f);
  let x_450 : vec3<f32> = u_xlat4;
  let x_451 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_450, x_451);
  let x_453 : f32 = u_xlat8;
  u_xlat8 = clamp(x_453, 0.0f, 1.0f);
  let x_456 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_456.x, x_456.y, x_456.z), x_458);
  let x_462 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_462, 0.0f, 1.0f);
  let x_467 : f32 = u_xlat0.x;
  let x_469 : f32 = u_xlat0.x;
  u_xlat7.x = (x_467 * x_469);
  let x_472 : vec3<f32> = u_xlat7;
  let x_474 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_472.x, x_472.x), vec2<f32>(x_474, x_474));
  let x_479 : f32 = u_xlat7.x;
  u_xlat7.x = (x_479 + -0.5f);
  let x_485 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_485) + 1.0f);
  let x_489 : f32 = u_xlat14;
  let x_490 : f32 = u_xlat14;
  u_xlat15 = (x_489 * x_490);
  let x_492 : f32 = u_xlat15;
  let x_493 : f32 = u_xlat15;
  u_xlat15 = (x_492 * x_493);
  let x_495 : f32 = u_xlat14;
  let x_496 : f32 = u_xlat15;
  u_xlat14 = (x_495 * x_496);
  let x_499 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat14;
  u_xlat14 = ((x_499 * x_500) + 1.0f);
  let x_503 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_503)) + 1.0f);
  let x_507 : f32 = u_xlat15;
  let x_508 : f32 = u_xlat15;
  u_xlat23 = (x_507 * x_508);
  let x_510 : f32 = u_xlat23;
  let x_511 : f32 = u_xlat23;
  u_xlat23 = (x_510 * x_511);
  let x_513 : f32 = u_xlat15;
  let x_514 : f32 = u_xlat23;
  u_xlat15 = (x_513 * x_514);
  let x_517 : f32 = u_xlat7.x;
  let x_518 : f32 = u_xlat15;
  u_xlat7.x = ((x_517 * x_518) + 1.0f);
  let x_523 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat14;
  u_xlat7.x = (x_523 * x_524);
  let x_527 : f32 = u_xlat22;
  let x_528 : f32 = u_xlat22;
  u_xlat14 = (x_527 * x_528);
  let x_530 : f32 = u_xlat14;
  u_xlat14 = max(x_530, 0.002f);
  let x_533 : f32 = u_xlat14;
  u_xlat15 = (-(x_533) + 1.0f);
  let x_536 : f32 = u_xlat21;
  let x_538 : f32 = u_xlat15;
  let x_540 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_536) * x_538) + x_540);
  let x_543 : f32 = u_xlat1.x;
  let x_544 : f32 = u_xlat15;
  let x_546 : f32 = u_xlat14;
  u_xlat15 = ((x_543 * x_544) + x_546);
  let x_548 : f32 = u_xlat21;
  let x_550 : f32 = u_xlat15;
  u_xlat21 = (abs(x_548) * x_550);
  let x_553 : f32 = u_xlat1.x;
  let x_554 : f32 = u_xlat22;
  let x_556 : f32 = u_xlat21;
  u_xlat21 = ((x_553 * x_554) + x_556);
  let x_558 : f32 = u_xlat21;
  u_xlat21 = (x_558 + 0.00001f);
  let x_561 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_561);
  let x_563 : f32 = u_xlat14;
  let x_564 : f32 = u_xlat14;
  u_xlat14 = (x_563 * x_564);
  let x_566 : f32 = u_xlat8;
  let x_567 : f32 = u_xlat14;
  let x_569 : f32 = u_xlat8;
  u_xlat15 = ((x_566 * x_567) + -(x_569));
  let x_572 : f32 = u_xlat15;
  let x_573 : f32 = u_xlat8;
  u_xlat8 = ((x_572 * x_573) + 1.0f);
  let x_576 : f32 = u_xlat14;
  u_xlat14 = (x_576 * 0.318309873f);
  let x_579 : f32 = u_xlat8;
  let x_580 : f32 = u_xlat8;
  u_xlat8 = ((x_579 * x_580) + 0.0000001f);
  let x_584 : f32 = u_xlat14;
  let x_585 : f32 = u_xlat8;
  u_xlat14 = (x_584 / x_585);
  let x_587 : f32 = u_xlat14;
  let x_588 : f32 = u_xlat21;
  u_xlat7.y = (x_587 * x_588);
  let x_591 : vec3<f32> = u_xlat1;
  let x_593 : vec3<f32> = u_xlat7;
  let x_595 : vec2<f32> = (vec2<f32>(x_591.x, x_591.x) * vec2<f32>(x_593.x, x_593.y));
  let x_596 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_595.x, x_595.y, x_596.z);
  let x_599 : f32 = u_xlat7.y;
  u_xlat14 = (x_599 * 3.141592741f);
  let x_602 : f32 = u_xlat14;
  u_xlat14 = max(x_602, 0.0f);
  let x_604 : vec3<f32> = u_xlat6;
  let x_605 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_604, x_605);
  let x_608 : f32 = u_xlat21;
  u_xlatb21 = !((x_608 == 0.0f));
  let x_610 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_610);
  let x_612 : f32 = u_xlat21;
  let x_613 : f32 = u_xlat14;
  u_xlat14 = (x_612 * x_613);
  let x_615 : vec3<f32> = u_xlat7;
  let x_617 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_615.x, x_615.x, x_615.x) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat5;
  let x_622 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622, x_622, x_622));
  let x_626 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_626) + 1.0f);
  let x_631 : f32 = u_xlat0.x;
  let x_633 : f32 = u_xlat0.x;
  u_xlat22 = (x_631 * x_633);
  let x_635 : f32 = u_xlat22;
  let x_636 : f32 = u_xlat22;
  u_xlat22 = (x_635 * x_636);
  let x_639 : f32 = u_xlat0.x;
  let x_640 : f32 = u_xlat22;
  u_xlat0.x = (x_639 * x_640);
  let x_643 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_643) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_647 : vec3<f32> = u_xlat3;
  let x_648 : vec3<f32> = u_xlat0;
  let x_651 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_647 * vec3<f32>(x_648.x, x_648.x, x_648.x)) + x_651);
  let x_653 : vec3<f32> = u_xlat7;
  let x_654 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_653 * x_654);
  let x_658 : vec3<f32> = u_xlat2;
  let x_659 : vec3<f32> = u_xlat1;
  let x_661 : vec3<f32> = u_xlat0;
  let x_662 : vec3<f32> = ((x_658 * x_659) + x_661);
  let x_663 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

