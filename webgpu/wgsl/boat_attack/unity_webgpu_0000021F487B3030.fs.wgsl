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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_566 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_966 : AdditionalLights;

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
  var u_xlat6 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
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
  var x_1190 : f32;
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
  let x_313 : f32 = vs_TEXCOORD1.y;
  let x_315 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_313 * x_315);
  let x_318 : f32 = x_44.unity_MatrixV[0i].z;
  let x_320 : f32 = vs_TEXCOORD1.x;
  let x_322 : f32 = u_xlat33;
  u_xlat33 = ((x_318 * x_320) + x_322);
  let x_325 : f32 = x_44.unity_MatrixV[2i].z;
  let x_327 : f32 = vs_TEXCOORD1.z;
  let x_329 : f32 = u_xlat33;
  u_xlat33 = ((x_325 * x_327) + x_329);
  let x_331 : f32 = u_xlat33;
  let x_334 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_331 + x_334);
  let x_336 : f32 = u_xlat33;
  let x_340 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_336) + -(x_340));
  let x_343 : f32 = u_xlat33;
  u_xlat33 = max(x_343, 0.0f);
  let x_345 : f32 = u_xlat33;
  let x_347 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_345 * x_347);
  let x_355 : vec2<f32> = vs_TEXCOORD8;
  let x_357 : f32 = x_44.x_GlobalMipBias.x;
  let x_358 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_355, x_357);
  u_xlat5 = x_358;
  let x_364 : vec2<f32> = vs_TEXCOORD8;
  let x_366 : f32 = x_44.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_364, x_366);
  u_xlat6 = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat5;
  let x_373 : vec3<f32> = (vec3<f32>(x_369.x, x_369.y, x_369.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_374 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec3<f32> = u_xlat4;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat23.x = dot(x_376, vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_382 : f32 = u_xlat23.x;
  u_xlat23.x = (x_382 + 0.5f);
  let x_386 : vec2<f32> = u_xlat23;
  let x_388 : vec3<f32> = u_xlat6;
  let x_389 : vec3<f32> = (vec3<f32>(x_386.x, x_386.x, x_386.x) * x_388);
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat5.w;
  u_xlat23.x = max(x_393, 0.0001f);
  let x_397 : vec4<f32> = u_xlat5;
  let x_399 : vec2<f32> = u_xlat23;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) / vec3<f32>(x_399.x, x_399.x, x_399.x));
  let x_402 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_406 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_407 : vec2<f32> = vec2<f32>(x_406.x, x_406.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_407.x, x_407.y));
  let x_412 : vec2<f32> = u_xlat23;
  let x_413 : vec4<f32> = hlslcc_FragCoord;
  let x_415 : vec2<f32> = (x_412 * vec2<f32>(x_413.x, x_413.y));
  let x_416 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_415.x, x_415.y, x_416.z);
  let x_419 : f32 = u_xlat6.y;
  let x_422 : f32 = x_44.x_ScaleBiasRt.x;
  let x_425 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_419 * x_422) + x_425);
  let x_429 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_429) + 1.0f);
  let x_434 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_434) * 0.959999979f) + 0.959999979f);
  let x_442 : f32 = u_xlat1.y;
  let x_444 : f32 = x_69.x_Smoothness;
  let x_447 : f32 = u_xlat23.x;
  u_xlat34 = ((x_442 * x_444) + -(x_447));
  let x_451 : vec2<f32> = u_xlat23;
  let x_453 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_451.x, x_451.x, x_451.x) * vec3<f32>(x_453.y, x_453.z, x_453.w));
  let x_456 : vec4<f32> = u_xlat0;
  let x_459 : vec4<f32> = x_69.x_BaseColor;
  let x_464 : vec3<f32> = ((vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_459.x, x_459.y, x_459.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_465 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec2<f32> = u_xlat1;
  let x_469 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = ((vec3<f32>(x_467.x, x_467.x, x_467.x) * vec3<f32>(x_469.x, x_469.y, x_469.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : f32 = u_xlat1.y;
  let x_481 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_478) * x_481) + 1.0f);
  let x_487 : f32 = u_xlat1.x;
  let x_489 : f32 = u_xlat1.x;
  u_xlat12.x = (x_487 * x_489);
  let x_493 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_493, 0.0078125f);
  let x_498 : f32 = u_xlat12.x;
  let x_500 : f32 = u_xlat12.x;
  u_xlat23.x = (x_498 * x_500);
  let x_503 : f32 = u_xlat34;
  u_xlat34 = (x_503 + 1.0f);
  let x_505 : f32 = u_xlat34;
  u_xlat34 = clamp(x_505, 0.0f, 1.0f);
  let x_509 : f32 = u_xlat12.x;
  u_xlat37 = ((x_509 * 4.0f) + 2.0f);
  let x_519 : vec3<f32> = u_xlat6;
  let x_522 : f32 = x_44.x_GlobalMipBias.x;
  let x_523 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_519.x, x_519.z), x_522);
  u_xlat38 = x_523.x;
  let x_525 : f32 = u_xlat38;
  u_xlat6.x = (x_525 + -1.0f);
  let x_530 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_532 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_530 * x_532) + 1.0f);
  let x_537 : f32 = u_xlat3.x;
  let x_538 : f32 = u_xlat38;
  u_xlat3.x = min(x_537, x_538);
  let x_543 : vec4<f32> = vs_TEXCOORD6;
  let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.y);
  let x_546 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_544.x, x_544.y, x_546);
  let x_558 : vec3<f32> = txVec0;
  let x_560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_558.xy, x_558.z);
  u_xlat38 = x_560;
  let x_568 : f32 = x_566.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_568) + 1.0f);
  let x_572 : f32 = u_xlat38;
  let x_574 : f32 = x_566.x_MainLightShadowParams.x;
  let x_577 : f32 = u_xlat17.x;
  u_xlat38 = ((x_572 * x_574) + x_577);
  let x_581 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_581);
  let x_585 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_585 >= 1.0f);
  let x_587 : bool = u_xlatb28;
  let x_588 : bool = u_xlatb17;
  u_xlatb17 = (x_587 | x_588);
  let x_590 : bool = u_xlatb17;
  let x_591 : f32 = u_xlat38;
  u_xlat38 = select(x_591, 1.0f, x_590);
  let x_593 : vec3<f32> = vs_TEXCOORD1;
  let x_595 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_593 + -(x_595));
  let x_598 : vec3<f32> = u_xlat17;
  let x_599 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_598, x_599);
  let x_603 : f32 = u_xlat17.x;
  let x_605 : f32 = x_566.x_MainLightShadowParams.z;
  let x_608 : f32 = x_566.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_603 * x_605) + x_608);
  let x_612 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_612, 0.0f, 1.0f);
  let x_616 : f32 = u_xlat38;
  u_xlat28 = (-(x_616) + 1.0f);
  let x_620 : f32 = u_xlat17.x;
  let x_621 : f32 = u_xlat28;
  let x_623 : f32 = u_xlat38;
  u_xlat38 = ((x_620 * x_621) + x_623);
  let x_625 : vec3<f32> = u_xlat6;
  let x_628 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_625.x, x_625.x, x_625.x) * vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_632 : vec3<f32> = u_xlat14;
  let x_634 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_632), x_634);
  let x_638 : f32 = u_xlat7.x;
  let x_640 : f32 = u_xlat7.x;
  u_xlat7.x = (x_638 + x_640);
  let x_643 : vec3<f32> = u_xlat4;
  let x_644 : vec3<f32> = u_xlat7;
  let x_648 : vec3<f32> = u_xlat14;
  u_xlat7 = ((x_643 * -(vec3<f32>(x_644.x, x_644.x, x_644.x))) + -(x_648));
  let x_652 : vec3<f32> = u_xlat4;
  let x_653 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(x_652, x_653);
  let x_655 : f32 = u_xlat40;
  u_xlat40 = clamp(x_655, 0.0f, 1.0f);
  let x_657 : f32 = u_xlat40;
  u_xlat40 = (-(x_657) + 1.0f);
  let x_660 : f32 = u_xlat40;
  let x_661 : f32 = u_xlat40;
  u_xlat40 = (x_660 * x_661);
  let x_663 : f32 = u_xlat40;
  let x_664 : f32 = u_xlat40;
  u_xlat40 = (x_663 * x_664);
  let x_668 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_668) * 0.699999988f) + 1.700000048f);
  let x_676 : f32 = u_xlat1.x;
  let x_678 : f32 = u_xlat8.x;
  u_xlat1.x = (x_676 * x_678);
  let x_682 : f32 = u_xlat1.x;
  u_xlat1.x = (x_682 * 6.0f);
  let x_694 : vec3<f32> = u_xlat7;
  let x_696 : f32 = u_xlat1.x;
  let x_697 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_694, x_696);
  u_xlat8 = x_697;
  let x_699 : f32 = u_xlat8.w;
  u_xlat1.x = (x_699 + -1.0f);
  let x_703 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_705 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_703 * x_705) + 1.0f);
  let x_710 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_710, 0.0f);
  let x_714 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_714);
  let x_718 : f32 = u_xlat1.x;
  let x_720 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_718 * x_720);
  let x_724 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_724);
  let x_728 : f32 = u_xlat1.x;
  let x_730 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_728 * x_730);
  let x_733 : vec4<f32> = u_xlat8;
  let x_735 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.x, x_735.x, x_735.x));
  let x_738 : vec3<f32> = u_xlat12;
  let x_740 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_738.x, x_738.x) * vec2<f32>(x_740.x, x_740.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_746 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_746);
  let x_749 : vec4<f32> = u_xlat0;
  let x_752 : f32 = u_xlat34;
  let x_754 : vec3<f32> = (-(vec3<f32>(x_749.x, x_749.y, x_749.z)) + vec3<f32>(x_752, x_752, x_752));
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : f32 = u_xlat40;
  let x_759 : vec4<f32> = u_xlat8;
  let x_762 : vec4<f32> = u_xlat0;
  let x_764 : vec3<f32> = ((vec3<f32>(x_757, x_757, x_757) * vec3<f32>(x_759.x, x_759.y, x_759.z)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec3<f32> = u_xlat12;
  let x_769 : vec4<f32> = u_xlat8;
  let x_771 : vec3<f32> = (vec3<f32>(x_767.x, x_767.x, x_767.x) * vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec3<f32> = u_xlat7;
  let x_775 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_774 * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat5;
  let x_780 : vec3<f32> = u_xlat13;
  let x_782 : vec3<f32> = u_xlat7;
  let x_783 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * x_780) + x_782);
  let x_784 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : f32 = u_xlat38;
  let x_789 : f32 = x_185.unity_LightData.z;
  u_xlat12.x = (x_786 * x_789);
  let x_792 : vec3<f32> = u_xlat4;
  let x_794 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(x_792, vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_797 : f32 = u_xlat34;
  u_xlat34 = clamp(x_797, 0.0f, 1.0f);
  let x_799 : f32 = u_xlat34;
  let x_801 : f32 = u_xlat12.x;
  u_xlat12.x = (x_799 * x_801);
  let x_804 : vec3<f32> = u_xlat12;
  let x_806 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_804.x, x_804.x, x_804.x) * x_806);
  let x_808 : vec3<f32> = u_xlat14;
  let x_810 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_808 + vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : vec3<f32> = u_xlat7;
  let x_814 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_813, x_814);
  let x_818 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_818, 1.17549435e-37f);
  let x_823 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_823);
  let x_826 : vec3<f32> = u_xlat12;
  let x_828 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_826.x, x_826.x, x_826.x) * x_828);
  let x_830 : vec3<f32> = u_xlat4;
  let x_831 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_830, x_831);
  let x_835 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_835, 0.0f, 1.0f);
  let x_839 : vec4<f32> = x_44.x_MainLightPosition;
  let x_841 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
  let x_845 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_845, 0.0f, 1.0f);
  let x_848 : vec3<f32> = u_xlat12;
  let x_850 : vec3<f32> = u_xlat12;
  let x_852 : vec2<f32> = (vec2<f32>(x_848.x, x_848.z) * vec2<f32>(x_850.x, x_850.z));
  let x_853 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_852.x, x_853.y, x_852.y);
  let x_856 : f32 = u_xlat12.x;
  let x_858 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_856 * x_858) + 1.000010014f);
  let x_864 : f32 = u_xlat12.x;
  let x_866 : f32 = u_xlat12.x;
  u_xlat12.x = (x_864 * x_866);
  let x_870 : f32 = u_xlat12.z;
  u_xlat34 = max(x_870, 0.100000001f);
  let x_873 : f32 = u_xlat34;
  let x_875 : f32 = u_xlat12.x;
  u_xlat12.x = (x_873 * x_875);
  let x_878 : f32 = u_xlat37;
  let x_880 : f32 = u_xlat12.x;
  u_xlat12.x = (x_878 * x_880);
  let x_884 : f32 = u_xlat23.x;
  let x_886 : f32 = u_xlat12.x;
  u_xlat12.x = (x_884 / x_886);
  let x_889 : vec4<f32> = u_xlat0;
  let x_891 : vec3<f32> = u_xlat12;
  let x_894 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(x_891.x, x_891.x, x_891.x)) + x_894);
  let x_896 : vec3<f32> = u_xlat17;
  let x_897 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_896 * x_897);
  let x_900 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_902 : f32 = x_185.unity_LightData.y;
  u_xlat12.x = min(x_900, x_902);
  let x_908 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_908));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_920 : u32 = u_xlatu_loop_1;
    let x_921 : u32 = u_xlatu12;
    if ((x_920 < x_921)) {
    } else {
      break;
    }
    let x_924 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_924 >> 2u);
    let x_928 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_928 & 3u));
    let x_931 : u32 = u_xlatu38;
    let x_934 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_931)];
    let x_944 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_949 : vec4<u32> = indexable[x_944];
    u_xlat38 = dot(x_934, bitcast<vec4<f32>>(x_949));
    let x_953 : f32 = u_xlat38;
    u_xlati38 = i32(x_953);
    let x_955 : vec3<f32> = vs_TEXCOORD1;
    let x_967 : i32 = u_xlati38;
    let x_969 : vec4<f32> = x_966.x_AdditionalLightsPosition[x_967];
    let x_972 : i32 = u_xlati38;
    let x_974 : vec4<f32> = x_966.x_AdditionalLightsPosition[x_972];
    let x_976 : vec3<f32> = ((-(x_955) * vec3<f32>(x_969.w, x_969.w, x_969.w)) + vec3<f32>(x_974.x, x_974.y, x_974.z));
    let x_977 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
    let x_979 : vec4<f32> = u_xlat8;
    let x_981 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), vec3<f32>(x_981.x, x_981.y, x_981.z));
    let x_984 : f32 = u_xlat40;
    u_xlat40 = max(x_984, 6.10351562e-05f);
    let x_988 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_988);
    let x_991 : f32 = u_xlat41;
    let x_993 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_991, x_991, x_991) * vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_997 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_997);
    let x_999 : f32 = u_xlat40;
    let x_1000 : i32 = u_xlati38;
    let x_1002 : f32 = x_966.x_AdditionalLightsAttenuation[x_1000].x;
    u_xlat40 = (x_999 * x_1002);
    let x_1004 : f32 = u_xlat40;
    let x_1006 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1004) * x_1006) + 1.0f);
    let x_1009 : f32 = u_xlat40;
    u_xlat40 = max(x_1009, 0.0f);
    let x_1011 : f32 = u_xlat40;
    let x_1012 : f32 = u_xlat40;
    u_xlat40 = (x_1011 * x_1012);
    let x_1014 : f32 = u_xlat40;
    let x_1015 : f32 = u_xlat42;
    u_xlat40 = (x_1014 * x_1015);
    let x_1017 : i32 = u_xlati38;
    let x_1019 : vec4<f32> = x_966.x_AdditionalLightsSpotDir[x_1017];
    let x_1021 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1019.x, x_1019.y, x_1019.z), x_1021);
    let x_1023 : f32 = u_xlat42;
    let x_1024 : i32 = u_xlati38;
    let x_1026 : f32 = x_966.x_AdditionalLightsAttenuation[x_1024].z;
    let x_1028 : i32 = u_xlati38;
    let x_1030 : f32 = x_966.x_AdditionalLightsAttenuation[x_1028].w;
    u_xlat42 = ((x_1023 * x_1026) + x_1030);
    let x_1032 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1032, 0.0f, 1.0f);
    let x_1034 : f32 = u_xlat42;
    let x_1035 : f32 = u_xlat42;
    u_xlat42 = (x_1034 * x_1035);
    let x_1037 : f32 = u_xlat40;
    let x_1038 : f32 = u_xlat42;
    u_xlat40 = (x_1037 * x_1038);
    let x_1041 : vec3<f32> = u_xlat6;
    let x_1043 : i32 = u_xlati38;
    let x_1045 : vec4<f32> = x_966.x_AdditionalLightsColor[x_1043];
    u_xlat10 = (vec3<f32>(x_1041.x, x_1041.x, x_1041.x) * vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
    let x_1048 : vec3<f32> = u_xlat4;
    let x_1049 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1048, x_1049);
    let x_1051 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1051, 0.0f, 1.0f);
    let x_1053 : f32 = u_xlat38;
    let x_1054 : f32 = u_xlat40;
    u_xlat38 = (x_1053 * x_1054);
    let x_1056 : f32 = u_xlat38;
    let x_1058 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1056, x_1056, x_1056) * x_1058);
    let x_1060 : vec4<f32> = u_xlat8;
    let x_1062 : f32 = u_xlat41;
    let x_1065 : vec3<f32> = u_xlat14;
    let x_1066 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(x_1062, x_1062, x_1062)) + x_1065);
    let x_1067 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
    let x_1069 : vec4<f32> = u_xlat8;
    let x_1071 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1069.x, x_1069.y, x_1069.z), vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
    let x_1074 : f32 = u_xlat38;
    u_xlat38 = max(x_1074, 1.17549435e-37f);
    let x_1076 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1076);
    let x_1078 : f32 = u_xlat38;
    let x_1080 : vec4<f32> = u_xlat8;
    let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
    let x_1085 : vec3<f32> = u_xlat4;
    let x_1086 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1085, vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
    let x_1089 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1089, 0.0f, 1.0f);
    let x_1091 : vec3<f32> = u_xlat9;
    let x_1092 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1091, vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
    let x_1095 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1095, 0.0f, 1.0f);
    let x_1097 : f32 = u_xlat38;
    let x_1098 : f32 = u_xlat38;
    u_xlat38 = (x_1097 * x_1098);
    let x_1100 : f32 = u_xlat38;
    let x_1102 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1100 * x_1102) + 1.000010014f);
    let x_1105 : f32 = u_xlat40;
    let x_1106 : f32 = u_xlat40;
    u_xlat40 = (x_1105 * x_1106);
    let x_1108 : f32 = u_xlat38;
    let x_1109 : f32 = u_xlat38;
    u_xlat38 = (x_1108 * x_1109);
    let x_1111 : f32 = u_xlat40;
    u_xlat40 = max(x_1111, 0.100000001f);
    let x_1113 : f32 = u_xlat38;
    let x_1114 : f32 = u_xlat40;
    u_xlat38 = (x_1113 * x_1114);
    let x_1116 : f32 = u_xlat37;
    let x_1117 : f32 = u_xlat38;
    u_xlat38 = (x_1116 * x_1117);
    let x_1120 : f32 = u_xlat23.x;
    let x_1121 : f32 = u_xlat38;
    u_xlat38 = (x_1120 / x_1121);
    let x_1123 : vec4<f32> = u_xlat0;
    let x_1125 : f32 = u_xlat38;
    let x_1128 : vec3<f32> = u_xlat13;
    let x_1129 : vec3<f32> = ((vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(x_1125, x_1125, x_1125)) + x_1128);
    let x_1130 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
    let x_1132 : vec4<f32> = u_xlat8;
    let x_1134 : vec3<f32> = u_xlat10;
    let x_1136 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1132.x, x_1132.y, x_1132.z) * x_1134) + x_1136);

    continuing {
      let x_1138 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1138 + bitcast<u32>(1i));
    }
  }
  let x_1140 : vec4<f32> = u_xlat5;
  let x_1142 : vec3<f32> = u_xlat3;
  let x_1145 : vec3<f32> = u_xlat17;
  let x_1146 : vec3<f32> = ((vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * vec3<f32>(x_1142.x, x_1142.x, x_1142.x)) + x_1145);
  let x_1147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec3<f32> = u_xlat7;
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1152 : vec3<f32> = (x_1149 + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : f32 = u_xlat33;
  let x_1156 : f32 = u_xlat33;
  u_xlat33 = (x_1155 * -(x_1156));
  let x_1159 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1159);
  let x_1161 : vec4<f32> = u_xlat0;
  let x_1165 : vec4<f32> = x_44.unity_FogColor;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1161.x, x_1161.y, x_1161.z) + -(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)));
  let x_1169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1173 : f32 = u_xlat33;
  let x_1175 : vec4<f32> = u_xlat0;
  let x_1179 : vec4<f32> = x_44.unity_FogColor;
  let x_1181 : vec3<f32> = ((vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(x_1175.x, x_1175.y, x_1175.z)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1187 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1187 == 1.0f);
  let x_1189 : bool = u_xlatb0;
  if (x_1189) {
    let x_1194 : f32 = u_xlat2.x;
    x_1190 = x_1194;
  } else {
    x_1190 = 1.0f;
  }
  let x_1196 : f32 = x_1190;
  SV_Target0.w = x_1196;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

