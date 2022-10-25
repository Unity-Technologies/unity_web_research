struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_168 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_596 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_693 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_123 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb11 : bool;
  var u_xlat11 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var u_xlat27 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat7 : vec3<f32>;
  var x_842 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat8 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat24;
  let x_103 : f32 = u_xlat16;
  u_xlat16 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat16;
  u_xlat16 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat8;
  let x_110 : f32 = u_xlat16;
  u_xlat8 = (x_109 / x_110);
  let x_112 : f32 = u_xlat8;
  u_xlat8 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat8;
  u_xlat8 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb16;
  if (x_122) {
    let x_126 : f32 = u_xlat8;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat8 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat8;
  u_xlatb8 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb8;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat8;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres0;
  let x_173 : vec3<f32> = (x_163 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres1;
  let x_182 : vec3<f32> = (x_177 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_194 : vec3<f32> = vs_TEXCOORD1;
  let x_196 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_194 + -(vec3<f32>(x_196.x, x_196.y, x_196.z)));
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_213 : vec3<f32> = u_xlat5;
  let x_214 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_213, x_214);
  let x_218 : vec3<f32> = u_xlat6;
  let x_219 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_218, x_219);
  let x_225 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = x_168.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_225 < x_228);
  let x_231 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_247);
  let x_253 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_253);
  let x_257 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_257);
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_262.y, x_262.z, x_262.w));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec3<f32> = max(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_270.x, x_270.y, x_270.z);
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_273, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_279 : f32 = u_xlat8;
  u_xlat8 = (-(x_279) + 4.0f);
  let x_284 : f32 = u_xlat8;
  u_xlatu8 = u32(x_284);
  let x_288 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_288) << bitcast<u32>(2i));
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : i32 = u_xlati8;
  let x_296 : i32 = u_xlati8;
  let x_300 : vec4<f32> = x_168.x_MainLightWorldToShadow[((x_293 + 1i) / 4i)][((x_296 + 1i) % 4i)];
  let x_302 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : i32 = u_xlati8;
  let x_307 : i32 = u_xlati8;
  let x_310 : vec4<f32> = x_168.x_MainLightWorldToShadow[(x_305 / 4i)][(x_307 % 4i)];
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.x, x_312.x, x_312.x)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : i32 = u_xlati8;
  let x_323 : i32 = u_xlati8;
  let x_327 : vec4<f32> = x_168.x_MainLightWorldToShadow[((x_320 + 2i) / 4i)][((x_323 + 2i) % 4i)];
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : i32 = u_xlati8;
  let x_342 : i32 = u_xlati8;
  let x_346 : vec4<f32> = x_168.x_MainLightWorldToShadow[((x_339 + 3i) / 4i)][((x_342 + 3i) % 4i)];
  let x_348 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : f32 = vs_TEXCOORD1.y;
  let x_355 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8 = (x_352 * x_355);
  let x_358 : f32 = x_44.unity_MatrixV[0i].z;
  let x_360 : f32 = vs_TEXCOORD1.x;
  let x_362 : f32 = u_xlat8;
  u_xlat8 = ((x_358 * x_360) + x_362);
  let x_365 : f32 = x_44.unity_MatrixV[2i].z;
  let x_367 : f32 = vs_TEXCOORD1.z;
  let x_369 : f32 = u_xlat8;
  u_xlat8 = ((x_365 * x_367) + x_369);
  let x_371 : f32 = u_xlat8;
  let x_373 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8 = (x_371 + x_373);
  let x_375 : f32 = u_xlat8;
  let x_379 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8 = (-(x_375) + -(x_379));
  let x_382 : f32 = u_xlat8;
  u_xlat8 = max(x_382, 0.0f);
  let x_384 : f32 = u_xlat8;
  let x_387 : f32 = x_44.unity_FogParams.x;
  u_xlat8 = (x_384 * x_387);
  let x_395 : vec2<f32> = vs_TEXCOORD7;
  let x_397 : f32 = x_44.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_395, x_397);
  u_xlat4 = x_398;
  let x_403 : vec2<f32> = vs_TEXCOORD7;
  let x_405 : f32 = x_44.x_GlobalMipBias.x;
  let x_406 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_403, x_405);
  u_xlat5 = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : vec4<f32> = u_xlat4;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec3<f32> = u_xlat2;
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_415, vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : f32 = u_xlat24;
  u_xlat24 = (x_419 + 0.5f);
  let x_421 : f32 = u_xlat24;
  let x_423 : vec3<f32> = u_xlat5;
  let x_424 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * x_423);
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_428 : f32 = u_xlat4.w;
  u_xlat24 = max(x_428, 0.0001f);
  let x_430 : vec4<f32> = u_xlat4;
  let x_432 : f32 = u_xlat24;
  let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) / vec3<f32>(x_432, x_432, x_432));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_439 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_440 : vec2<f32> = vec2<f32>(x_439.x, x_439.y);
  let x_444 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_440.x, x_440.y));
  let x_445 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_444.x, x_444.y, x_445.z);
  let x_447 : vec3<f32> = u_xlat5;
  let x_449 : vec4<f32> = hlslcc_FragCoord;
  let x_451 : vec2<f32> = (vec2<f32>(x_447.x, x_447.y) * vec2<f32>(x_449.x, x_449.y));
  let x_452 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_451.x, x_451.y, x_452.z);
  let x_455 : f32 = u_xlat5.y;
  let x_458 : f32 = x_44.x_ScaleBiasRt.x;
  let x_461 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat24 = ((x_455 * x_458) + x_461);
  let x_463 : f32 = u_xlat24;
  u_xlat5.z = (-(x_463) + 1.0f);
  let x_472 : vec3<f32> = u_xlat5;
  let x_475 : f32 = x_44.x_GlobalMipBias.x;
  let x_476 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_472.x, x_472.z), x_475);
  u_xlat24 = x_476.x;
  let x_478 : f32 = u_xlat24;
  u_xlat1.x = (x_478 + -1.0f);
  let x_482 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_484 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_482 * x_484) + 1.0f);
  let x_488 : f32 = u_xlat24;
  u_xlat24 = min(x_488, 1.0f);
  let x_491 : vec4<f32> = u_xlat3;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  let x_494 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_492.x, x_492.y, x_494);
  let x_507 : vec3<f32> = txVec0;
  let x_509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_507.xy, x_507.z);
  u_xlat26 = x_509;
  let x_511 : f32 = x_168.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_511) + 1.0f);
  let x_515 : f32 = u_xlat26;
  let x_517 : f32 = x_168.x_MainLightShadowParams.x;
  let x_520 : f32 = u_xlat3.x;
  u_xlat26 = ((x_515 * x_517) + x_520);
  let x_523 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_523);
  let x_528 : f32 = u_xlat3.z;
  u_xlatb11 = (x_528 >= 1.0f);
  let x_530 : bool = u_xlatb11;
  let x_532 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_530 | x_532);
  let x_536 : bool = u_xlatb3.x;
  let x_537 : f32 = u_xlat26;
  u_xlat26 = select(x_537, 1.0f, x_536);
  let x_539 : vec3<f32> = vs_TEXCOORD1;
  let x_543 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_545 : vec3<f32> = (x_539 + -(x_543));
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat3;
  let x_550 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_548.x, x_548.y, x_548.z), vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_555 : f32 = u_xlat3.x;
  let x_557 : f32 = x_168.x_MainLightShadowParams.z;
  let x_560 : f32 = x_168.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_555 * x_557) + x_560);
  let x_564 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_564, 0.0f, 1.0f);
  let x_568 : f32 = u_xlat26;
  u_xlat11 = (-(x_568) + 1.0f);
  let x_572 : f32 = u_xlat3.x;
  let x_573 : f32 = u_xlat11;
  let x_575 : f32 = u_xlat26;
  u_xlat26 = ((x_572 * x_573) + x_575);
  let x_577 : vec4<f32> = u_xlat1;
  let x_580 : vec4<f32> = x_44.x_MainLightColor;
  let x_582 : vec3<f32> = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : f32 = u_xlat24;
  let x_587 : vec4<f32> = u_xlat4;
  let x_589 : vec3<f32> = (vec3<f32>(x_585, x_585, x_585) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : f32 = u_xlat26;
  let x_598 : f32 = x_596.unity_LightData.z;
  u_xlat24 = (x_592 * x_598);
  let x_600 : f32 = u_xlat24;
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : vec3<f32> = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec3<f32> = u_xlat2;
  let x_609 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_607, vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : f32 = u_xlat24;
  u_xlat24 = clamp(x_612, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat24;
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat1;
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = (vec3<f32>(x_621.y, x_621.z, x_621.w) * vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_630 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_632 : f32 = x_596.unity_LightData.y;
  u_xlat24 = min(x_630, x_632);
  let x_635 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_635));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_647 : u32 = u_xlatu_loop_1;
    let x_648 : u32 = u_xlatu24;
    if ((x_647 < x_648)) {
    } else {
      break;
    }
    let x_651 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_651 >> 2u);
    let x_654 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_654 & 3u));
    let x_658 : u32 = u_xlatu27;
    let x_661 : vec4<f32> = x_596.unity_LightIndices[bitcast<i32>(x_658)];
    let x_671 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_676 : vec4<u32> = indexable[x_671];
    u_xlat27 = dot(x_661, bitcast<vec4<f32>>(x_676));
    let x_680 : f32 = u_xlat27;
    u_xlati27 = i32(x_680);
    let x_682 : vec3<f32> = vs_TEXCOORD1;
    let x_694 : i32 = u_xlati27;
    let x_696 : vec4<f32> = x_693.x_AdditionalLightsPosition[x_694];
    let x_699 : i32 = u_xlati27;
    let x_701 : vec4<f32> = x_693.x_AdditionalLightsPosition[x_699];
    u_xlat6 = ((-(x_682) * vec3<f32>(x_696.w, x_696.w, x_696.w)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_705 : vec3<f32> = u_xlat6;
    let x_706 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_705, x_706);
    let x_708 : f32 = u_xlat28;
    u_xlat28 = max(x_708, 6.10351562e-05f);
    let x_712 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_712);
    let x_714 : f32 = u_xlat29;
    let x_716 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_714, x_714, x_714) * x_716);
    let x_718 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_718);
    let x_720 : f32 = u_xlat28;
    let x_721 : i32 = u_xlati27;
    let x_723 : f32 = x_693.x_AdditionalLightsAttenuation[x_721].x;
    u_xlat28 = (x_720 * x_723);
    let x_725 : f32 = u_xlat28;
    let x_727 : f32 = u_xlat28;
    u_xlat28 = ((-(x_725) * x_727) + 1.0f);
    let x_730 : f32 = u_xlat28;
    u_xlat28 = max(x_730, 0.0f);
    let x_732 : f32 = u_xlat28;
    let x_733 : f32 = u_xlat28;
    u_xlat28 = (x_732 * x_733);
    let x_735 : f32 = u_xlat28;
    let x_736 : f32 = u_xlat29;
    u_xlat28 = (x_735 * x_736);
    let x_738 : i32 = u_xlati27;
    let x_740 : vec4<f32> = x_693.x_AdditionalLightsSpotDir[x_738];
    let x_742 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), x_742);
    let x_744 : f32 = u_xlat29;
    let x_745 : i32 = u_xlati27;
    let x_747 : f32 = x_693.x_AdditionalLightsAttenuation[x_745].z;
    let x_749 : i32 = u_xlati27;
    let x_751 : f32 = x_693.x_AdditionalLightsAttenuation[x_749].w;
    u_xlat29 = ((x_744 * x_747) + x_751);
    let x_753 : f32 = u_xlat29;
    u_xlat29 = clamp(x_753, 0.0f, 1.0f);
    let x_755 : f32 = u_xlat29;
    let x_756 : f32 = u_xlat29;
    u_xlat29 = (x_755 * x_756);
    let x_758 : f32 = u_xlat28;
    let x_759 : f32 = u_xlat29;
    u_xlat28 = (x_758 * x_759);
    let x_762 : vec4<f32> = u_xlat1;
    let x_764 : i32 = u_xlati27;
    let x_766 : vec4<f32> = x_693.x_AdditionalLightsColor[x_764];
    u_xlat7 = (vec3<f32>(x_762.x, x_762.x, x_762.x) * vec3<f32>(x_766.x, x_766.y, x_766.z));
    let x_769 : f32 = u_xlat28;
    let x_771 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_769, x_769, x_769) * x_771);
    let x_773 : vec3<f32> = u_xlat2;
    let x_774 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_773, x_774);
    let x_776 : f32 = u_xlat27;
    u_xlat27 = clamp(x_776, 0.0f, 1.0f);
    let x_778 : f32 = u_xlat27;
    let x_780 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_778, x_778, x_778) * x_780);
    let x_782 : vec3<f32> = u_xlat6;
    let x_783 : vec4<f32> = u_xlat1;
    let x_786 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_782 * vec3<f32>(x_783.y, x_783.z, x_783.w)) + x_786);

    continuing {
      let x_788 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_788 + bitcast<u32>(1i));
    }
  }
  let x_790 : vec4<f32> = u_xlat4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_795 : vec4<f32> = u_xlat3;
  let x_797 : vec3<f32> = ((vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(x_792.y, x_792.z, x_792.w)) + vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec3<f32> = u_xlat5;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec3<f32> = (x_800 + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : f32 = u_xlat8;
  let x_807 : f32 = u_xlat8;
  u_xlat8 = (x_806 * -(x_807));
  let x_810 : f32 = u_xlat8;
  u_xlat8 = exp2(x_810);
  let x_812 : vec4<f32> = u_xlat1;
  let x_816 : vec4<f32> = x_44.unity_FogColor;
  let x_819 : vec3<f32> = (vec3<f32>(x_812.x, x_812.y, x_812.z) + -(vec3<f32>(x_816.x, x_816.y, x_816.z)));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : f32 = u_xlat8;
  let x_826 : vec4<f32> = u_xlat1;
  let x_830 : vec4<f32> = x_44.unity_FogColor;
  let x_832 : vec3<f32> = ((vec3<f32>(x_824, x_824, x_824) * vec3<f32>(x_826.x, x_826.y, x_826.z)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_836 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_836 == 1.0f);
  let x_838 : bool = u_xlatb8;
  let x_839 : bool = u_xlatb16;
  u_xlatb8 = (x_838 | x_839);
  let x_841 : bool = u_xlatb8;
  if (x_841) {
    let x_846 : f32 = u_xlat0.x;
    x_842 = x_846;
  } else {
    x_842 = 1.0f;
  }
  let x_848 : f32 = x_842;
  SV_Target0.w = x_848;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

