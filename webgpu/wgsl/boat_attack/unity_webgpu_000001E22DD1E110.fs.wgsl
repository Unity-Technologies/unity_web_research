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
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_317 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1156 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb25 : bool;
  var x_191 : f32;
  var u_xlatb14 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec4<f32>;
  var x_259 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var x_771 : f32;
  var u_xlat27 : f32;
  var u_xlat40 : f32;
  var u_xlatu12 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1381 : f32;
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
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat23 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat23;
  let x_107 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_114);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat23;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat23 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat14.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_172 : vec3<f32> = u_xlat14;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.y), x_175);
  u_xlat14.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb25 = (x_187 >= 0.0f);
  let x_190 : bool = u_xlatb25;
  if (x_190) {
    let x_195 : f32 = u_xlat14.x;
    x_191 = abs(x_195);
  } else {
    let x_199 : f32 = u_xlat14.x;
    x_191 = -(abs(x_199));
  }
  let x_202 : f32 = x_191;
  u_xlat14.x = x_202;
  let x_205 : f32 = u_xlat14.x;
  let x_208 : f32 = x_185.unity_LODFade.x;
  u_xlat14.x = (-(x_205) + x_208);
  let x_213 : f32 = u_xlat14.x;
  u_xlatb14 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb14;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_230) + x_235);
  let x_238 : vec3<f32> = u_xlat4;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_238, x_239);
  let x_241 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_241);
  let x_243 : f32 = u_xlat25;
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_243, x_243, x_243) * x_245);
  let x_250 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_250;
  let x_253 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_253;
  let x_256 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_256;
  let x_258 : bool = u_xlatb14;
  if (x_258) {
    let x_262 : vec3<f32> = u_xlat4;
    x_259 = x_262;
  } else {
    let x_264 : vec4<f32> = u_xlat5;
    x_259 = vec3<f32>(x_264.x, x_264.y, x_264.z);
  }
  let x_266 : vec3<f32> = x_259;
  u_xlat14 = x_266;
  let x_268 : vec3<f32> = vs_TEXCOORD2;
  let x_271 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_268.z, x_268.x, x_268.y) * vec3<f32>(x_271.y, x_271.z, x_271.x));
  let x_274 : vec3<f32> = vs_TEXCOORD2;
  let x_276 : vec4<f32> = vs_TEXCOORD3;
  let x_279 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_274.y, x_274.z, x_274.x) * vec3<f32>(x_276.z, x_276.x, x_276.y)) + -(x_279));
  let x_282 : vec3<f32> = u_xlat4;
  let x_283 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_282 * vec3<f32>(x_283.w, x_283.w, x_283.w));
  let x_286 : vec2<f32> = u_xlat23;
  let x_288 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_286.y, x_286.y, x_286.y) * x_288);
  let x_290 : vec2<f32> = u_xlat23;
  let x_292 : vec4<f32> = vs_TEXCOORD3;
  let x_295 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_290.x, x_290.x, x_290.x) * vec3<f32>(x_292.x, x_292.y, x_292.z)) + x_295);
  let x_297 : f32 = u_xlat33;
  let x_299 : vec3<f32> = vs_TEXCOORD2;
  let x_301 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_297, x_297, x_297) * x_299) + x_301);
  let x_303 : vec3<f32> = u_xlat4;
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat33 = dot(x_303, x_304);
  let x_306 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_306);
  let x_308 : f32 = u_xlat33;
  let x_310 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_308, x_308, x_308) * x_310);
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = x_317.x_CascadeShadowSplitSpheres0;
  let x_322 : vec3<f32> = (x_312 + -(vec3<f32>(x_319.x, x_319.y, x_319.z)));
  let x_323 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_328 : vec4<f32> = x_317.x_CascadeShadowSplitSpheres1;
  let x_331 : vec3<f32> = (x_326 + -(vec3<f32>(x_328.x, x_328.y, x_328.z)));
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  let x_338 : vec4<f32> = x_317.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_335 + -(vec3<f32>(x_338.x, x_338.y, x_338.z)));
  let x_343 : vec3<f32> = vs_TEXCOORD1;
  let x_346 : vec4<f32> = x_317.x_CascadeShadowSplitSpheres3;
  let x_349 : vec3<f32> = (x_343 + -(vec3<f32>(x_346.x, x_346.y, x_346.z)));
  let x_350 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat5;
  let x_354 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_352.x, x_352.y, x_352.z), vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_358 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_364 : vec3<f32> = u_xlat7;
  let x_365 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_364, x_365);
  let x_368 : vec4<f32> = u_xlat8;
  let x_370 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_377 : vec4<f32> = u_xlat5;
  let x_380 : vec4<f32> = x_317.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_377 < x_380);
  let x_383 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_383);
  let x_387 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_387);
  let x_391 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_391);
  let x_395 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_395);
  let x_399 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_399);
  let x_404 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_404);
  let x_408 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_408);
  let x_411 : vec4<f32> = u_xlat5;
  let x_413 : vec4<f32> = u_xlat6;
  let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) + vec3<f32>(x_413.y, x_413.z, x_413.w));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat5;
  let x_421 : vec3<f32> = max(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_422 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_422.x, x_421.x, x_421.y, x_421.z);
  let x_424 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(x_424, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_429 : f32 = u_xlat33;
  u_xlat33 = (-(x_429) + 4.0f);
  let x_434 : f32 = u_xlat33;
  u_xlatu33 = u32(x_434);
  let x_438 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_438) << bitcast<u32>(2i));
  let x_441 : vec3<f32> = vs_TEXCOORD1;
  let x_443 : i32 = u_xlati33;
  let x_446 : i32 = u_xlati33;
  let x_450 : vec4<f32> = x_317.x_MainLightWorldToShadow[((x_443 + 1i) / 4i)][((x_446 + 1i) % 4i)];
  let x_452 : vec3<f32> = (vec3<f32>(x_441.y, x_441.y, x_441.y) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : i32 = u_xlati33;
  let x_457 : i32 = u_xlati33;
  let x_460 : vec4<f32> = x_317.x_MainLightWorldToShadow[(x_455 / 4i)][(x_457 % 4i)];
  let x_462 : vec3<f32> = vs_TEXCOORD1;
  let x_465 : vec4<f32> = u_xlat5;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.x, x_462.x, x_462.x)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : i32 = u_xlati33;
  let x_473 : i32 = u_xlati33;
  let x_477 : vec4<f32> = x_317.x_MainLightWorldToShadow[((x_470 + 2i) / 4i)][((x_473 + 2i) % 4i)];
  let x_479 : vec3<f32> = vs_TEXCOORD1;
  let x_482 : vec4<f32> = u_xlat5;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.z, x_479.z, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat5;
  let x_489 : i32 = u_xlati33;
  let x_492 : i32 = u_xlati33;
  let x_496 : vec4<f32> = x_317.x_MainLightWorldToShadow[((x_489 + 3i) / 4i)][((x_492 + 3i) % 4i)];
  let x_498 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : f32 = vs_TEXCOORD1.y;
  let x_504 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_502 * x_504);
  let x_507 : f32 = x_44.unity_MatrixV[0i].z;
  let x_509 : f32 = vs_TEXCOORD1.x;
  let x_511 : f32 = u_xlat33;
  u_xlat33 = ((x_507 * x_509) + x_511);
  let x_514 : f32 = x_44.unity_MatrixV[2i].z;
  let x_516 : f32 = vs_TEXCOORD1.z;
  let x_518 : f32 = u_xlat33;
  u_xlat33 = ((x_514 * x_516) + x_518);
  let x_520 : f32 = u_xlat33;
  let x_522 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_520 + x_522);
  let x_524 : f32 = u_xlat33;
  let x_528 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_524) + -(x_528));
  let x_531 : f32 = u_xlat33;
  u_xlat33 = max(x_531, 0.0f);
  let x_533 : f32 = u_xlat33;
  let x_535 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_533 * x_535);
  let x_543 : vec2<f32> = vs_TEXCOORD8;
  let x_545 : f32 = x_44.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_543, x_545);
  u_xlat6 = x_546;
  let x_551 : vec2<f32> = vs_TEXCOORD8;
  let x_553 : f32 = x_44.x_GlobalMipBias.x;
  let x_554 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_551, x_553);
  u_xlat7 = vec3<f32>(x_554.x, x_554.y, x_554.z);
  let x_556 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec3<f32> = u_xlat4;
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat23.x = dot(x_563, vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_569 : f32 = u_xlat23.x;
  u_xlat23.x = (x_569 + 0.5f);
  let x_573 : vec2<f32> = u_xlat23;
  let x_575 : vec3<f32> = u_xlat7;
  let x_576 : vec3<f32> = (vec3<f32>(x_573.x, x_573.x, x_573.x) * x_575);
  let x_577 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_580 : f32 = u_xlat6.w;
  u_xlat23.x = max(x_580, 0.0001f);
  let x_584 : vec4<f32> = u_xlat6;
  let x_586 : vec2<f32> = u_xlat23;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) / vec3<f32>(x_586.x, x_586.x, x_586.x));
  let x_589 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_593 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_594 : vec2<f32> = vec2<f32>(x_593.x, x_593.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_594.x, x_594.y));
  let x_599 : vec2<f32> = u_xlat23;
  let x_600 : vec4<f32> = hlslcc_FragCoord;
  let x_602 : vec2<f32> = (x_599 * vec2<f32>(x_600.x, x_600.y));
  let x_603 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_602.x, x_602.y, x_603.z);
  let x_606 : f32 = u_xlat7.y;
  let x_609 : f32 = x_44.x_ScaleBiasRt.x;
  let x_612 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_606 * x_609) + x_612);
  let x_616 : f32 = u_xlat23.x;
  u_xlat7.z = (-(x_616) + 1.0f);
  let x_621 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_621) * 0.959999979f) + 0.959999979f);
  let x_629 : f32 = u_xlat1.y;
  let x_631 : f32 = x_69.x_Smoothness;
  let x_634 : f32 = u_xlat23.x;
  u_xlat34 = ((x_629 * x_631) + -(x_634));
  let x_638 : vec2<f32> = u_xlat23;
  let x_640 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_638.x, x_638.x, x_638.x) * vec3<f32>(x_640.y, x_640.z, x_640.w));
  let x_643 : vec4<f32> = u_xlat0;
  let x_646 : vec4<f32> = x_69.x_BaseColor;
  let x_651 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_646.x, x_646.y, x_646.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec2<f32> = u_xlat1;
  let x_656 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = ((vec3<f32>(x_654.x, x_654.x, x_654.x) * vec3<f32>(x_656.x, x_656.y, x_656.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_662 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat1.y;
  let x_668 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_665) * x_668) + 1.0f);
  let x_674 : f32 = u_xlat1.x;
  let x_676 : f32 = u_xlat1.x;
  u_xlat12.x = (x_674 * x_676);
  let x_680 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_680, 0.0078125f);
  let x_685 : f32 = u_xlat12.x;
  let x_687 : f32 = u_xlat12.x;
  u_xlat23.x = (x_685 * x_687);
  let x_690 : f32 = u_xlat34;
  u_xlat34 = (x_690 + 1.0f);
  let x_692 : f32 = u_xlat34;
  u_xlat34 = clamp(x_692, 0.0f, 1.0f);
  let x_696 : f32 = u_xlat12.x;
  u_xlat37 = ((x_696 * 4.0f) + 2.0f);
  let x_705 : vec3<f32> = u_xlat7;
  let x_708 : f32 = x_44.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_705.x, x_705.z), x_708);
  u_xlat38 = x_709.x;
  let x_712 : f32 = u_xlat38;
  u_xlat39 = (x_712 + -1.0f);
  let x_715 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_716 : f32 = u_xlat39;
  u_xlat39 = ((x_715 * x_716) + 1.0f);
  let x_720 : f32 = u_xlat3.x;
  let x_721 : f32 = u_xlat38;
  u_xlat3.x = min(x_720, x_721);
  let x_725 : vec4<f32> = u_xlat5;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_728 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
  let x_740 : vec3<f32> = txVec0;
  let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
  u_xlat5.x = x_742;
  let x_746 : f32 = x_317.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_746) + 1.0f);
  let x_751 : f32 = u_xlat5.x;
  let x_753 : f32 = x_317.x_MainLightShadowParams.x;
  let x_756 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_751 * x_753) + x_756);
  let x_761 : f32 = u_xlat5.z;
  u_xlatb16 = (0.0f >= x_761);
  let x_765 : f32 = u_xlat5.z;
  u_xlatb27 = (x_765 >= 1.0f);
  let x_767 : bool = u_xlatb27;
  let x_768 : bool = u_xlatb16;
  u_xlatb16 = (x_767 | x_768);
  let x_770 : bool = u_xlatb16;
  if (x_770) {
    x_771 = 1.0f;
  } else {
    let x_776 : f32 = u_xlat5.x;
    x_771 = x_776;
  }
  let x_777 : f32 = x_771;
  u_xlat5.x = x_777;
  let x_779 : vec3<f32> = vs_TEXCOORD1;
  let x_781 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_779 + -(x_781));
  let x_784 : vec3<f32> = u_xlat16;
  let x_785 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_784, x_785);
  let x_789 : f32 = u_xlat16.x;
  let x_791 : f32 = x_317.x_MainLightShadowParams.z;
  let x_794 : f32 = x_317.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_789 * x_791) + x_794);
  let x_798 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_798, 0.0f, 1.0f);
  let x_803 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_803) + 1.0f);
  let x_807 : f32 = u_xlat16.x;
  let x_808 : f32 = u_xlat27;
  let x_811 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_807 * x_808) + x_811);
  let x_814 : f32 = u_xlat39;
  let x_817 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_814, x_814, x_814) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec3<f32> = u_xlat14;
  let x_822 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_820), x_822);
  let x_826 : f32 = u_xlat7.x;
  let x_828 : f32 = u_xlat7.x;
  u_xlat7.x = (x_826 + x_828);
  let x_831 : vec3<f32> = u_xlat4;
  let x_832 : vec3<f32> = u_xlat7;
  let x_836 : vec3<f32> = u_xlat14;
  u_xlat7 = ((x_831 * -(vec3<f32>(x_832.x, x_832.x, x_832.x))) + -(x_836));
  let x_840 : vec3<f32> = u_xlat4;
  let x_841 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(x_840, x_841);
  let x_843 : f32 = u_xlat40;
  u_xlat40 = clamp(x_843, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat40;
  u_xlat40 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat40;
  let x_849 : f32 = u_xlat40;
  u_xlat40 = (x_848 * x_849);
  let x_851 : f32 = u_xlat40;
  let x_852 : f32 = u_xlat40;
  u_xlat40 = (x_851 * x_852);
  let x_855 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_855) * 0.699999988f) + 1.700000048f);
  let x_863 : f32 = u_xlat1.x;
  let x_865 : f32 = u_xlat8.x;
  u_xlat1.x = (x_863 * x_865);
  let x_869 : f32 = u_xlat1.x;
  u_xlat1.x = (x_869 * 6.0f);
  let x_881 : vec3<f32> = u_xlat7;
  let x_883 : f32 = u_xlat1.x;
  let x_884 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_881, x_883);
  u_xlat8 = x_884;
  let x_886 : f32 = u_xlat8.w;
  u_xlat1.x = (x_886 + -1.0f);
  let x_890 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_892 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_890 * x_892) + 1.0f);
  let x_897 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_897, 0.0f);
  let x_901 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_901);
  let x_905 : f32 = u_xlat1.x;
  let x_907 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_905 * x_907);
  let x_911 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_911);
  let x_915 : f32 = u_xlat1.x;
  let x_917 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_915 * x_917);
  let x_920 : vec4<f32> = u_xlat8;
  let x_922 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(x_922.x, x_922.x, x_922.x));
  let x_925 : vec3<f32> = u_xlat12;
  let x_927 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_925.x, x_925.x) * vec2<f32>(x_927.x, x_927.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_933 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_933);
  let x_936 : vec4<f32> = u_xlat0;
  let x_939 : f32 = u_xlat34;
  let x_941 : vec3<f32> = (-(vec3<f32>(x_936.x, x_936.y, x_936.z)) + vec3<f32>(x_939, x_939, x_939));
  let x_942 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : f32 = u_xlat40;
  let x_946 : vec4<f32> = u_xlat8;
  let x_949 : vec4<f32> = u_xlat0;
  let x_951 : vec3<f32> = ((vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z)) + vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec3<f32> = u_xlat12;
  let x_956 : vec4<f32> = u_xlat8;
  let x_958 : vec3<f32> = (vec3<f32>(x_954.x, x_954.x, x_954.x) * vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec3<f32> = u_xlat7;
  let x_962 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_961 * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat6;
  let x_967 : vec3<f32> = u_xlat13;
  let x_969 : vec3<f32> = u_xlat7;
  let x_970 : vec3<f32> = ((vec3<f32>(x_965.x, x_965.y, x_965.z) * x_967) + x_969);
  let x_971 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_974 : f32 = u_xlat5.x;
  let x_976 : f32 = x_185.unity_LightData.z;
  u_xlat12.x = (x_974 * x_976);
  let x_979 : vec3<f32> = u_xlat4;
  let x_981 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(x_979, vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : f32 = u_xlat34;
  u_xlat34 = clamp(x_984, 0.0f, 1.0f);
  let x_986 : f32 = u_xlat34;
  let x_988 : f32 = u_xlat12.x;
  u_xlat12.x = (x_986 * x_988);
  let x_991 : vec3<f32> = u_xlat12;
  let x_993 : vec3<f32> = u_xlat16;
  let x_994 : vec3<f32> = (vec3<f32>(x_991.x, x_991.x, x_991.x) * x_993);
  let x_995 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec3<f32> = u_xlat14;
  let x_999 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_997 + vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec3<f32> = u_xlat7;
  let x_1003 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_1002, x_1003);
  let x_1007 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_1007, 1.17549435e-37f);
  let x_1012 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_1012);
  let x_1015 : vec3<f32> = u_xlat12;
  let x_1017 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1015.x, x_1015.x, x_1015.x) * x_1017);
  let x_1019 : vec3<f32> = u_xlat4;
  let x_1020 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_1019, x_1020);
  let x_1024 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1024, 0.0f, 1.0f);
  let x_1028 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1030 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), x_1030);
  let x_1034 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_1034, 0.0f, 1.0f);
  let x_1037 : vec3<f32> = u_xlat12;
  let x_1039 : vec3<f32> = u_xlat12;
  let x_1041 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.z) * vec2<f32>(x_1039.x, x_1039.z));
  let x_1042 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1041.x, x_1042.y, x_1041.y);
  let x_1045 : f32 = u_xlat12.x;
  let x_1047 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_1045 * x_1047) + 1.000010014f);
  let x_1053 : f32 = u_xlat12.x;
  let x_1055 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1053 * x_1055);
  let x_1059 : f32 = u_xlat12.z;
  u_xlat34 = max(x_1059, 0.100000001f);
  let x_1062 : f32 = u_xlat34;
  let x_1064 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat37;
  let x_1069 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1067 * x_1069);
  let x_1073 : f32 = u_xlat23.x;
  let x_1075 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1073 / x_1075);
  let x_1078 : vec4<f32> = u_xlat0;
  let x_1080 : vec3<f32> = u_xlat12;
  let x_1083 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_1078.x, x_1078.y, x_1078.z) * vec3<f32>(x_1080.x, x_1080.x, x_1080.x)) + x_1083);
  let x_1085 : vec4<f32> = u_xlat5;
  let x_1087 : vec3<f32> = u_xlat7;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * x_1087);
  let x_1089 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1092 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1094 : f32 = x_185.unity_LightData.y;
  u_xlat12.x = min(x_1092, x_1094);
  let x_1099 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_1099));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1111 : u32 = u_xlatu_loop_1;
    let x_1112 : u32 = u_xlatu12;
    if ((x_1111 < x_1112)) {
    } else {
      break;
    }
    let x_1115 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1115 >> 2u);
    let x_1118 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1118 & 3u));
    let x_1121 : u32 = u_xlatu38;
    let x_1124 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_1121)];
    let x_1134 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1139 : vec4<u32> = indexable[x_1134];
    u_xlat38 = dot(x_1124, bitcast<vec4<f32>>(x_1139));
    let x_1143 : f32 = u_xlat38;
    u_xlati38 = i32(x_1143);
    let x_1145 : vec3<f32> = vs_TEXCOORD1;
    let x_1157 : i32 = u_xlati38;
    let x_1159 : vec4<f32> = x_1156.x_AdditionalLightsPosition[x_1157];
    let x_1162 : i32 = u_xlati38;
    let x_1164 : vec4<f32> = x_1156.x_AdditionalLightsPosition[x_1162];
    let x_1166 : vec3<f32> = ((-(x_1145) * vec3<f32>(x_1159.w, x_1159.w, x_1159.w)) + vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
    let x_1167 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
    let x_1169 : vec4<f32> = u_xlat8;
    let x_1171 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1169.x, x_1169.y, x_1169.z), vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
    let x_1174 : f32 = u_xlat40;
    u_xlat40 = max(x_1174, 6.10351562e-05f);
    let x_1178 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1178);
    let x_1181 : f32 = u_xlat41;
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1181, x_1181, x_1181) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
    let x_1187 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1187);
    let x_1189 : f32 = u_xlat40;
    let x_1190 : i32 = u_xlati38;
    let x_1192 : f32 = x_1156.x_AdditionalLightsAttenuation[x_1190].x;
    u_xlat40 = (x_1189 * x_1192);
    let x_1194 : f32 = u_xlat40;
    let x_1196 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1194) * x_1196) + 1.0f);
    let x_1199 : f32 = u_xlat40;
    u_xlat40 = max(x_1199, 0.0f);
    let x_1201 : f32 = u_xlat40;
    let x_1202 : f32 = u_xlat40;
    u_xlat40 = (x_1201 * x_1202);
    let x_1204 : f32 = u_xlat40;
    let x_1205 : f32 = u_xlat42;
    u_xlat40 = (x_1204 * x_1205);
    let x_1207 : i32 = u_xlati38;
    let x_1209 : vec4<f32> = x_1156.x_AdditionalLightsSpotDir[x_1207];
    let x_1211 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1209.x, x_1209.y, x_1209.z), x_1211);
    let x_1213 : f32 = u_xlat42;
    let x_1214 : i32 = u_xlati38;
    let x_1216 : f32 = x_1156.x_AdditionalLightsAttenuation[x_1214].z;
    let x_1218 : i32 = u_xlati38;
    let x_1220 : f32 = x_1156.x_AdditionalLightsAttenuation[x_1218].w;
    u_xlat42 = ((x_1213 * x_1216) + x_1220);
    let x_1222 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1222, 0.0f, 1.0f);
    let x_1224 : f32 = u_xlat42;
    let x_1225 : f32 = u_xlat42;
    u_xlat42 = (x_1224 * x_1225);
    let x_1227 : f32 = u_xlat40;
    let x_1228 : f32 = u_xlat42;
    u_xlat40 = (x_1227 * x_1228);
    let x_1231 : f32 = u_xlat39;
    let x_1233 : i32 = u_xlati38;
    let x_1235 : vec4<f32> = x_1156.x_AdditionalLightsColor[x_1233];
    u_xlat10 = (vec3<f32>(x_1231, x_1231, x_1231) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
    let x_1238 : vec3<f32> = u_xlat4;
    let x_1239 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1238, x_1239);
    let x_1241 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1241, 0.0f, 1.0f);
    let x_1243 : f32 = u_xlat38;
    let x_1244 : f32 = u_xlat40;
    u_xlat38 = (x_1243 * x_1244);
    let x_1246 : f32 = u_xlat38;
    let x_1248 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1246, x_1246, x_1246) * x_1248);
    let x_1250 : vec4<f32> = u_xlat8;
    let x_1252 : f32 = u_xlat41;
    let x_1255 : vec3<f32> = u_xlat14;
    let x_1256 : vec3<f32> = ((vec3<f32>(x_1250.x, x_1250.y, x_1250.z) * vec3<f32>(x_1252, x_1252, x_1252)) + x_1255);
    let x_1257 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
    let x_1259 : vec4<f32> = u_xlat8;
    let x_1261 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1259.x, x_1259.y, x_1259.z), vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
    let x_1264 : f32 = u_xlat38;
    u_xlat38 = max(x_1264, 1.17549435e-37f);
    let x_1266 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1266);
    let x_1268 : f32 = u_xlat38;
    let x_1270 : vec4<f32> = u_xlat8;
    let x_1272 : vec3<f32> = (vec3<f32>(x_1268, x_1268, x_1268) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
    let x_1273 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
    let x_1275 : vec3<f32> = u_xlat4;
    let x_1276 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1275, vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
    let x_1279 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1279, 0.0f, 1.0f);
    let x_1281 : vec3<f32> = u_xlat9;
    let x_1282 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1281, vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
    let x_1285 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1285, 0.0f, 1.0f);
    let x_1287 : f32 = u_xlat38;
    let x_1288 : f32 = u_xlat38;
    u_xlat38 = (x_1287 * x_1288);
    let x_1290 : f32 = u_xlat38;
    let x_1292 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1290 * x_1292) + 1.000010014f);
    let x_1295 : f32 = u_xlat40;
    let x_1296 : f32 = u_xlat40;
    u_xlat40 = (x_1295 * x_1296);
    let x_1298 : f32 = u_xlat38;
    let x_1299 : f32 = u_xlat38;
    u_xlat38 = (x_1298 * x_1299);
    let x_1301 : f32 = u_xlat40;
    u_xlat40 = max(x_1301, 0.100000001f);
    let x_1303 : f32 = u_xlat38;
    let x_1304 : f32 = u_xlat40;
    u_xlat38 = (x_1303 * x_1304);
    let x_1306 : f32 = u_xlat37;
    let x_1307 : f32 = u_xlat38;
    u_xlat38 = (x_1306 * x_1307);
    let x_1310 : f32 = u_xlat23.x;
    let x_1311 : f32 = u_xlat38;
    u_xlat38 = (x_1310 / x_1311);
    let x_1313 : vec4<f32> = u_xlat0;
    let x_1315 : f32 = u_xlat38;
    let x_1318 : vec3<f32> = u_xlat13;
    let x_1319 : vec3<f32> = ((vec3<f32>(x_1313.x, x_1313.y, x_1313.z) * vec3<f32>(x_1315, x_1315, x_1315)) + x_1318);
    let x_1320 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
    let x_1322 : vec4<f32> = u_xlat8;
    let x_1324 : vec3<f32> = u_xlat10;
    let x_1326 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1322.x, x_1322.y, x_1322.z) * x_1324) + x_1326);

    continuing {
      let x_1328 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1328 + bitcast<u32>(1i));
    }
  }
  let x_1330 : vec4<f32> = u_xlat6;
  let x_1332 : vec3<f32> = u_xlat3;
  let x_1335 : vec4<f32> = u_xlat5;
  let x_1337 : vec3<f32> = ((vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(x_1332.x, x_1332.x, x_1332.x)) + vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec3<f32> = u_xlat7;
  let x_1341 : vec4<f32> = u_xlat0;
  let x_1343 : vec3<f32> = (x_1340 + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : f32 = u_xlat33;
  let x_1347 : f32 = u_xlat33;
  u_xlat33 = (x_1346 * -(x_1347));
  let x_1350 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1350);
  let x_1352 : vec4<f32> = u_xlat0;
  let x_1356 : vec4<f32> = x_44.unity_FogColor;
  let x_1359 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) + -(vec3<f32>(x_1356.x, x_1356.y, x_1356.z)));
  let x_1360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1364 : f32 = u_xlat33;
  let x_1366 : vec4<f32> = u_xlat0;
  let x_1370 : vec4<f32> = x_44.unity_FogColor;
  let x_1372 : vec3<f32> = ((vec3<f32>(x_1364, x_1364, x_1364) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z)) + vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1378 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1378 == 1.0f);
  let x_1380 : bool = u_xlatb0;
  if (x_1380) {
    let x_1385 : f32 = u_xlat2.x;
    x_1381 = x_1385;
  } else {
    x_1381 = 1.0f;
  }
  let x_1387 : f32 = x_1381;
  SV_Target0.w = x_1387;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

