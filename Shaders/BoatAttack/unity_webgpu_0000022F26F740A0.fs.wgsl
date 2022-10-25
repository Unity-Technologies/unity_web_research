struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_414 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_775 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec4<f32>;
  var x_120 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb7 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlat43 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati42 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_993 : f32;
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
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat38;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb36;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec4<f32> = u_xlat4;
    x_120 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  }
  let x_127 : vec3<f32> = x_120;
  u_xlat3 = x_127;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  let x_131 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_130, x_131);
  let x_133 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_133);
  let x_135 : f32 = u_xlat36;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = (vec3<f32>(x_135, x_135, x_135) * x_137);
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : f32 = vs_TEXCOORD1.y;
  let x_144 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_142 * x_144);
  let x_147 : f32 = x_44.unity_MatrixV[0i].z;
  let x_149 : f32 = vs_TEXCOORD1.x;
  let x_151 : f32 = u_xlat36;
  u_xlat36 = ((x_147 * x_149) + x_151);
  let x_154 : f32 = x_44.unity_MatrixV[2i].z;
  let x_156 : f32 = vs_TEXCOORD1.z;
  let x_158 : f32 = u_xlat36;
  u_xlat36 = ((x_154 * x_156) + x_158);
  let x_160 : f32 = u_xlat36;
  let x_163 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_160 + x_163);
  let x_165 : f32 = u_xlat36;
  let x_169 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_165) + -(x_169));
  let x_172 : f32 = u_xlat36;
  u_xlat36 = max(x_172, 0.0f);
  let x_174 : f32 = u_xlat36;
  let x_177 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_174 * x_177);
  u_xlat4.w = 1.0f;
  let x_187 : vec4<f32> = x_184.unity_SHAr;
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_184.unity_SHAg;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_193, x_194);
  let x_199 : vec4<f32> = x_184.unity_SHAb;
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_199, x_200);
  let x_204 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_204.y, x_204.z, x_204.z, x_204.x) * vec4<f32>(x_206.x, x_206.y, x_206.z, x_206.z));
  let x_212 : vec4<f32> = x_184.unity_SHBr;
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_212, x_213);
  let x_218 : vec4<f32> = x_184.unity_SHBg;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_218, x_219);
  let x_224 : vec4<f32> = x_184.unity_SHBb;
  let x_225 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_224, x_225);
  let x_229 : f32 = u_xlat4.y;
  let x_231 : f32 = u_xlat4.y;
  u_xlat38 = (x_229 * x_231);
  let x_234 : f32 = u_xlat4.x;
  let x_236 : f32 = u_xlat4.x;
  let x_238 : f32 = u_xlat38;
  u_xlat38 = ((x_234 * x_236) + -(x_238));
  let x_243 : vec4<f32> = x_184.unity_SHC;
  let x_245 : f32 = u_xlat38;
  let x_248 : vec3<f32> = u_xlat7;
  let x_249 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245, x_245, x_245)) + x_248);
  let x_250 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = u_xlat5;
  let x_253 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_252 + vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_256, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_261 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_262 : vec2<f32> = vec2<f32>(x_261.x, x_261.y);
  let x_266 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_262.x, x_262.y));
  let x_267 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat6;
  let x_271 : vec4<f32> = hlslcc_FragCoord;
  let x_273 : vec2<f32> = (vec2<f32>(x_269.x, x_269.y) * vec2<f32>(x_271.x, x_271.y));
  let x_274 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
  let x_277 : f32 = u_xlat6.y;
  let x_280 : f32 = x_44.x_ScaleBiasRt.x;
  let x_283 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_277 * x_280) + x_283);
  let x_285 : f32 = u_xlat38;
  u_xlat6.z = (-(x_285) + 1.0f);
  let x_290 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_290) * 0.959999979f) + 0.959999979f);
  let x_296 : f32 = u_xlat38;
  let x_299 : f32 = x_57.x_Smoothness;
  u_xlat39 = (-(x_296) + x_299);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_302.y, x_302.z, x_302.w) * vec3<f32>(x_304, x_304, x_304));
  let x_307 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = x_57.x_BaseColor;
  let x_315 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : f32 = x_57.x_Metallic;
  let x_321 : f32 = x_57.x_Metallic;
  let x_323 : f32 = x_57.x_Metallic;
  let x_324 : vec3<f32> = vec3<f32>(x_319, x_321, x_323);
  let x_329 : vec4<f32> = u_xlat0;
  let x_334 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_338) + 1.0f);
  let x_342 : f32 = u_xlat38;
  let x_343 : f32 = u_xlat38;
  u_xlat40 = (x_342 * x_343);
  let x_345 : f32 = u_xlat40;
  u_xlat40 = max(x_345, 0.0078125f);
  let x_349 : f32 = u_xlat40;
  let x_350 : f32 = u_xlat40;
  u_xlat41 = (x_349 * x_350);
  let x_352 : f32 = u_xlat39;
  u_xlat39 = (x_352 + 1.0f);
  let x_354 : f32 = u_xlat39;
  u_xlat39 = clamp(x_354, 0.0f, 1.0f);
  let x_357 : f32 = u_xlat40;
  u_xlat18 = ((x_357 * 4.0f) + 2.0f);
  let x_367 : vec4<f32> = u_xlat6;
  let x_370 : f32 = x_44.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_367.x, x_367.z), x_370);
  u_xlat6.x = x_371.x;
  let x_376 : f32 = u_xlat6.x;
  u_xlat30 = (x_376 + -1.0f);
  let x_381 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_382 : f32 = u_xlat30;
  u_xlat30 = ((x_381 * x_382) + 1.0f);
  let x_386 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_386, 1.0f);
  let x_391 : vec4<f32> = vs_TEXCOORD6;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_394 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_392.x, x_392.y, x_394);
  let x_407 : vec3<f32> = txVec0;
  let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_407.xy, x_407.z);
  u_xlat42 = x_409;
  let x_416 : f32 = x_414.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_416) + 1.0f);
  let x_420 : f32 = u_xlat42;
  let x_422 : f32 = x_414.x_MainLightShadowParams.x;
  let x_425 : f32 = u_xlat7.x;
  u_xlat42 = ((x_420 * x_422) + x_425);
  let x_429 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_429);
  let x_433 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_433 >= 1.0f);
  let x_435 : bool = u_xlatb19;
  let x_436 : bool = u_xlatb7;
  u_xlatb7 = (x_435 | x_436);
  let x_438 : bool = u_xlatb7;
  let x_439 : f32 = u_xlat42;
  u_xlat42 = select(x_439, 1.0f, x_438);
  let x_441 : vec3<f32> = vs_TEXCOORD1;
  let x_443 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_441 + -(x_443));
  let x_446 : vec3<f32> = u_xlat7;
  let x_447 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_446, x_447);
  let x_451 : f32 = u_xlat7.x;
  let x_453 : f32 = x_414.x_MainLightShadowParams.z;
  let x_456 : f32 = x_414.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_451 * x_453) + x_456);
  let x_460 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_460, 0.0f, 1.0f);
  let x_464 : f32 = u_xlat42;
  u_xlat19 = (-(x_464) + 1.0f);
  let x_468 : f32 = u_xlat7.x;
  let x_469 : f32 = u_xlat19;
  let x_471 : f32 = u_xlat42;
  u_xlat42 = ((x_468 * x_469) + x_471);
  let x_473 : f32 = u_xlat30;
  let x_476 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_480 : vec3<f32> = u_xlat3;
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(-(x_480), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : f32 = u_xlat43;
  let x_486 : f32 = u_xlat43;
  u_xlat43 = (x_485 + x_486);
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : f32 = u_xlat43;
  let x_495 : vec3<f32> = u_xlat3;
  let x_497 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * -(vec3<f32>(x_491, x_491, x_491))) + -(x_495));
  let x_498 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec3<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_500.x, x_500.y, x_500.z), x_502);
  let x_504 : f32 = u_xlat43;
  u_xlat43 = clamp(x_504, 0.0f, 1.0f);
  let x_506 : f32 = u_xlat43;
  u_xlat43 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat43;
  let x_510 : f32 = u_xlat43;
  u_xlat43 = (x_509 * x_510);
  let x_512 : f32 = u_xlat43;
  let x_513 : f32 = u_xlat43;
  u_xlat43 = (x_512 * x_513);
  let x_516 : f32 = u_xlat38;
  u_xlat44 = ((-(x_516) * 0.699999988f) + 1.700000048f);
  let x_522 : f32 = u_xlat38;
  let x_523 : f32 = u_xlat44;
  u_xlat38 = (x_522 * x_523);
  let x_525 : f32 = u_xlat38;
  u_xlat38 = (x_525 * 6.0f);
  let x_536 : vec4<f32> = u_xlat8;
  let x_538 : f32 = u_xlat38;
  let x_539 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_536.x, x_536.y, x_536.z), x_538);
  u_xlat8 = x_539;
  let x_541 : f32 = u_xlat8.w;
  u_xlat38 = (x_541 + -1.0f);
  let x_544 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_545 : f32 = u_xlat38;
  u_xlat38 = ((x_544 * x_545) + 1.0f);
  let x_548 : f32 = u_xlat38;
  u_xlat38 = max(x_548, 0.0f);
  let x_550 : f32 = u_xlat38;
  u_xlat38 = log2(x_550);
  let x_552 : f32 = u_xlat38;
  let x_554 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_552 * x_554);
  let x_556 : f32 = u_xlat38;
  u_xlat38 = exp2(x_556);
  let x_558 : f32 = u_xlat38;
  let x_560 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_558 * x_560);
  let x_562 : vec4<f32> = u_xlat8;
  let x_564 : f32 = u_xlat38;
  let x_566 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_564, x_564, x_564));
  let x_567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_571 : f32 = u_xlat40;
  let x_573 : f32 = u_xlat40;
  u_xlat9 = ((vec2<f32>(x_571, x_571) * vec2<f32>(x_573, x_573)) + vec2<f32>(-1.0f, 1.0f));
  let x_579 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_579);
  let x_582 : vec4<f32> = u_xlat0;
  let x_585 : f32 = u_xlat39;
  u_xlat21 = (-(vec3<f32>(x_582.x, x_582.y, x_582.z)) + vec3<f32>(x_585, x_585, x_585));
  let x_588 : f32 = u_xlat43;
  let x_590 : vec3<f32> = u_xlat21;
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_588, x_588, x_588) * x_590) + vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : f32 = u_xlat38;
  let x_597 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_595, x_595, x_595) * x_597);
  let x_599 : vec4<f32> = u_xlat8;
  let x_601 : vec3<f32> = u_xlat21;
  let x_602 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * x_601);
  let x_603 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec3<f32> = u_xlat5;
  let x_606 : vec3<f32> = u_xlat13;
  let x_608 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_605 * x_606) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : f32 = u_xlat42;
  let x_614 : f32 = x_184.unity_LightData.z;
  u_xlat38 = (x_611 * x_614);
  let x_616 : vec4<f32> = u_xlat4;
  let x_619 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : f32 = u_xlat39;
  u_xlat39 = clamp(x_622, 0.0f, 1.0f);
  let x_624 : f32 = u_xlat38;
  let x_625 : f32 = u_xlat39;
  u_xlat38 = (x_624 * x_625);
  let x_627 : f32 = u_xlat38;
  let x_629 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_627, x_627, x_627) * x_629);
  let x_631 : vec3<f32> = u_xlat3;
  let x_633 : vec4<f32> = x_44.x_MainLightPosition;
  let x_635 : vec3<f32> = (x_631 + vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat8;
  let x_640 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat38;
  u_xlat38 = max(x_643, 1.17549435e-37f);
  let x_646 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat38;
  let x_650 : vec4<f32> = u_xlat8;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat4;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat38;
  u_xlat38 = clamp(x_660, 0.0f, 1.0f);
  let x_663 : vec4<f32> = x_44.x_MainLightPosition;
  let x_665 : vec4<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : f32 = u_xlat39;
  u_xlat39 = clamp(x_668, 0.0f, 1.0f);
  let x_670 : f32 = u_xlat38;
  let x_671 : f32 = u_xlat38;
  u_xlat38 = (x_670 * x_671);
  let x_673 : f32 = u_xlat38;
  let x_675 : f32 = u_xlat9.x;
  u_xlat38 = ((x_673 * x_675) + 1.000010014f);
  let x_679 : f32 = u_xlat39;
  let x_680 : f32 = u_xlat39;
  u_xlat39 = (x_679 * x_680);
  let x_682 : f32 = u_xlat38;
  let x_683 : f32 = u_xlat38;
  u_xlat38 = (x_682 * x_683);
  let x_685 : f32 = u_xlat39;
  u_xlat39 = max(x_685, 0.100000001f);
  let x_688 : f32 = u_xlat38;
  let x_689 : f32 = u_xlat39;
  u_xlat38 = (x_688 * x_689);
  let x_691 : f32 = u_xlat18;
  let x_692 : f32 = u_xlat38;
  u_xlat38 = (x_691 * x_692);
  let x_694 : f32 = u_xlat41;
  let x_695 : f32 = u_xlat38;
  u_xlat38 = (x_694 / x_695);
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : f32 = u_xlat38;
  let x_702 : vec3<f32> = u_xlat13;
  let x_703 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699, x_699, x_699)) + x_702);
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec3<f32> = u_xlat7;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_706 * vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_711 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_713 : f32 = x_184.unity_LightData.y;
  u_xlat38 = min(x_711, x_713);
  let x_717 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_717));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_729 : u32 = u_xlatu_loop_1;
    let x_730 : u32 = u_xlatu38;
    if ((x_729 < x_730)) {
    } else {
      break;
    }
    let x_733 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_733 >> 2u);
    let x_737 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_737 & 3u));
    let x_740 : u32 = u_xlatu40;
    let x_743 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_740)];
    let x_753 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_758 : vec4<u32> = indexable[x_753];
    u_xlat40 = dot(x_743, bitcast<vec4<f32>>(x_758));
    let x_762 : f32 = u_xlat40;
    u_xlati40 = i32(x_762);
    let x_764 : vec3<f32> = vs_TEXCOORD1;
    let x_776 : i32 = u_xlati40;
    let x_778 : vec4<f32> = x_775.x_AdditionalLightsPosition[x_776];
    let x_781 : i32 = u_xlati40;
    let x_783 : vec4<f32> = x_775.x_AdditionalLightsPosition[x_781];
    u_xlat21 = ((-(x_764) * vec3<f32>(x_778.w, x_778.w, x_778.w)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
    let x_786 : vec3<f32> = u_xlat21;
    let x_787 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_786, x_787);
    let x_789 : f32 = u_xlat42;
    u_xlat42 = max(x_789, 6.10351562e-05f);
    let x_792 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_792);
    let x_795 : f32 = u_xlat43;
    let x_797 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_795, x_795, x_795) * x_797);
    let x_799 : f32 = u_xlat42;
    u_xlat44 = (1.0f / x_799);
    let x_801 : f32 = u_xlat42;
    let x_802 : i32 = u_xlati40;
    let x_804 : f32 = x_775.x_AdditionalLightsAttenuation[x_802].x;
    u_xlat42 = (x_801 * x_804);
    let x_806 : f32 = u_xlat42;
    let x_808 : f32 = u_xlat42;
    u_xlat42 = ((-(x_806) * x_808) + 1.0f);
    let x_811 : f32 = u_xlat42;
    u_xlat42 = max(x_811, 0.0f);
    let x_813 : f32 = u_xlat42;
    let x_814 : f32 = u_xlat42;
    u_xlat42 = (x_813 * x_814);
    let x_816 : f32 = u_xlat42;
    let x_817 : f32 = u_xlat44;
    u_xlat42 = (x_816 * x_817);
    let x_819 : i32 = u_xlati40;
    let x_821 : vec4<f32> = x_775.x_AdditionalLightsSpotDir[x_819];
    let x_823 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), x_823);
    let x_825 : f32 = u_xlat44;
    let x_826 : i32 = u_xlati40;
    let x_828 : f32 = x_775.x_AdditionalLightsAttenuation[x_826].z;
    let x_830 : i32 = u_xlati40;
    let x_832 : f32 = x_775.x_AdditionalLightsAttenuation[x_830].w;
    u_xlat44 = ((x_825 * x_828) + x_832);
    let x_834 : f32 = u_xlat44;
    u_xlat44 = clamp(x_834, 0.0f, 1.0f);
    let x_836 : f32 = u_xlat44;
    let x_837 : f32 = u_xlat44;
    u_xlat44 = (x_836 * x_837);
    let x_839 : f32 = u_xlat42;
    let x_840 : f32 = u_xlat44;
    u_xlat42 = (x_839 * x_840);
    let x_843 : f32 = u_xlat30;
    let x_845 : i32 = u_xlati40;
    let x_847 : vec4<f32> = x_775.x_AdditionalLightsColor[x_845];
    u_xlat11 = (vec3<f32>(x_843, x_843, x_843) * vec3<f32>(x_847.x, x_847.y, x_847.z));
    let x_850 : vec4<f32> = u_xlat4;
    let x_852 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), x_852);
    let x_854 : f32 = u_xlat40;
    u_xlat40 = clamp(x_854, 0.0f, 1.0f);
    let x_856 : f32 = u_xlat40;
    let x_857 : f32 = u_xlat42;
    u_xlat40 = (x_856 * x_857);
    let x_859 : f32 = u_xlat40;
    let x_861 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_859, x_859, x_859) * x_861);
    let x_863 : vec3<f32> = u_xlat21;
    let x_864 : f32 = u_xlat43;
    let x_867 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_863 * vec3<f32>(x_864, x_864, x_864)) + x_867);
    let x_869 : vec3<f32> = u_xlat21;
    let x_870 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_869, x_870);
    let x_872 : f32 = u_xlat40;
    u_xlat40 = max(x_872, 1.17549435e-37f);
    let x_874 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_874);
    let x_876 : f32 = u_xlat40;
    let x_878 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_876, x_876, x_876) * x_878);
    let x_880 : vec4<f32> = u_xlat4;
    let x_882 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), x_882);
    let x_884 : f32 = u_xlat40;
    u_xlat40 = clamp(x_884, 0.0f, 1.0f);
    let x_886 : vec3<f32> = u_xlat10;
    let x_887 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_886, x_887);
    let x_889 : f32 = u_xlat42;
    u_xlat42 = clamp(x_889, 0.0f, 1.0f);
    let x_891 : f32 = u_xlat40;
    let x_892 : f32 = u_xlat40;
    u_xlat40 = (x_891 * x_892);
    let x_894 : f32 = u_xlat40;
    let x_896 : f32 = u_xlat9.x;
    u_xlat40 = ((x_894 * x_896) + 1.000010014f);
    let x_899 : f32 = u_xlat42;
    let x_900 : f32 = u_xlat42;
    u_xlat42 = (x_899 * x_900);
    let x_902 : f32 = u_xlat40;
    let x_903 : f32 = u_xlat40;
    u_xlat40 = (x_902 * x_903);
    let x_905 : f32 = u_xlat42;
    u_xlat42 = max(x_905, 0.100000001f);
    let x_907 : f32 = u_xlat40;
    let x_908 : f32 = u_xlat42;
    u_xlat40 = (x_907 * x_908);
    let x_910 : f32 = u_xlat18;
    let x_911 : f32 = u_xlat40;
    u_xlat40 = (x_910 * x_911);
    let x_913 : f32 = u_xlat41;
    let x_914 : f32 = u_xlat40;
    u_xlat40 = (x_913 / x_914);
    let x_916 : vec4<f32> = u_xlat0;
    let x_918 : f32 = u_xlat40;
    let x_921 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918, x_918, x_918)) + x_921);
    let x_923 : vec3<f32> = u_xlat21;
    let x_924 : vec3<f32> = u_xlat11;
    let x_926 : vec4<f32> = u_xlat8;
    let x_928 : vec3<f32> = ((x_923 * x_924) + vec3<f32>(x_926.x, x_926.y, x_926.z));
    let x_929 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);

    continuing {
      let x_931 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_931 + bitcast<u32>(1i));
    }
  }
  let x_933 : vec3<f32> = u_xlat5;
  let x_934 : vec4<f32> = u_xlat6;
  let x_937 : vec3<f32> = u_xlat7;
  let x_938 : vec3<f32> = ((x_933 * vec3<f32>(x_934.x, x_934.x, x_934.x)) + x_937);
  let x_939 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat8;
  let x_943 : vec4<f32> = u_xlat0;
  let x_945 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec3<f32> = u_xlat2;
  let x_950 : vec4<f32> = x_57.x_EmissionColor;
  let x_953 : vec4<f32> = u_xlat0;
  let x_955 : vec3<f32> = ((x_948 * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat36;
  let x_959 : f32 = u_xlat36;
  u_xlat36 = (x_958 * -(x_959));
  let x_962 : f32 = u_xlat36;
  u_xlat36 = exp2(x_962);
  let x_964 : vec4<f32> = u_xlat0;
  let x_968 : vec4<f32> = x_44.unity_FogColor;
  let x_971 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) + -(vec3<f32>(x_968.x, x_968.y, x_968.z)));
  let x_972 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_976 : f32 = u_xlat36;
  let x_978 : vec4<f32> = u_xlat0;
  let x_982 : vec4<f32> = x_44.unity_FogColor;
  let x_984 : vec3<f32> = ((vec3<f32>(x_976, x_976, x_976) * vec3<f32>(x_978.x, x_978.y, x_978.z)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_990 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_990 == 1.0f);
  let x_992 : bool = u_xlatb0;
  if (x_992) {
    let x_997 : f32 = u_xlat1.x;
    x_993 = x_997;
  } else {
    x_993 = 1.0f;
  }
  let x_999 : f32 = x_993;
  SV_Target0.w = x_999;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

