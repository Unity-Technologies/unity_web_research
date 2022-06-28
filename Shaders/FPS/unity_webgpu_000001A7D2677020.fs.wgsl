type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
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
  x_ShadowMapTexture_TexelSize : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> u_xlat45 : f32;

var<private> u_xlatb45 : bool;

var<private> u_xlat32 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat47 : f32;

var<private> u_xlatb43 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb16 : bool;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat30 : f32;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlatb42 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_474 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat42 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat42;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat43;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_81 : vec2<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_81);
  u_xlat4 = vec2<f32>(x_82.x, x_82.w);
  let x_85 : vec3<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat5 = (vec3<f32>(x_85.z, x_85.y, x_85.x) + -(vec3<f32>(x_90.z, x_90.y, x_90.x)));
  let x_95 : vec3<f32> = u_xlat5;
  let x_99 : vec2<f32> = (vec2<f32>(x_95.x, x_95.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_100 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_100.x, x_99.x, x_100.z, x_99.y);
  let x_105 : f32 = x_21.x_Cutoff;
  let x_107 : f32 = x_21.x_Cutoff;
  u_xlat43 = (x_105 + x_107);
  let x_111 : f32 = u_xlat5.y;
  let x_114 : f32 = u_xlat43;
  u_xlat6.x = ((x_111 * 2.0f) + x_114);
  let x_120 : f32 = u_xlat5.y;
  let x_124 : f32 = x_21.x_Cutoff;
  u_xlat7.x = ((x_120 * 4.0f) + x_124);
  let x_129 : f32 = x_21.x_bounds.y;
  u_xlat43 = (x_129 + 0.200000003f);
  let x_137 : vec4<f32> = u_xlat6;
  let x_139 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_137.x, x_137.y));
  u_xlat44 = x_139.x;
  let x_143 : f32 = u_xlat6.w;
  u_xlat7.y = x_143;
  let x_149 : vec3<f32> = u_xlat7;
  let x_151 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_149.x, x_149.y));
  u_xlat45 = x_151.x;
  let x_153 : f32 = u_xlat44;
  let x_155 : f32 = u_xlat45;
  u_xlat44 = dot(vec2<f32>(x_153, x_153), vec2<f32>(x_155, x_155));
  let x_158 : f32 = u_xlat43;
  u_xlat45 = (x_158 * 0.5f);
  let x_162 : f32 = x_21.x_Cutoff;
  let x_163 : f32 = u_xlat43;
  let x_165 : f32 = u_xlat45;
  u_xlat43 = ((x_162 * x_163) + -(x_165));
  let x_172 : f32 = u_xlat5.y;
  let x_173 : f32 = u_xlat43;
  u_xlatb45 = (x_172 >= x_173);
  let x_176 : f32 = u_xlat43;
  let x_179 : f32 = x_21.x_EdgeSizeBot;
  u_xlat32 = (x_176 + -(x_179));
  let x_183 : f32 = u_xlat43;
  let x_184 : f32 = u_xlat32;
  u_xlat46 = (x_183 + -(x_184));
  let x_187 : f32 = u_xlat32;
  let x_190 : f32 = u_xlat5.y;
  u_xlat32 = (-(x_187) + x_190);
  let x_193 : f32 = u_xlat46;
  u_xlat46 = (1.0f / x_193);
  let x_195 : f32 = u_xlat46;
  let x_196 : f32 = u_xlat32;
  u_xlat32 = (x_195 * x_196);
  let x_198 : f32 = u_xlat32;
  u_xlat32 = clamp(x_198, 0.0f, 1.0f);
  let x_201 : f32 = u_xlat32;
  u_xlat46 = ((x_201 * -2.0f) + 3.0f);
  let x_206 : f32 = u_xlat32;
  let x_207 : f32 = u_xlat32;
  u_xlat32 = (x_206 * x_207);
  let x_209 : f32 = u_xlat43;
  let x_212 : f32 = x_21.x_EdgeSizeTop;
  u_xlat5.x = (x_209 + x_212);
  let x_215 : f32 = u_xlat43;
  let x_217 : f32 = u_xlat5.x;
  u_xlat43 = (x_215 + -(x_217));
  let x_221 : f32 = u_xlat5.x;
  let x_224 : f32 = u_xlat5.y;
  u_xlat5.x = (-(x_221) + x_224);
  let x_227 : f32 = u_xlat43;
  u_xlat43 = (1.0f / x_227);
  let x_229 : f32 = u_xlat43;
  let x_231 : f32 = u_xlat5.x;
  u_xlat43 = (x_229 * x_231);
  let x_233 : f32 = u_xlat43;
  u_xlat43 = clamp(x_233, 0.0f, 1.0f);
  let x_235 : f32 = u_xlat43;
  u_xlat5.x = ((x_235 * -2.0f) + 3.0f);
  let x_239 : f32 = u_xlat43;
  let x_240 : f32 = u_xlat43;
  u_xlat43 = (x_239 * x_240);
  let x_242 : f32 = u_xlat43;
  let x_244 : f32 = u_xlat5.x;
  u_xlat43 = (x_242 * x_244);
  let x_251 : vec2<f32> = vs_TEXCOORD0;
  let x_252 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_251);
  u_xlat5 = vec3<f32>(x_252.x, x_252.y, x_252.z);
  let x_254 : vec3<f32> = u_xlat5;
  let x_257 : vec4<f32> = x_21.x_Color;
  let x_259 : vec3<f32> = (x_254 * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_267);
  u_xlat7 = vec3<f32>(x_268.x, x_268.y, x_268.w);
  let x_272 : f32 = u_xlat7.z;
  let x_274 : f32 = u_xlat7.x;
  u_xlat7.x = (x_272 * x_274);
  let x_277 : vec3<f32> = u_xlat7;
  let x_283 : vec2<f32> = ((vec2<f32>(x_277.x, x_277.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_284 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_283.x, x_283.y, x_284.z);
  let x_287 : vec3<f32> = u_xlat7;
  let x_289 : vec3<f32> = u_xlat7;
  u_xlat47 = dot(vec2<f32>(x_287.x, x_287.y), vec2<f32>(x_289.x, x_289.y));
  let x_292 : f32 = u_xlat47;
  u_xlat47 = min(x_292, 1.0f);
  let x_294 : f32 = u_xlat47;
  u_xlat47 = (-(x_294) + 1.0f);
  let x_297 : f32 = u_xlat47;
  u_xlat7.z = sqrt(x_297);
  let x_300 : vec2<f32> = u_xlat4;
  let x_303 : f32 = x_21.x_Metallic;
  let x_306 : f32 = x_21.x_Glossiness;
  u_xlat4 = (x_300 * vec2<f32>(x_303, x_306));
  let x_309 : f32 = u_xlat46;
  let x_311 : f32 = u_xlat32;
  u_xlat32 = ((-(x_309) * x_311) + 1.0f);
  let x_314 : f32 = u_xlat32;
  let x_316 : f32 = u_xlat4.x;
  u_xlat4.x = (x_314 * x_316);
  let x_319 : bool = u_xlatb45;
  u_xlat45 = select(1.0f, 0.0f, x_319);
  let x_321 : f32 = u_xlat44;
  let x_322 : f32 = u_xlat43;
  let x_324 : f32 = u_xlat45;
  u_xlat43 = ((x_321 * x_322) + x_324);
  let x_326 : f32 = u_xlat43;
  let x_328 : f32 = x_21.x_Cutoff;
  u_xlat43 = (x_326 + -(x_328));
  let x_331 : f32 = u_xlat43;
  let x_334 : f32 = x_21.x_Cutoff2;
  u_xlat43 = (x_331 + -(x_334));
  let x_338 : f32 = u_xlat43;
  u_xlatb43 = (x_338 < 0.0f);
  let x_340 : bool = u_xlatb43;
  if (((select(0i, 1i, x_340) * -1i) != 0i)) {
    discard;
  }
  let x_349 : vec3<f32> = vs_TEXCOORD4;
  let x_353 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat8 = (vec4<f32>(x_349.y, x_349.y, x_349.y, x_349.y) * x_353);
  let x_356 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_357 : vec3<f32> = vs_TEXCOORD4;
  let x_360 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_356 * vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x)) + x_360);
  let x_364 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_365 : vec3<f32> = vs_TEXCOORD4;
  let x_368 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_364 * vec4<f32>(x_365.z, x_365.z, x_365.z, x_365.z)) + x_368);
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat8 = (x_370 + x_372);
  let x_377 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat9.x = x_377;
  let x_380 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat9.y = x_380;
  let x_383 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat9.z = x_383;
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec4<f32> = u_xlat9;
  u_xlat43 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec3<f32> = vs_TEXCOORD4;
  let x_393 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_396 : vec3<f32> = (x_390 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_406 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_406);
  let x_409 : f32 = u_xlat43;
  let x_412 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_409) + x_412);
  let x_416 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_418 : f32 = u_xlat2.x;
  let x_420 : f32 = u_xlat43;
  u_xlat43 = ((x_416 * x_418) + x_420);
  let x_422 : f32 = u_xlat43;
  let x_425 : f32 = x_21.x_LightShadowData.z;
  let x_428 : f32 = x_21.x_LightShadowData.w;
  u_xlat43 = ((x_422 * x_425) + x_428);
  let x_430 : f32 = u_xlat43;
  u_xlat43 = clamp(x_430, 0.0f, 1.0f);
  let x_435 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_435 == 1.0f);
  let x_437 : bool = u_xlatb2;
  if (x_437) {
    let x_441 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_441 == 1.0f);
    let x_444 : vec3<f32> = vs_TEXCOORD4;
    let x_448 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat16 = (vec3<f32>(x_444.y, x_444.y, x_444.y) * vec3<f32>(x_448.x, x_448.y, x_448.z));
    let x_452 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_454 : vec3<f32> = vs_TEXCOORD4;
    let x_457 : vec3<f32> = u_xlat16;
    u_xlat16 = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.x, x_454.x, x_454.x)) + x_457);
    let x_460 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_462 : vec3<f32> = vs_TEXCOORD4;
    let x_465 : vec3<f32> = u_xlat16;
    u_xlat16 = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.z, x_462.z, x_462.z)) + x_465);
    let x_467 : vec3<f32> = u_xlat16;
    let x_469 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat16 = (x_467 + vec3<f32>(x_469.x, x_469.y, x_469.z));
    let x_472 : bool = u_xlatb2;
    if (x_472) {
      let x_477 : vec3<f32> = u_xlat16;
      x_474 = x_477;
    } else {
      let x_479 : vec3<f32> = vs_TEXCOORD4;
      x_474 = x_479;
    }
    let x_480 : vec3<f32> = x_474;
    let x_481 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
    let x_483 : vec4<f32> = u_xlat2;
    let x_487 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_489 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) + -(x_487));
    let x_490 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
    let x_492 : vec4<f32> = u_xlat2;
    let x_496 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * x_496);
    let x_498 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_498.x, x_497.x, x_497.y, x_497.z);
    let x_501 : f32 = u_xlat2.y;
    u_xlat16.x = ((x_501 * 0.25f) + 0.75f);
    let x_508 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat45 = ((x_508 * 0.5f) + 0.75f);
    let x_512 : f32 = u_xlat16.x;
    let x_513 : f32 = u_xlat45;
    u_xlat2.x = max(x_512, x_513);
    let x_524 : vec4<f32> = u_xlat2;
    let x_526 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_524.x, x_524.z, x_524.w));
    u_xlat2 = x_526;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_532 : vec4<f32> = u_xlat2;
  let x_534 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_532, x_534);
  let x_538 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_538, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat43;
  u_xlatb16 = (x_542 < 0.99000001f);
  let x_545 : bool = u_xlatb16;
  if (x_545) {
    let x_548 : vec3<f32> = vs_TEXCOORD4;
    let x_551 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
    u_xlat9 = (vec4<f32>(x_548.y, x_548.y, x_548.y, x_548.y) * x_551);
    let x_554 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
    let x_555 : vec3<f32> = vs_TEXCOORD4;
    let x_558 : vec4<f32> = u_xlat9;
    u_xlat9 = ((x_554 * vec4<f32>(x_555.x, x_555.x, x_555.x, x_555.x)) + x_558);
    let x_561 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
    let x_562 : vec3<f32> = vs_TEXCOORD4;
    let x_565 : vec4<f32> = u_xlat9;
    u_xlat9 = ((x_561 * vec4<f32>(x_562.z, x_562.z, x_562.z, x_562.z)) + x_565);
    let x_567 : vec4<f32> = u_xlat9;
    let x_569 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
    u_xlat9 = (x_567 + x_569);
    let x_571 : vec4<f32> = u_xlat9;
    let x_573 : vec4<f32> = u_xlat9;
    u_xlat16 = (vec3<f32>(x_571.x, x_571.y, x_571.z) / vec3<f32>(x_573.w, x_573.w, x_573.w));
    let x_576 : vec3<f32> = u_xlat16;
    let x_580 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_584 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_580.z, x_580.w)) + vec2<f32>(0.5f, 0.5f));
    let x_585 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
    let x_587 : vec4<f32> = u_xlat9;
    let x_589 : vec2<f32> = floor(vec2<f32>(x_587.x, x_587.y));
    let x_590 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
    let x_592 : vec3<f32> = u_xlat16;
    let x_595 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_598 : vec4<f32> = u_xlat9;
    let x_601 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_595.z, x_595.w)) + -(vec2<f32>(x_598.x, x_598.y)));
    let x_602 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_601.x, x_601.y, x_602.z);
    let x_605 : vec3<f32> = u_xlat16;
    u_xlat10 = (vec4<f32>(x_605.x, x_605.x, x_605.y, x_605.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_610 : vec4<f32> = u_xlat10;
    let x_612 : vec4<f32> = u_xlat10;
    let x_614 : vec2<f32> = (vec2<f32>(x_610.x, x_610.z) * vec2<f32>(x_612.x, x_612.z));
    let x_615 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_614.x, x_615.y, x_615.z, x_614.y);
    let x_618 : vec4<f32> = u_xlat11;
    let x_621 : vec3<f32> = u_xlat16;
    u_xlat37 = ((vec2<f32>(x_618.x, x_618.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_621.x, x_621.y)));
    let x_625 : vec3<f32> = u_xlat16;
    let x_629 : vec2<f32> = (-(vec2<f32>(x_625.x, x_625.y)) + vec2<f32>(1.0f, 1.0f));
    let x_630 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_629.x, x_630.y, x_629.y, x_630.w);
    let x_633 : vec3<f32> = u_xlat16;
    let x_636 : vec2<f32> = min(vec2<f32>(x_633.x, x_633.y), vec2<f32>(0.0f, 0.0f));
    let x_637 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
    let x_639 : vec4<f32> = u_xlat12;
    let x_642 : vec4<f32> = u_xlat12;
    let x_645 : vec4<f32> = u_xlat10;
    let x_647 : vec2<f32> = ((-(vec2<f32>(x_639.x, x_639.y)) * vec2<f32>(x_642.x, x_642.y)) + vec2<f32>(x_645.x, x_645.z));
    let x_648 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_647.x, x_648.y, x_647.y, x_648.w);
    let x_650 : vec3<f32> = u_xlat16;
    let x_652 : vec2<f32> = max(vec2<f32>(x_650.x, x_650.y), vec2<f32>(0.0f, 0.0f));
    let x_653 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_652.x, x_652.y, x_653.z);
    let x_655 : vec3<f32> = u_xlat16;
    let x_658 : vec3<f32> = u_xlat16;
    let x_661 : vec4<f32> = u_xlat10;
    let x_663 : vec2<f32> = ((-(vec2<f32>(x_655.x, x_655.y)) * vec2<f32>(x_658.x, x_658.y)) + vec2<f32>(x_661.y, x_661.w));
    let x_664 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_663.x, x_663.y, x_664.z);
    let x_667 : f32 = u_xlat37.x;
    u_xlat12.x = x_667;
    let x_670 : f32 = u_xlat10.x;
    u_xlat12.y = x_670;
    let x_673 : f32 = u_xlat16.x;
    u_xlat12.z = x_673;
    let x_676 : f32 = u_xlat11.x;
    u_xlat12.w = x_676;
    let x_678 : vec4<f32> = u_xlat12;
    u_xlat12 = (x_678 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_684 : f32 = u_xlat37.y;
    u_xlat11.x = x_684;
    let x_687 : f32 = u_xlat10.z;
    u_xlat11.y = x_687;
    let x_690 : f32 = u_xlat16.y;
    u_xlat11.z = x_690;
    let x_692 : vec4<f32> = u_xlat11;
    u_xlat10 = (x_692 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_694 : vec4<f32> = u_xlat12;
    let x_696 : vec4<f32> = u_xlat12;
    u_xlat11 = (vec4<f32>(x_694.y, x_694.w, x_694.y, x_694.w) + vec4<f32>(x_696.x, x_696.z, x_696.x, x_696.z));
    let x_700 : vec4<f32> = u_xlat10;
    let x_702 : vec4<f32> = u_xlat10;
    u_xlat13 = (vec4<f32>(x_700.y, x_700.y, x_700.w, x_700.w) + vec4<f32>(x_702.x, x_702.x, x_702.z, x_702.z));
    let x_705 : vec4<f32> = u_xlat12;
    let x_707 : vec4<f32> = u_xlat11;
    let x_709 : vec2<f32> = (vec2<f32>(x_705.y, x_705.w) / vec2<f32>(x_707.z, x_707.w));
    let x_710 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_709.x, x_709.y, x_710.z);
    let x_712 : vec3<f32> = u_xlat16;
    let x_716 : vec2<f32> = (vec2<f32>(x_712.x, x_712.y) + vec2<f32>(-1.5f, 0.5f));
    let x_717 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_716.x, x_716.y, x_717.z);
    let x_719 : vec4<f32> = u_xlat10;
    let x_721 : vec4<f32> = u_xlat13;
    u_xlat37 = (vec2<f32>(x_719.y, x_719.w) / vec2<f32>(x_721.y, x_721.w));
    let x_724 : vec2<f32> = u_xlat37;
    u_xlat37 = (x_724 + vec2<f32>(-1.5f, 0.5f));
    let x_726 : vec3<f32> = u_xlat16;
    let x_729 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_731 : vec2<f32> = (vec2<f32>(x_726.x, x_726.y) * vec2<f32>(x_729.x, x_729.x));
    let x_732 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
    let x_734 : vec2<f32> = u_xlat37;
    let x_736 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_738 : vec2<f32> = (x_734 * vec2<f32>(x_736.y, x_736.y));
    let x_739 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_739.x, x_739.y, x_738.x, x_738.y);
    let x_741 : vec4<f32> = u_xlat11;
    let x_742 : vec4<f32> = u_xlat13;
    u_xlat11 = (x_741 * x_742);
    let x_744 : vec4<f32> = u_xlat9;
    let x_747 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_750 : vec4<f32> = u_xlat10;
    u_xlat12 = ((vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y) * vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y)) + vec4<f32>(x_750.x, x_750.z, x_750.y, x_750.z));
    let x_754 : vec4<f32> = u_xlat12;
    let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
    let x_757 : f32 = u_xlat16.z;
    txVec0 = vec3<f32>(x_755.x, x_755.y, x_757);
    let x_769 : vec3<f32> = txVec0;
    let x_771 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_769.xy, x_769.z);
    u_xlat16.x = x_771;
    let x_774 : vec4<f32> = u_xlat12;
    let x_775 : vec2<f32> = vec2<f32>(x_774.z, x_774.w);
    let x_777 : f32 = u_xlat16.z;
    txVec1 = vec3<f32>(x_775.x, x_775.y, x_777);
    let x_785 : vec3<f32> = txVec1;
    let x_787 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_785.xy, x_785.z);
    u_xlat30 = x_787;
    let x_788 : f32 = u_xlat30;
    let x_790 : f32 = u_xlat11.y;
    u_xlat30 = (x_788 * x_790);
    let x_793 : f32 = u_xlat11.x;
    let x_795 : f32 = u_xlat16.x;
    let x_797 : f32 = u_xlat30;
    u_xlat16.x = ((x_793 * x_795) + x_797);
    let x_800 : vec4<f32> = u_xlat9;
    let x_803 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_806 : vec4<f32> = u_xlat10;
    u_xlat9 = ((vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) * vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y)) + vec4<f32>(x_806.x, x_806.w, x_806.y, x_806.w));
    let x_810 : vec4<f32> = u_xlat9;
    let x_811 : vec2<f32> = vec2<f32>(x_810.x, x_810.y);
    let x_813 : f32 = u_xlat16.z;
    txVec2 = vec3<f32>(x_811.x, x_811.y, x_813);
    let x_820 : vec3<f32> = txVec2;
    let x_822 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_820.xy, x_820.z);
    u_xlat30 = x_822;
    let x_824 : f32 = u_xlat11.z;
    let x_825 : f32 = u_xlat30;
    let x_828 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_824 * x_825) + x_828);
    let x_832 : vec4<f32> = u_xlat9;
    let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
    let x_835 : f32 = u_xlat16.z;
    txVec3 = vec3<f32>(x_833.x, x_833.y, x_835);
    let x_842 : vec3<f32> = txVec3;
    let x_844 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_842.xy, x_842.z);
    u_xlat30 = x_844;
    let x_846 : f32 = u_xlat11.w;
    let x_847 : f32 = u_xlat30;
    let x_850 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_846 * x_847) + x_850);
    let x_854 : f32 = x_21.x_LightShadowData.x;
    u_xlat30 = (-(x_854) + 1.0f);
    let x_858 : f32 = u_xlat16.x;
    let x_859 : f32 = u_xlat30;
    let x_862 : f32 = x_21.x_LightShadowData.x;
    u_xlat16.x = ((x_858 * x_859) + x_862);
  } else {
    u_xlat16.x = 1.0f;
  }
  let x_868 : f32 = u_xlat16.x;
  let x_871 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_868) + x_871);
  let x_874 : f32 = u_xlat43;
  let x_876 : f32 = u_xlat2.x;
  let x_879 : f32 = u_xlat16.x;
  u_xlat43 = ((x_874 * x_876) + x_879);
  let x_882 : f32 = u_xlat8.z;
  u_xlatb2 = (0.0f < x_882);
  let x_884 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_884);
  let x_887 : vec4<f32> = u_xlat8;
  let x_889 : vec4<f32> = u_xlat8;
  let x_891 : vec2<f32> = (vec2<f32>(x_887.x, x_887.y) / vec2<f32>(x_889.w, x_889.w));
  let x_892 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_891.x, x_891.y, x_892.z);
  let x_894 : vec3<f32> = u_xlat16;
  let x_896 : vec2<f32> = (vec2<f32>(x_894.x, x_894.y) + vec2<f32>(0.5f, 0.5f));
  let x_897 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_896.x, x_896.y, x_897.z);
  let x_904 : vec3<f32> = u_xlat16;
  let x_906 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_904.x, x_904.y));
  u_xlat16.x = x_906.w;
  let x_910 : f32 = u_xlat16.x;
  let x_912 : f32 = u_xlat2.x;
  u_xlat2.x = (x_910 * x_912);
  let x_915 : vec4<f32> = u_xlat8;
  let x_917 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_926 : vec3<f32> = u_xlat16;
  let x_928 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_926.x, x_926.x));
  u_xlat16.x = x_928.x;
  let x_932 : f32 = u_xlat16.x;
  let x_934 : f32 = u_xlat2.x;
  u_xlat2.x = (x_932 * x_934);
  let x_937 : f32 = u_xlat43;
  let x_939 : f32 = u_xlat2.x;
  u_xlat43 = (x_937 * x_939);
  let x_942 : vec3<f32> = vs_TEXCOORD1;
  let x_943 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_942, x_943);
  let x_947 : vec3<f32> = vs_TEXCOORD2;
  let x_948 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_947, x_948);
  let x_952 : vec3<f32> = vs_TEXCOORD3;
  let x_953 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_952, x_953);
  let x_956 : vec4<f32> = u_xlat2;
  let x_958 : vec4<f32> = u_xlat2;
  u_xlat44 = dot(vec3<f32>(x_956.x, x_956.y, x_956.z), vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_961);
  let x_963 : f32 = u_xlat44;
  let x_965 : vec4<f32> = u_xlat2;
  let x_967 : vec3<f32> = (vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : f32 = u_xlat43;
  let x_974 : vec4<f32> = x_21.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec3<f32> = u_xlat5;
  let x_979 : vec4<f32> = x_21.x_Color;
  u_xlat5 = ((x_977 * vec3<f32>(x_979.x, x_979.y, x_979.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_985 : vec2<f32> = u_xlat4;
  let x_987 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_985.x, x_985.x, x_985.x) * x_987) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_993 : f32 = u_xlat4.x;
  u_xlat43 = ((-(x_993) * 0.959999979f) + 0.959999979f);
  let x_998 : f32 = u_xlat43;
  let x_1000 : vec4<f32> = u_xlat6;
  let x_1002 : vec3<f32> = (vec3<f32>(x_998, x_998, x_998) * vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1006 : f32 = u_xlat4.y;
  let x_1008 : f32 = u_xlat32;
  u_xlat43 = ((-(x_1006) * x_1008) + 1.0f);
  let x_1011 : vec3<f32> = u_xlat0;
  let x_1012 : f32 = u_xlat42;
  let x_1015 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_1011 * vec3<f32>(x_1012, x_1012, x_1012)) + x_1015);
  let x_1017 : vec3<f32> = u_xlat0;
  let x_1018 : vec3<f32> = u_xlat0;
  u_xlat42 = dot(x_1017, x_1018);
  let x_1020 : f32 = u_xlat42;
  u_xlat42 = max(x_1020, 0.001f);
  let x_1023 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1023);
  let x_1025 : f32 = u_xlat42;
  let x_1027 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1025, x_1025, x_1025) * x_1027);
  let x_1029 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
  let x_1033 : vec4<f32> = u_xlat2;
  let x_1035 : vec3<f32> = u_xlat1;
  u_xlat44 = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), x_1035);
  let x_1037 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1037, 0.0f, 1.0f);
  let x_1039 : vec4<f32> = u_xlat2;
  let x_1041 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_1039.x, x_1039.y, x_1039.z), x_1041);
  let x_1045 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1045, 0.0f, 1.0f);
  let x_1048 : vec3<f32> = u_xlat1;
  let x_1049 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_1048, x_1049);
  let x_1053 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1053, 0.0f, 1.0f);
  let x_1058 : f32 = u_xlat0.x;
  let x_1060 : f32 = u_xlat0.x;
  u_xlat14.x = (x_1058 * x_1060);
  let x_1063 : vec3<f32> = u_xlat14;
  let x_1065 : f32 = u_xlat43;
  u_xlat14.x = dot(vec2<f32>(x_1063.x, x_1063.x), vec2<f32>(x_1065, x_1065));
  let x_1070 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1070 + -0.5f);
  let x_1075 : f32 = u_xlat44;
  u_xlat28 = (-(x_1075) + 1.0f);
  let x_1078 : f32 = u_xlat28;
  let x_1079 : f32 = u_xlat28;
  u_xlat1.x = (x_1078 * x_1079);
  let x_1083 : f32 = u_xlat1.x;
  let x_1085 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1083 * x_1085);
  let x_1088 : f32 = u_xlat28;
  let x_1090 : f32 = u_xlat1.x;
  u_xlat28 = (x_1088 * x_1090);
  let x_1093 : f32 = u_xlat14.x;
  let x_1094 : f32 = u_xlat28;
  u_xlat28 = ((x_1093 * x_1094) + 1.0f);
  let x_1097 : f32 = u_xlat42;
  u_xlat1.x = (-(abs(x_1097)) + 1.0f);
  let x_1104 : f32 = u_xlat1.x;
  let x_1106 : f32 = u_xlat1.x;
  u_xlat15 = (x_1104 * x_1106);
  let x_1108 : f32 = u_xlat15;
  let x_1109 : f32 = u_xlat15;
  u_xlat15 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat1.x;
  let x_1113 : f32 = u_xlat15;
  u_xlat1.x = (x_1112 * x_1113);
  let x_1117 : f32 = u_xlat14.x;
  let x_1119 : f32 = u_xlat1.x;
  u_xlat14.x = ((x_1117 * x_1119) + 1.0f);
  let x_1124 : f32 = u_xlat14.x;
  let x_1125 : f32 = u_xlat28;
  u_xlat14.x = (x_1124 * x_1125);
  let x_1128 : f32 = u_xlat43;
  let x_1129 : f32 = u_xlat43;
  u_xlat28 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat28;
  u_xlat28 = max(x_1131, 0.002f);
  let x_1134 : f32 = u_xlat28;
  u_xlat1.x = (-(x_1134) + 1.0f);
  let x_1138 : f32 = u_xlat42;
  let x_1141 : f32 = u_xlat1.x;
  let x_1143 : f32 = u_xlat28;
  u_xlat15 = ((abs(x_1138) * x_1141) + x_1143);
  let x_1145 : f32 = u_xlat44;
  let x_1147 : f32 = u_xlat1.x;
  let x_1149 : f32 = u_xlat28;
  u_xlat1.x = ((x_1145 * x_1147) + x_1149);
  let x_1152 : f32 = u_xlat42;
  let x_1155 : f32 = u_xlat1.x;
  u_xlat42 = (abs(x_1152) * x_1155);
  let x_1157 : f32 = u_xlat44;
  let x_1158 : f32 = u_xlat15;
  let x_1160 : f32 = u_xlat42;
  u_xlat42 = ((x_1157 * x_1158) + x_1160);
  let x_1162 : f32 = u_xlat42;
  u_xlat42 = (x_1162 + 0.00001f);
  let x_1165 : f32 = u_xlat42;
  u_xlat42 = (0.5f / x_1165);
  let x_1167 : f32 = u_xlat28;
  let x_1168 : f32 = u_xlat28;
  u_xlat28 = (x_1167 * x_1168);
  let x_1171 : f32 = u_xlat2.x;
  let x_1172 : f32 = u_xlat28;
  let x_1175 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1171 * x_1172) + -(x_1175));
  let x_1180 : f32 = u_xlat1.x;
  let x_1182 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1180 * x_1182) + 1.0f);
  let x_1186 : f32 = u_xlat28;
  u_xlat28 = (x_1186 * 0.318309873f);
  let x_1190 : f32 = u_xlat1.x;
  let x_1192 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1190 * x_1192) + 0.0000001f);
  let x_1197 : f32 = u_xlat28;
  let x_1199 : f32 = u_xlat1.x;
  u_xlat28 = (x_1197 / x_1199);
  let x_1201 : f32 = u_xlat28;
  let x_1202 : f32 = u_xlat42;
  u_xlat14.y = (x_1201 * x_1202);
  let x_1205 : f32 = u_xlat44;
  let x_1207 : vec3<f32> = u_xlat14;
  let x_1209 : vec2<f32> = (vec2<f32>(x_1205, x_1205) * vec2<f32>(x_1207.x, x_1207.y));
  let x_1210 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1209.x, x_1209.y, x_1210.z);
  let x_1213 : f32 = u_xlat14.y;
  u_xlat28 = (x_1213 * 3.141592741f);
  let x_1216 : f32 = u_xlat28;
  u_xlat28 = max(x_1216, 0.0f);
  let x_1218 : vec3<f32> = u_xlat5;
  let x_1219 : vec3<f32> = u_xlat5;
  u_xlat42 = dot(x_1218, x_1219);
  let x_1222 : f32 = u_xlat42;
  u_xlatb42 = !((x_1222 == 0.0f));
  let x_1224 : bool = u_xlatb42;
  u_xlat42 = select(0.0f, 1.0f, x_1224);
  let x_1226 : f32 = u_xlat42;
  let x_1227 : f32 = u_xlat28;
  u_xlat28 = (x_1226 * x_1227);
  let x_1229 : vec3<f32> = u_xlat14;
  let x_1231 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_1229.x, x_1229.x, x_1229.x) * x_1231);
  let x_1233 : vec3<f32> = u_xlat7;
  let x_1234 : f32 = u_xlat28;
  u_xlat14 = (x_1233 * vec3<f32>(x_1234, x_1234, x_1234));
  let x_1238 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1238) + 1.0f);
  let x_1243 : f32 = u_xlat0.x;
  let x_1245 : f32 = u_xlat0.x;
  u_xlat43 = (x_1243 * x_1245);
  let x_1247 : f32 = u_xlat43;
  let x_1248 : f32 = u_xlat43;
  u_xlat43 = (x_1247 * x_1248);
  let x_1251 : f32 = u_xlat0.x;
  let x_1252 : f32 = u_xlat43;
  u_xlat0.x = (x_1251 * x_1252);
  let x_1255 : vec3<f32> = u_xlat5;
  let x_1258 : vec3<f32> = (-(x_1255) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec4<f32> = u_xlat2;
  let x_1263 : vec3<f32> = u_xlat0;
  let x_1266 : vec3<f32> = u_xlat5;
  let x_1267 : vec3<f32> = ((vec3<f32>(x_1261.x, x_1261.y, x_1261.z) * vec3<f32>(x_1263.x, x_1263.x, x_1263.x)) + x_1266);
  let x_1268 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1270 : vec3<f32> = u_xlat14;
  let x_1271 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1270 * vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1276 : vec4<f32> = u_xlat6;
  let x_1278 : vec3<f32> = u_xlat1;
  let x_1280 : vec3<f32> = u_xlat0;
  let x_1281 : vec3<f32> = ((vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * x_1278) + x_1280);
  let x_1282 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

