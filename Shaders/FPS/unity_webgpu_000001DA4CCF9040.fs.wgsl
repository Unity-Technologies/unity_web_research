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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_186 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
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
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat2;
  let x_58 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_54 * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_62 : vec3<f32> = u_xlat2;
  let x_65 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_62 * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_75 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat4.x = x_75;
  let x_80 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat4.y = x_80;
  let x_85 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat4.z = x_85;
  let x_88 : vec3<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_88, vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec3<f32> = vs_TEXCOORD2;
  let x_95 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_98 : vec3<f32> = (x_92 + -(vec3<f32>(x_95.x, x_95.y, x_95.z)));
  let x_99 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_102 : vec4<f32> = u_xlat4;
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat20 = dot(vec3<f32>(x_102.x, x_102.y, x_102.z), vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : f32 = u_xlat20;
  u_xlat20 = sqrt(x_107);
  let x_109 : f32 = u_xlat19;
  let x_111 : f32 = u_xlat20;
  u_xlat20 = (-(x_109) + x_111);
  let x_115 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_116 : f32 = u_xlat20;
  let x_118 : f32 = u_xlat19;
  u_xlat19 = ((x_115 * x_116) + x_118);
  let x_120 : f32 = u_xlat19;
  let x_123 : f32 = x_18.x_LightShadowData.z;
  let x_126 : f32 = x_18.x_LightShadowData.w;
  u_xlat19 = ((x_120 * x_123) + x_126);
  let x_128 : f32 = u_xlat19;
  u_xlat19 = clamp(x_128, 0.0f, 1.0f);
  let x_137 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb20 = (x_137 == 1.0f);
  let x_139 : bool = u_xlatb20;
  if (x_139) {
    let x_143 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb20 = (x_143 == 1.0f);
    let x_145 : vec3<f32> = vs_TEXCOORD2;
    let x_149 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_151 : vec3<f32> = (vec3<f32>(x_145.y, x_145.y, x_145.y) * vec3<f32>(x_149.x, x_149.y, x_149.z));
    let x_152 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_155 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_157 : vec3<f32> = vs_TEXCOORD2;
    let x_160 : vec4<f32> = u_xlat4;
    let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.x, x_157.x, x_157.x)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_166 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_168 : vec3<f32> = vs_TEXCOORD2;
    let x_171 : vec4<f32> = u_xlat4;
    let x_173 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_168.z, x_168.z, x_168.z)) + vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_174 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
    let x_176 : vec4<f32> = u_xlat4;
    let x_179 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_181 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : bool = u_xlatb20;
    if (x_184) {
      let x_189 : vec4<f32> = u_xlat4;
      x_186 = vec3<f32>(x_189.x, x_189.y, x_189.z);
    } else {
      let x_192 : vec3<f32> = vs_TEXCOORD2;
      x_186 = x_192;
    }
    let x_193 : vec3<f32> = x_186;
    let x_194 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat4;
    let x_200 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_202 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(x_200));
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : vec4<f32> = u_xlat4;
    let x_209 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_210 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) * x_209);
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_211.x, x_210.x, x_210.y, x_210.z);
    let x_214 : f32 = u_xlat4.y;
    u_xlat20 = ((x_214 * 0.25f) + 0.75f);
    let x_221 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_221 * 0.5f) + 0.75f);
    let x_225 : f32 = u_xlat20;
    let x_226 : f32 = u_xlat21;
    u_xlat4.x = max(x_225, x_226);
    let x_237 : vec4<f32> = u_xlat4;
    let x_239 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_237.x, x_237.z, x_237.w));
    u_xlat4 = x_239;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_245, x_247);
  let x_249 : f32 = u_xlat20;
  u_xlat20 = clamp(x_249, 0.0f, 1.0f);
  let x_252 : vec4<f32> = vs_TEXCOORD4;
  let x_254 : vec4<f32> = vs_TEXCOORD4;
  let x_256 : vec2<f32> = (vec2<f32>(x_252.x, x_252.y) / vec2<f32>(x_254.w, x_254.w));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_257.z, x_257.w);
  let x_264 : vec4<f32> = u_xlat4;
  let x_266 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_264.x, x_264.y));
  u_xlat21 = x_266.x;
  let x_268 : f32 = u_xlat20;
  let x_269 : f32 = u_xlat21;
  u_xlat20 = (x_268 + -(x_269));
  let x_272 : f32 = u_xlat19;
  let x_273 : f32 = u_xlat20;
  let x_275 : f32 = u_xlat21;
  u_xlat19 = ((x_272 * x_273) + x_275);
  let x_277 : f32 = u_xlat19;
  let x_281 : vec4<f32> = x_18.x_LightColor0;
  let x_283 : vec3<f32> = (vec3<f32>(x_277, x_277, x_277) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_287, x_288);
  let x_290 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_290);
  let x_293 : f32 = u_xlat19;
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  u_xlat5 = (vec3<f32>(x_293, x_293, x_293) * x_295);
  let x_297 : vec3<f32> = u_xlat2;
  let x_298 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_297 * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_306 : f32 = x_18.x_Metallic;
  let x_308 : f32 = x_18.x_Metallic;
  let x_310 : f32 = x_18.x_Metallic;
  let x_311 : vec3<f32> = vec3<f32>(x_306, x_308, x_310);
  let x_316 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * x_316) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_322 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_322) * 0.959999979f) + 0.959999979f);
  let x_327 : f32 = u_xlat19;
  let x_329 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_327, x_327, x_327) * x_329);
  let x_333 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_333) + 1.0f);
  let x_336 : vec3<f32> = u_xlat0;
  let x_337 : f32 = u_xlat18;
  let x_341 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_336 * vec3<f32>(x_337, x_337, x_337)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec3<f32> = u_xlat0;
  let x_345 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_344, x_345);
  let x_347 : f32 = u_xlat18;
  u_xlat18 = max(x_347, 0.001f);
  let x_350 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_350);
  let x_352 : f32 = u_xlat18;
  let x_354 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_352, x_352, x_352) * x_354);
  let x_356 : vec3<f32> = u_xlat5;
  let x_357 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_356, x_357);
  let x_359 : vec3<f32> = u_xlat5;
  let x_361 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_359, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_366 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_366, 0.0f, 1.0f);
  let x_370 : vec3<f32> = u_xlat5;
  let x_371 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_370, x_371);
  let x_373 : f32 = u_xlat7;
  u_xlat7 = clamp(x_373, 0.0f, 1.0f);
  let x_376 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_378 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), x_378);
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_382, 0.0f, 1.0f);
  let x_387 : f32 = u_xlat0.x;
  let x_389 : f32 = u_xlat0.x;
  u_xlat6.x = (x_387 * x_389);
  let x_392 : vec3<f32> = u_xlat6;
  let x_394 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_392.x, x_392.x), vec2<f32>(x_394, x_394));
  let x_399 : f32 = u_xlat6.x;
  u_xlat6.x = (x_399 + -0.5f);
  let x_405 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_405) + 1.0f);
  let x_409 : f32 = u_xlat12;
  let x_410 : f32 = u_xlat12;
  u_xlat13 = (x_409 * x_410);
  let x_412 : f32 = u_xlat13;
  let x_413 : f32 = u_xlat13;
  u_xlat13 = (x_412 * x_413);
  let x_415 : f32 = u_xlat12;
  let x_416 : f32 = u_xlat13;
  u_xlat12 = (x_415 * x_416);
  let x_419 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat12;
  u_xlat12 = ((x_419 * x_420) + 1.0f);
  let x_423 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_423)) + 1.0f);
  let x_427 : f32 = u_xlat13;
  let x_428 : f32 = u_xlat13;
  u_xlat20 = (x_427 * x_428);
  let x_430 : f32 = u_xlat20;
  let x_431 : f32 = u_xlat20;
  u_xlat20 = (x_430 * x_431);
  let x_433 : f32 = u_xlat13;
  let x_434 : f32 = u_xlat20;
  u_xlat13 = (x_433 * x_434);
  let x_437 : f32 = u_xlat6.x;
  let x_438 : f32 = u_xlat13;
  u_xlat6.x = ((x_437 * x_438) + 1.0f);
  let x_443 : f32 = u_xlat6.x;
  let x_444 : f32 = u_xlat12;
  u_xlat6.x = (x_443 * x_444);
  let x_447 : f32 = u_xlat19;
  let x_448 : f32 = u_xlat19;
  u_xlat12 = (x_447 * x_448);
  let x_450 : f32 = u_xlat12;
  u_xlat12 = max(x_450, 0.002f);
  let x_453 : f32 = u_xlat12;
  u_xlat13 = (-(x_453) + 1.0f);
  let x_456 : f32 = u_xlat18;
  let x_458 : f32 = u_xlat13;
  let x_460 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_456) * x_458) + x_460);
  let x_463 : f32 = u_xlat1.x;
  let x_464 : f32 = u_xlat13;
  let x_466 : f32 = u_xlat12;
  u_xlat13 = ((x_463 * x_464) + x_466);
  let x_468 : f32 = u_xlat18;
  let x_470 : f32 = u_xlat13;
  u_xlat18 = (abs(x_468) * x_470);
  let x_473 : f32 = u_xlat1.x;
  let x_474 : f32 = u_xlat19;
  let x_476 : f32 = u_xlat18;
  u_xlat18 = ((x_473 * x_474) + x_476);
  let x_478 : f32 = u_xlat18;
  u_xlat18 = (x_478 + 0.00001f);
  let x_481 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_481);
  let x_483 : f32 = u_xlat12;
  let x_484 : f32 = u_xlat12;
  u_xlat12 = (x_483 * x_484);
  let x_486 : f32 = u_xlat7;
  let x_487 : f32 = u_xlat12;
  let x_489 : f32 = u_xlat7;
  u_xlat13 = ((x_486 * x_487) + -(x_489));
  let x_492 : f32 = u_xlat13;
  let x_493 : f32 = u_xlat7;
  u_xlat7 = ((x_492 * x_493) + 1.0f);
  let x_496 : f32 = u_xlat12;
  u_xlat12 = (x_496 * 0.318309873f);
  let x_499 : f32 = u_xlat7;
  let x_500 : f32 = u_xlat7;
  u_xlat7 = ((x_499 * x_500) + 0.0000001f);
  let x_504 : f32 = u_xlat12;
  let x_505 : f32 = u_xlat7;
  u_xlat12 = (x_504 / x_505);
  let x_507 : f32 = u_xlat12;
  let x_508 : f32 = u_xlat18;
  u_xlat6.y = (x_507 * x_508);
  let x_511 : vec3<f32> = u_xlat1;
  let x_513 : vec3<f32> = u_xlat6;
  let x_515 : vec2<f32> = (vec2<f32>(x_511.x, x_511.x) * vec2<f32>(x_513.x, x_513.y));
  let x_516 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_515.x, x_515.y, x_516.z);
  let x_519 : f32 = u_xlat6.y;
  u_xlat12 = (x_519 * 3.141592741f);
  let x_522 : f32 = u_xlat12;
  u_xlat12 = max(x_522, 0.0f);
  let x_524 : vec3<f32> = u_xlat2;
  let x_525 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_524, x_525);
  let x_528 : f32 = u_xlat18;
  u_xlatb18 = !((x_528 == 0.0f));
  let x_530 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_530);
  let x_532 : f32 = u_xlat18;
  let x_533 : f32 = u_xlat12;
  u_xlat12 = (x_532 * x_533);
  let x_535 : vec3<f32> = u_xlat6;
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_535.x, x_535.x, x_535.x) * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(x_542, x_542, x_542));
  let x_546 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_546) + 1.0f);
  let x_551 : f32 = u_xlat0.x;
  let x_553 : f32 = u_xlat0.x;
  u_xlat19 = (x_551 * x_553);
  let x_555 : f32 = u_xlat19;
  let x_556 : f32 = u_xlat19;
  u_xlat19 = (x_555 * x_556);
  let x_559 : f32 = u_xlat0.x;
  let x_560 : f32 = u_xlat19;
  u_xlat0.x = (x_559 * x_560);
  let x_563 : vec3<f32> = u_xlat2;
  let x_566 : vec3<f32> = (-(x_563) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat4;
  let x_571 : vec3<f32> = u_xlat0;
  let x_574 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.x, x_571.x, x_571.x)) + x_574);
  let x_576 : vec3<f32> = u_xlat6;
  let x_577 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_576 * x_577);
  let x_581 : vec3<f32> = u_xlat3;
  let x_582 : vec3<f32> = u_xlat1;
  let x_584 : vec3<f32> = u_xlat0;
  let x_585 : vec3<f32> = ((x_581 * x_582) + x_584);
  let x_586 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

