struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(7) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3<f32>;
  var x_263 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlatb9 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD2;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat22;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_65 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_65 + -1.0f);
  let x_68 : f32 = u_xlat22;
  u_xlat22 = (x_68 * -9.999998093f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = clamp(x_71, 0.0f, 1.0f);
  let x_76 : f32 = u_xlat22;
  let x_82 : vec2<f32> = vs_TEXCOORD0;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_76, x_76)) + x_82);
  let x_84 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_96 : vec3<f32> = u_xlat4;
  let x_98 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_96.x, x_96.y));
  u_xlat22 = x_98.x;
  let x_106 : vec2<f32> = vs_TEXCOORD0;
  let x_107 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_106);
  u_xlat23 = x_107.z;
  let x_110 : f32 = u_xlat22;
  u_xlat22 = ((x_110 * -2.0f) + 1.0f);
  let x_114 : f32 = u_xlat23;
  let x_116 : f32 = u_xlat22;
  u_xlat22 = (-(x_114) + x_116);
  let x_121 : f32 = u_xlat22;
  u_xlatb22 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb22;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + x_145);
  let x_148 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec3<f32> = u_xlat4;
  let x_158 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat4 = (x_155 + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_165 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_165;
  let x_168 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_168;
  let x_172 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_172;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec3<f32> = vs_TEXCOORD2;
  let x_182 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_185 : vec3<f32> = (x_179 + -(vec3<f32>(x_182.x, x_182.y, x_182.z)));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_195);
  let x_198 : f32 = u_xlat22;
  let x_201 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_198) + x_201);
  let x_206 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_208 : f32 = u_xlat2.x;
  let x_210 : f32 = u_xlat22;
  u_xlat22 = ((x_206 * x_208) + x_210);
  let x_212 : f32 = u_xlat22;
  let x_215 : f32 = x_18.x_LightShadowData.z;
  let x_218 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_212 * x_215) + x_218);
  let x_220 : f32 = u_xlat22;
  u_xlat22 = clamp(x_220, 0.0f, 1.0f);
  let x_225 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_225 == 1.0f);
  let x_227 : bool = u_xlatb2;
  if (x_227) {
    let x_231 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_231 == 1.0f);
    let x_234 : vec3<f32> = vs_TEXCOORD2;
    let x_238 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_242 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_244 : vec3<f32> = vs_TEXCOORD2;
    let x_247 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.x, x_244.x, x_244.x)) + x_247);
    let x_250 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_252 : vec3<f32> = vs_TEXCOORD2;
    let x_255 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + x_255);
    let x_257 : vec3<f32> = u_xlat9;
    let x_259 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_257 + vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : bool = u_xlatb2;
    if (x_262) {
      let x_266 : vec3<f32> = u_xlat9;
      x_263 = x_266;
    } else {
      let x_268 : vec3<f32> = vs_TEXCOORD2;
      x_263 = x_268;
    }
    let x_269 : vec3<f32> = x_263;
    let x_270 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_272 : vec4<f32> = u_xlat2;
    let x_276 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_278 : vec3<f32> = (vec3<f32>(x_272.x, x_272.y, x_272.z) + -(x_276));
    let x_279 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat2;
    let x_285 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_286 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) * x_285);
    let x_287 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_287.x, x_286.x, x_286.y, x_286.z);
    let x_290 : f32 = u_xlat2.y;
    u_xlat9.x = ((x_290 * 0.25f) + 0.75f);
    let x_298 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_298 * 0.5f) + 0.75f);
    let x_303 : f32 = u_xlat9.x;
    let x_304 : f32 = u_xlat24;
    u_xlat2.x = max(x_303, x_304);
    let x_315 : vec4<f32> = u_xlat2;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.z, x_315.w));
    u_xlat2 = x_317;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_323 : vec4<f32> = u_xlat2;
  let x_326 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_323, x_326);
  let x_330 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_330, 0.0f, 1.0f);
  let x_334 : f32 = u_xlat22;
  u_xlatb9 = (x_334 < 0.99000001f);
  let x_337 : bool = u_xlatb9;
  if (x_337) {
    let x_340 : vec3<f32> = vs_TEXCOORD2;
    let x_342 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat9 = (x_340 + -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
    let x_347 : f32 = u_xlat9.y;
    let x_350 : f32 = u_xlat9.x;
    u_xlat24 = max(abs(x_347), abs(x_350));
    let x_354 : f32 = u_xlat9.z;
    let x_356 : f32 = u_xlat24;
    u_xlat24 = max(abs(x_354), x_356);
    let x_358 : f32 = u_xlat24;
    let x_361 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat24 = (x_358 + -(x_361));
    let x_364 : f32 = u_xlat24;
    u_xlat24 = max(x_364, 0.00001f);
    let x_367 : f32 = u_xlat24;
    let x_369 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat24 = (x_367 * x_369);
    let x_372 : f32 = x_18.x_LightProjectionParams.y;
    let x_373 : f32 = u_xlat24;
    u_xlat24 = (x_372 / x_373);
    let x_375 : f32 = u_xlat24;
    let x_377 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat24 = (x_375 + -(x_377));
    let x_380 : f32 = u_xlat24;
    u_xlat24 = (-(x_380) + 1.0f);
    let x_383 : vec3<f32> = u_xlat9;
    let x_386 : vec3<f32> = (x_383 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_387 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_390 : vec4<f32> = u_xlat5;
    let x_391 : vec3<f32> = vec3<f32>(x_390.x, x_390.y, x_390.z);
    let x_392 : f32 = u_xlat24;
    txVec0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392);
    let x_405 : vec4<f32> = txVec0;
    let x_407 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_405.xyz, x_405.w);
    u_xlat5.x = x_407;
    let x_410 : vec3<f32> = u_xlat9;
    u_xlat6 = (x_410 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_415 : vec3<f32> = u_xlat6;
    let x_416 : f32 = u_xlat24;
    txVec1 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416);
    let x_424 : vec4<f32> = txVec1;
    let x_426 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_424.xyz, x_424.w);
    u_xlat5.y = x_426;
    let x_428 : vec3<f32> = u_xlat9;
    u_xlat6 = (x_428 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_432 : vec3<f32> = u_xlat6;
    let x_433 : f32 = u_xlat24;
    txVec2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433);
    let x_441 : vec4<f32> = txVec2;
    let x_443 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_441.xyz, x_441.w);
    u_xlat5.z = x_443;
    let x_445 : vec3<f32> = u_xlat9;
    u_xlat9 = (x_445 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_449 : vec3<f32> = u_xlat9;
    let x_450 : f32 = u_xlat24;
    txVec3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450);
    let x_458 : vec4<f32> = txVec3;
    let x_460 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_458.xyz, x_458.w);
    u_xlat5.w = x_460;
    let x_462 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_462, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_468 : f32 = x_18.x_LightShadowData.x;
    u_xlat16 = (-(x_468) + 1.0f);
    let x_472 : f32 = u_xlat9.x;
    let x_473 : f32 = u_xlat16;
    let x_476 : f32 = x_18.x_LightShadowData.x;
    u_xlat9.x = ((x_472 * x_473) + x_476);
  } else {
    u_xlat9.x = 1.0f;
  }
  let x_482 : f32 = u_xlat9.x;
  let x_485 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_482) + x_485);
  let x_488 : f32 = u_xlat22;
  let x_490 : f32 = u_xlat2.x;
  let x_493 : f32 = u_xlat9.x;
  u_xlat22 = ((x_488 * x_490) + x_493);
  let x_495 : vec3<f32> = u_xlat4;
  let x_496 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(x_495, x_496);
  let x_504 : vec4<f32> = u_xlat2;
  let x_506 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_504.x, x_504.x));
  u_xlat2.x = x_506.x;
  let x_509 : f32 = u_xlat22;
  let x_511 : f32 = u_xlat2.x;
  u_xlat22 = (x_509 * x_511);
  let x_513 : f32 = u_xlat22;
  let x_517 : vec4<f32> = x_18.x_LightColor0;
  let x_519 : vec3<f32> = (vec3<f32>(x_513, x_513, x_513) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : vec3<f32> = vs_TEXCOORD1;
  let x_524 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_523, x_524);
  let x_526 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_526);
  let x_528 : f32 = u_xlat22;
  let x_530 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_528, x_528, x_528) * x_530);
  let x_534 : vec4<f32> = x_18.x_Color;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_543 : f32 = x_18.x_Metallic;
  let x_545 : f32 = x_18.x_Metallic;
  let x_547 : f32 = x_18.x_Metallic;
  let x_548 : vec3<f32> = vec3<f32>(x_543, x_545, x_547);
  let x_553 : vec4<f32> = u_xlat5;
  let x_558 : vec3<f32> = ((vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_559 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_562) * 0.959999979f) + 0.959999979f);
  let x_567 : f32 = u_xlat22;
  let x_570 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_567, x_567, x_567) * vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_575 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_575) + 1.0f);
  let x_578 : vec3<f32> = u_xlat0;
  let x_579 : f32 = u_xlat21;
  let x_582 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_578 * vec3<f32>(x_579, x_579, x_579)) + x_582);
  let x_584 : vec3<f32> = u_xlat0;
  let x_585 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat21;
  u_xlat21 = max(x_587, 0.001f);
  let x_590 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_590);
  let x_592 : f32 = u_xlat21;
  let x_594 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_592, x_592, x_592) * x_594);
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_596, x_597);
  let x_599 : vec3<f32> = u_xlat4;
  let x_600 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(x_599, x_600);
  let x_602 : f32 = u_xlat23;
  u_xlat23 = clamp(x_602, 0.0f, 1.0f);
  let x_604 : vec3<f32> = u_xlat4;
  let x_605 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_604, x_605);
  let x_609 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_609, 0.0f, 1.0f);
  let x_612 : vec3<f32> = u_xlat1;
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_612, x_613);
  let x_617 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_617, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat0.x;
  let x_624 : f32 = u_xlat0.x;
  u_xlat7.x = (x_622 * x_624);
  let x_627 : vec3<f32> = u_xlat7;
  let x_629 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_627.x, x_627.x), vec2<f32>(x_629, x_629));
  let x_634 : f32 = u_xlat7.x;
  u_xlat7.x = (x_634 + -0.5f);
  let x_639 : f32 = u_xlat23;
  u_xlat14 = (-(x_639) + 1.0f);
  let x_642 : f32 = u_xlat14;
  let x_643 : f32 = u_xlat14;
  u_xlat1.x = (x_642 * x_643);
  let x_647 : f32 = u_xlat1.x;
  let x_649 : f32 = u_xlat1.x;
  u_xlat1.x = (x_647 * x_649);
  let x_652 : f32 = u_xlat14;
  let x_654 : f32 = u_xlat1.x;
  u_xlat14 = (x_652 * x_654);
  let x_657 : f32 = u_xlat7.x;
  let x_658 : f32 = u_xlat14;
  u_xlat14 = ((x_657 * x_658) + 1.0f);
  let x_661 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_661)) + 1.0f);
  let x_668 : f32 = u_xlat1.x;
  let x_670 : f32 = u_xlat1.x;
  u_xlat8 = (x_668 * x_670);
  let x_672 : f32 = u_xlat8;
  let x_673 : f32 = u_xlat8;
  u_xlat8 = (x_672 * x_673);
  let x_676 : f32 = u_xlat1.x;
  let x_677 : f32 = u_xlat8;
  u_xlat1.x = (x_676 * x_677);
  let x_681 : f32 = u_xlat7.x;
  let x_683 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_681 * x_683) + 1.0f);
  let x_688 : f32 = u_xlat7.x;
  let x_689 : f32 = u_xlat14;
  u_xlat7.x = (x_688 * x_689);
  let x_692 : f32 = u_xlat22;
  let x_693 : f32 = u_xlat22;
  u_xlat14 = (x_692 * x_693);
  let x_695 : f32 = u_xlat14;
  u_xlat14 = max(x_695, 0.002f);
  let x_698 : f32 = u_xlat14;
  u_xlat1.x = (-(x_698) + 1.0f);
  let x_702 : f32 = u_xlat21;
  let x_705 : f32 = u_xlat1.x;
  let x_707 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_702) * x_705) + x_707);
  let x_709 : f32 = u_xlat23;
  let x_711 : f32 = u_xlat1.x;
  let x_713 : f32 = u_xlat14;
  u_xlat1.x = ((x_709 * x_711) + x_713);
  let x_716 : f32 = u_xlat21;
  let x_719 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_716) * x_719);
  let x_721 : f32 = u_xlat23;
  let x_722 : f32 = u_xlat8;
  let x_724 : f32 = u_xlat21;
  u_xlat21 = ((x_721 * x_722) + x_724);
  let x_726 : f32 = u_xlat21;
  u_xlat21 = (x_726 + 0.00001f);
  let x_728 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_728);
  let x_730 : f32 = u_xlat14;
  let x_731 : f32 = u_xlat14;
  u_xlat14 = (x_730 * x_731);
  let x_734 : f32 = u_xlat3.x;
  let x_735 : f32 = u_xlat14;
  let x_738 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_734 * x_735) + -(x_738));
  let x_743 : f32 = u_xlat1.x;
  let x_745 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_743 * x_745) + 1.0f);
  let x_749 : f32 = u_xlat14;
  u_xlat14 = (x_749 * 0.318309873f);
  let x_753 : f32 = u_xlat1.x;
  let x_755 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_753 * x_755) + 0.0000001f);
  let x_760 : f32 = u_xlat14;
  let x_762 : f32 = u_xlat1.x;
  u_xlat14 = (x_760 / x_762);
  let x_764 : f32 = u_xlat14;
  let x_765 : f32 = u_xlat21;
  u_xlat7.y = (x_764 * x_765);
  let x_768 : f32 = u_xlat23;
  let x_770 : vec3<f32> = u_xlat7;
  let x_772 : vec2<f32> = (vec2<f32>(x_768, x_768) * vec2<f32>(x_770.x, x_770.y));
  let x_773 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_772.x, x_772.y, x_773.z);
  let x_776 : f32 = u_xlat7.y;
  u_xlat14 = (x_776 * 3.141592741f);
  let x_779 : f32 = u_xlat14;
  u_xlat14 = max(x_779, 0.0f);
  let x_781 : vec4<f32> = u_xlat5;
  let x_783 : vec4<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_787 : f32 = u_xlat21;
  u_xlatb21 = !((x_787 == 0.0f));
  let x_789 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_789);
  let x_791 : f32 = u_xlat21;
  let x_792 : f32 = u_xlat14;
  u_xlat14 = (x_791 * x_792);
  let x_794 : vec3<f32> = u_xlat7;
  let x_796 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_794.x, x_794.x, x_794.x) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat2;
  let x_801 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801, x_801, x_801));
  let x_805 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_805) + 1.0f);
  let x_810 : f32 = u_xlat0.x;
  let x_812 : f32 = u_xlat0.x;
  u_xlat22 = (x_810 * x_812);
  let x_814 : f32 = u_xlat22;
  let x_815 : f32 = u_xlat22;
  u_xlat22 = (x_814 * x_815);
  let x_818 : f32 = u_xlat0.x;
  let x_819 : f32 = u_xlat22;
  u_xlat0.x = (x_818 * x_819);
  let x_822 : vec4<f32> = u_xlat5;
  let x_826 : vec3<f32> = (-(vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat2;
  let x_831 : vec3<f32> = u_xlat0;
  let x_834 : vec4<f32> = u_xlat5;
  let x_836 : vec3<f32> = ((vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_831.x, x_831.x, x_831.x)) + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec3<f32> = u_xlat7;
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_839 * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec3<f32> = u_xlat6;
  let x_844 : vec3<f32> = u_xlat1;
  let x_846 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_843 * x_844) + x_846);
  let x_849 : f32 = vs_TEXCOORD6;
  let x_851 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_849 / x_851);
  let x_853 : f32 = u_xlat21;
  u_xlat21 = (-(x_853) + 1.0f);
  let x_856 : f32 = u_xlat21;
  let x_858 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_856 * x_858);
  let x_860 : f32 = u_xlat21;
  u_xlat21 = max(x_860, 0.0f);
  let x_862 : f32 = u_xlat21;
  let x_865 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_862 * x_865);
  let x_867 : f32 = u_xlat21;
  let x_868 : f32 = u_xlat21;
  u_xlat21 = (x_867 * -(x_868));
  let x_871 : f32 = u_xlat21;
  u_xlat21 = exp2(x_871);
  let x_875 : vec3<f32> = u_xlat0;
  let x_876 : f32 = u_xlat21;
  let x_878 : vec3<f32> = (x_875 * vec3<f32>(x_876, x_876, x_876));
  let x_879 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

