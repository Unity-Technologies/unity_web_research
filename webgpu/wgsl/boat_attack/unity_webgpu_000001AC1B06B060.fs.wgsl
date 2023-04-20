diagnostic(off, derivative_uniformity);

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_5,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_592 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(1) @binding(2) var<uniform> x_814 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1041 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_1540 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var x_562 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_994 : f32;
  var x_1124 : f32;
  var x_1135 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1670 : f32;
  var x_1680 : f32;
  var txVec1 : vec3<f32>;
  var x_2108 : f32;
  var x_2121 : f32;
  var x_2179 : f32;
  var x_2190 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb43;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb44;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat43;
  u_xlat43 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat43;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_375;
  let x_378 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_378;
  let x_381 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_381;
  let x_384 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_384;
  let x_387 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_387;
  let x_390 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_392 + x_393);
  let x_396 : f32 = u_xlat0.z;
  u_xlat7.x = x_396;
  let x_399 : f32 = u_xlat1.z;
  u_xlat7.y = x_399;
  let x_402 : f32 = u_xlat2.z;
  u_xlat7.z = x_402;
  let x_405 : f32 = u_xlat3.y;
  u_xlat7.w = x_405;
  let x_407 : vec4<f32> = u_xlat9;
  let x_410 : f32 = x_13.x_Smoothness0;
  let x_412 : f32 = x_13.x_Smoothness1;
  let x_414 : f32 = x_13.x_Smoothness2;
  let x_416 : f32 = x_13.x_Smoothness3;
  let x_419 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_407) * vec4<f32>(x_410, x_412, x_414, x_416)) + x_419);
  let x_423 : f32 = x_13.x_LayerHasMask0;
  let x_426 : f32 = x_13.x_LayerHasMask1;
  let x_429 : f32 = x_13.x_LayerHasMask2;
  let x_432 : f32 = x_13.x_LayerHasMask3;
  let x_434 : vec4<f32> = u_xlat7;
  let x_436 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_423, x_426, x_429, x_432) * x_434) + x_436);
  let x_439 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_439, x_440);
  let x_443 : f32 = u_xlat0.x;
  u_xlat7.x = x_443;
  let x_446 : f32 = u_xlat1.x;
  u_xlat7.y = x_446;
  let x_449 : f32 = u_xlat2.x;
  u_xlat7.z = x_449;
  let x_452 : f32 = u_xlat3.x;
  u_xlat7.w = x_452;
  let x_454 : vec4<f32> = u_xlat7;
  let x_457 : f32 = x_13.x_Metallic0;
  let x_460 : f32 = x_13.x_Metallic1;
  let x_463 : f32 = x_13.x_Metallic2;
  let x_466 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_454 + -(vec4<f32>(x_457, x_460, x_463, x_466)));
  let x_471 : f32 = x_13.x_LayerHasMask0;
  let x_473 : f32 = x_13.x_LayerHasMask1;
  let x_475 : f32 = x_13.x_LayerHasMask2;
  let x_477 : f32 = x_13.x_LayerHasMask3;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : f32 = x_13.x_Metallic0;
  let x_484 : f32 = x_13.x_Metallic1;
  let x_486 : f32 = x_13.x_Metallic2;
  let x_488 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_471, x_473, x_475, x_477) * x_479) + vec4<f32>(x_482, x_484, x_486, x_488));
  let x_491 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_491, x_492);
  let x_496 : f32 = u_xlat0.y;
  u_xlat3.x = x_496;
  let x_499 : f32 = u_xlat1.y;
  u_xlat3.y = x_499;
  let x_502 : f32 = u_xlat2.y;
  u_xlat3.z = x_502;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_504) + x_506);
  let x_509 : f32 = x_13.x_LayerHasMask0;
  let x_511 : f32 = x_13.x_LayerHasMask1;
  let x_513 : f32 = x_13.x_LayerHasMask2;
  let x_515 : f32 = x_13.x_LayerHasMask3;
  let x_517 : vec4<f32> = u_xlat1;
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_509, x_511, x_513, x_515) * x_517) + x_519);
  let x_522 : vec4<f32> = u_xlat4;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_522, x_523);
  let x_527 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_527 == 0.0f);
  let x_532 : vec3<f32> = vs_TEXCOORD7;
  let x_536 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_532) + x_536);
  let x_538 : vec3<f32> = u_xlat15;
  let x_539 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_538, x_539);
  let x_543 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_543);
  let x_546 : vec3<f32> = u_xlat15;
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_546 * vec3<f32>(x_547.x, x_547.x, x_547.x));
  let x_551 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat15;
    x_562 = x_565;
  } else {
    let x_567 : vec4<f32> = u_xlat2;
    x_562 = vec3<f32>(x_567.x, x_567.y, x_567.z);
  }
  let x_569 : vec3<f32> = x_562;
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  let x_574 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_576);
  let x_578 : f32 = u_xlat43;
  let x_580 : vec3<f32> = vs_TEXCOORD3;
  let x_581 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * x_580);
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres0;
  let x_597 : vec3<f32> = (x_584 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres1;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_611 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres2;
  let x_614 : vec3<f32> = (x_608 + -(vec3<f32>(x_611.x, x_611.y, x_611.z)));
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = vs_TEXCOORD7;
  let x_619 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres3;
  let x_622 : vec3<f32> = (x_617 + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat3;
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_643 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = x_592.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_651 < x_653);
  let x_656 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_668);
  let x_672 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_672);
  let x_677 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_677);
  let x_681 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_681);
  let x_684 : vec4<f32> = u_xlat3;
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + vec3<f32>(x_686.y, x_686.z, x_686.w));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat3;
  let x_694 : vec3<f32> = max(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_695.x, x_694.x, x_694.y, x_694.z);
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_697, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_702 : f32 = u_xlat43;
  u_xlat43 = (-(x_702) + 4.0f);
  let x_707 : f32 = u_xlat43;
  u_xlatu43 = u32(x_707);
  let x_711 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_711) << bitcast<u32>(2i));
  let x_714 : vec3<f32> = vs_TEXCOORD7;
  let x_716 : i32 = u_xlati43;
  let x_719 : i32 = u_xlati43;
  let x_723 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_716 + 1i) / 4i)][((x_719 + 1i) % 4i)];
  let x_725 : vec3<f32> = (vec3<f32>(x_714.y, x_714.y, x_714.y) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : i32 = u_xlati43;
  let x_730 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_592.x_MainLightWorldToShadow[(x_728 / 4i)][(x_730 % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.x, x_735.x, x_735.x)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : i32 = u_xlati43;
  let x_746 : i32 = u_xlati43;
  let x_750 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_743 + 2i) / 4i)][((x_746 + 2i) % 4i)];
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752.z, x_752.z, x_752.z)) + vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : i32 = u_xlati43;
  let x_765 : i32 = u_xlati43;
  let x_769 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_762 + 3i) / 4i)][((x_765 + 3i) % 4i)];
  let x_771 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_776 : f32 = vs_TEXCOORD7.y;
  let x_778 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_776 * x_778);
  let x_781 : f32 = x_113.unity_MatrixV[0i].z;
  let x_783 : f32 = vs_TEXCOORD7.x;
  let x_785 : f32 = u_xlat43;
  u_xlat43 = ((x_781 * x_783) + x_785);
  let x_788 : f32 = x_113.unity_MatrixV[2i].z;
  let x_790 : f32 = vs_TEXCOORD7.z;
  let x_792 : f32 = u_xlat43;
  u_xlat43 = ((x_788 * x_790) + x_792);
  let x_794 : f32 = u_xlat43;
  let x_796 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_794 + x_796);
  let x_798 : f32 = u_xlat43;
  let x_801 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_798) + -(x_801));
  let x_804 : f32 = u_xlat43;
  u_xlat43 = max(x_804, 0.0f);
  let x_806 : f32 = u_xlat43;
  let x_808 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_806 * x_808);
  u_xlat2.w = 1.0f;
  let x_816 : vec4<f32> = x_814.unity_SHAr;
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_814.unity_SHAg;
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_821, x_822);
  let x_826 : vec4<f32> = x_814.unity_SHAb;
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_826, x_827);
  let x_830 : vec4<f32> = u_xlat2;
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_830.y, x_830.z, x_830.z, x_830.x) * vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.z));
  let x_836 : vec4<f32> = x_814.unity_SHBr;
  let x_837 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_836, x_837);
  let x_841 : vec4<f32> = x_814.unity_SHBg;
  let x_842 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_841, x_842);
  let x_846 : vec4<f32> = x_814.unity_SHBb;
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_846, x_847);
  let x_852 : f32 = u_xlat2.y;
  let x_854 : f32 = u_xlat2.y;
  u_xlat44 = (x_852 * x_854);
  let x_857 : f32 = u_xlat2.x;
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat44;
  u_xlat44 = ((x_857 * x_859) + -(x_861));
  let x_866 : vec4<f32> = x_814.unity_SHC;
  let x_868 : f32 = u_xlat44;
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat4;
  let x_878 : vec4<f32> = u_xlat6;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec3<f32> = max(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat44;
  u_xlat45 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat44;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat5;
  let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = u_xlat0;
  let x_914 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_920 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat28;
  u_xlat0.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat0.x;
  u_xlat44 = (x_927 * x_929);
  let x_931 : f32 = u_xlat44;
  u_xlat44 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat44;
  let x_936 : f32 = u_xlat44;
  u_xlat46 = (x_935 * x_936);
  let x_938 : f32 = u_xlat28;
  let x_939 : f32 = u_xlat45;
  u_xlat28 = (x_938 + x_939);
  let x_941 : f32 = u_xlat28;
  u_xlat28 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat44;
  u_xlat45 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat14;
  u_xlat14 = min(x_946, 1.0f);
  let x_949 : vec4<f32> = u_xlat3;
  let x_950 : vec2<f32> = vec2<f32>(x_949.x, x_949.y);
  let x_952 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_950.x, x_950.y, x_952);
  let x_964 : vec3<f32> = txVec0;
  let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_964.xy, x_964.z);
  u_xlat3.x = x_966;
  let x_970 : f32 = x_592.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_970) + 1.0f);
  let x_974 : f32 = u_xlat3.x;
  let x_976 : f32 = x_592.x_MainLightShadowParams.x;
  let x_978 : f32 = u_xlat17;
  u_xlat3.x = ((x_974 * x_976) + x_978);
  let x_983 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_983);
  let x_987 : f32 = u_xlat3.z;
  u_xlatb31 = (x_987 >= 1.0f);
  let x_989 : bool = u_xlatb31;
  let x_990 : bool = u_xlatb17;
  u_xlatb17 = (x_989 | x_990);
  let x_992 : bool = u_xlatb17;
  if (x_992) {
    x_994 = 1.0f;
  } else {
    let x_999 : f32 = u_xlat3.x;
    x_994 = x_999;
  }
  let x_1000 : f32 = x_994;
  u_xlat3.x = x_1000;
  let x_1002 : vec3<f32> = vs_TEXCOORD7;
  let x_1004 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_1006 : vec3<f32> = (x_1002 + -(x_1004));
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1015 : f32 = u_xlat17;
  let x_1017 : f32 = x_592.x_MainLightShadowParams.z;
  let x_1020 : f32 = x_592.x_MainLightShadowParams.w;
  u_xlat31 = ((x_1015 * x_1017) + x_1020);
  let x_1022 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1022, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat31;
  let x_1030 : f32 = u_xlat47;
  let x_1033 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1029 * x_1030) + x_1033);
  let x_1043 : f32 = x_1041.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1043 == -1.0f));
  let x_1045 : bool = u_xlatb31;
  if (x_1045) {
    let x_1048 : vec3<f32> = vs_TEXCOORD7;
    let x_1051 : vec4<f32> = x_1041.x_MainLightWorldToLight[1i];
    let x_1053 : vec2<f32> = (vec2<f32>(x_1048.y, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y));
    let x_1054 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
    let x_1057 : vec4<f32> = x_1041.x_MainLightWorldToLight[0i];
    let x_1059 : vec3<f32> = vs_TEXCOORD7;
    let x_1062 : vec4<f32> = u_xlat7;
    let x_1064 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1059.x, x_1059.x)) + vec2<f32>(x_1062.x, x_1062.y));
    let x_1065 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
    let x_1068 : vec4<f32> = x_1041.x_MainLightWorldToLight[2i];
    let x_1070 : vec3<f32> = vs_TEXCOORD7;
    let x_1073 : vec4<f32> = u_xlat7;
    let x_1075 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1070.z, x_1070.z)) + vec2<f32>(x_1073.x, x_1073.y));
    let x_1076 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
    let x_1078 : vec4<f32> = u_xlat7;
    let x_1081 : vec4<f32> = x_1041.x_MainLightWorldToLight[3i];
    let x_1083 : vec2<f32> = (vec2<f32>(x_1078.x, x_1078.y) + vec2<f32>(x_1081.x, x_1081.y));
    let x_1084 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
    let x_1086 : vec4<f32> = u_xlat7;
    let x_1089 : vec2<f32> = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1090 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
    let x_1097 : vec4<f32> = u_xlat7;
    let x_1100 : f32 = x_113.x_GlobalMipBias.x;
    let x_1101 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1097.x, x_1097.y), x_1100);
    u_xlat7 = x_1101;
    let x_1106 : f32 = x_1041.x_MainLightCookieTextureFormat;
    let x_1108 : f32 = x_1041.x_MainLightCookieTextureFormat;
    let x_1110 : f32 = x_1041.x_MainLightCookieTextureFormat;
    let x_1112 : f32 = x_1041.x_MainLightCookieTextureFormat;
    let x_1113 : vec4<f32> = vec4<f32>(x_1106, x_1108, x_1110, x_1112);
    let x_1120 : vec4<bool> = (vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1113.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1120.x, x_1120.y);
    let x_1123 : bool = u_xlatb8.y;
    if (x_1123) {
      let x_1128 : f32 = u_xlat7.w;
      x_1124 = x_1128;
    } else {
      let x_1131 : f32 = u_xlat7.x;
      x_1124 = x_1131;
    }
    let x_1132 : f32 = x_1124;
    u_xlat31 = x_1132;
    let x_1134 : bool = u_xlatb8.x;
    if (x_1134) {
      let x_1138 : vec4<f32> = u_xlat7;
      x_1135 = vec3<f32>(x_1138.x, x_1138.y, x_1138.z);
    } else {
      let x_1141 : f32 = u_xlat31;
      x_1135 = vec3<f32>(x_1141, x_1141, x_1141);
    }
    let x_1143 : vec3<f32> = x_1135;
    let x_1144 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1153 : vec4<f32> = x_113.x_MainLightColor;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat1;
  let x_1161 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1158.x, x_1158.y, x_1158.z)), vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : f32 = u_xlat31;
  let x_1165 : f32 = u_xlat31;
  u_xlat31 = (x_1164 + x_1165);
  let x_1167 : vec4<f32> = u_xlat2;
  let x_1169 : f32 = u_xlat31;
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1176 : vec3<f32> = ((vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * -(vec3<f32>(x_1169, x_1169, x_1169))) + -(vec3<f32>(x_1173.x, x_1173.y, x_1173.z)));
  let x_1177 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat2;
  let x_1181 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(vec3<f32>(x_1179.x, x_1179.y, x_1179.z), vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1184, 0.0f, 1.0f);
  let x_1186 : f32 = u_xlat31;
  u_xlat31 = (-(x_1186) + 1.0f);
  let x_1189 : f32 = u_xlat31;
  let x_1190 : f32 = u_xlat31;
  u_xlat31 = (x_1189 * x_1190);
  let x_1192 : f32 = u_xlat31;
  let x_1193 : f32 = u_xlat31;
  u_xlat31 = (x_1192 * x_1193);
  let x_1196 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1196) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1203 : f32 = u_xlat0.x;
  let x_1204 : f32 = u_xlat47;
  u_xlat0.x = (x_1203 * x_1204);
  let x_1208 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1208 * 6.0f);
  let x_1220 : vec4<f32> = u_xlat8;
  let x_1223 : f32 = u_xlat0.x;
  let x_1224 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1220.x, x_1220.y, x_1220.z), x_1223);
  u_xlat8 = x_1224;
  let x_1226 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1226 + -1.0f);
  let x_1230 : f32 = x_814.unity_SpecCube0_HDR.w;
  let x_1232 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1230 * x_1232) + 1.0f);
  let x_1237 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1237, 0.0f);
  let x_1241 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1241);
  let x_1245 : f32 = u_xlat0.x;
  let x_1247 : f32 = x_814.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1245 * x_1247);
  let x_1251 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1251);
  let x_1255 : f32 = u_xlat0.x;
  let x_1257 : f32 = x_814.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1255 * x_1257);
  let x_1260 : vec4<f32> = u_xlat8;
  let x_1262 : vec3<f32> = u_xlat0;
  let x_1264 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * vec3<f32>(x_1262.x, x_1262.x, x_1262.x));
  let x_1265 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : f32 = u_xlat44;
  let x_1269 : f32 = u_xlat44;
  let x_1273 : vec2<f32> = ((vec2<f32>(x_1267, x_1267) * vec2<f32>(x_1269, x_1269)) + vec2<f32>(-1.0f, 1.0f));
  let x_1274 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
  let x_1277 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1277);
  let x_1281 : vec4<f32> = u_xlat5;
  let x_1284 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1281.x, x_1281.y, x_1281.z)) + vec3<f32>(x_1284, x_1284, x_1284));
  let x_1287 : f32 = u_xlat31;
  let x_1289 : vec3<f32> = u_xlat23;
  let x_1291 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1287, x_1287, x_1287) * x_1289) + vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : vec3<f32> = u_xlat0;
  let x_1296 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1294.x, x_1294.x, x_1294.x) * x_1296);
  let x_1298 : vec4<f32> = u_xlat8;
  let x_1300 : vec3<f32> = u_xlat23;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1298.x, x_1298.y, x_1298.z) * x_1300);
  let x_1302 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec4<f32> = u_xlat4;
  let x_1306 : vec4<f32> = u_xlat6;
  let x_1309 : vec4<f32> = u_xlat8;
  let x_1311 : vec3<f32> = ((vec3<f32>(x_1304.x, x_1304.y, x_1304.z) * vec3<f32>(x_1306.x, x_1306.y, x_1306.z)) + vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1315 : f32 = u_xlat3.x;
  let x_1317 : f32 = x_814.unity_LightData.z;
  u_xlat0.x = (x_1315 * x_1317);
  let x_1320 : vec4<f32> = u_xlat2;
  let x_1323 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1320.x, x_1320.y, x_1320.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1326, 0.0f, 1.0f);
  let x_1328 : f32 = u_xlat28;
  let x_1330 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1328 * x_1330);
  let x_1333 : vec3<f32> = u_xlat0;
  let x_1335 : vec4<f32> = u_xlat7;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1333.x, x_1333.x, x_1333.x) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec4<f32> = u_xlat1;
  let x_1343 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1345 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.y, x_1340.z) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1348 : vec4<f32> = u_xlat8;
  let x_1350 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1355 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1355, 1.17549435e-38f);
  let x_1360 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1360);
  let x_1363 : vec3<f32> = u_xlat0;
  let x_1365 : vec4<f32> = u_xlat8;
  let x_1367 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.x, x_1363.x) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : vec4<f32> = u_xlat2;
  let x_1372 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1370.x, x_1370.y, x_1370.z), vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1377 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1377, 0.0f, 1.0f);
  let x_1381 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1383 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1381.x, x_1381.y, x_1381.z), vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
  let x_1388 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1388, 0.0f, 1.0f);
  let x_1391 : vec3<f32> = u_xlat0;
  let x_1393 : vec3<f32> = u_xlat0;
  let x_1395 : vec2<f32> = (vec2<f32>(x_1391.x, x_1391.z) * vec2<f32>(x_1393.x, x_1393.z));
  let x_1396 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1395.x, x_1396.y, x_1395.y);
  let x_1399 : f32 = u_xlat0.x;
  let x_1401 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1399 * x_1401) + 1.00001001358032226562f);
  let x_1407 : f32 = u_xlat0.x;
  let x_1409 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1407 * x_1409);
  let x_1413 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1413, 0.10000000149011611938f);
  let x_1416 : f32 = u_xlat28;
  let x_1418 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1416 * x_1418);
  let x_1421 : f32 = u_xlat45;
  let x_1423 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1421 * x_1423);
  let x_1426 : f32 = u_xlat46;
  let x_1428 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1426 / x_1428);
  let x_1431 : vec4<f32> = u_xlat5;
  let x_1433 : vec3<f32> = u_xlat0;
  let x_1436 : vec4<f32> = u_xlat6;
  let x_1438 : vec3<f32> = ((vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(x_1433.x, x_1433.x, x_1433.x)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
  let x_1439 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1441 : vec4<f32> = u_xlat7;
  let x_1443 : vec4<f32> = u_xlat8;
  let x_1445 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.y, x_1441.z) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
  let x_1446 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
  let x_1449 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1451 : f32 = x_814.unity_LightData.y;
  u_xlat0.x = min(x_1449, x_1451);
  let x_1456 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1456));
  let x_1459 : f32 = u_xlat17;
  let x_1461 : f32 = x_592.x_AdditionalShadowFadeParams.x;
  let x_1464 : f32 = x_592.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1459 * x_1461) + x_1464);
  let x_1466 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1466, 0.0f, 1.0f);
  let x_1469 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1471 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1473 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1475 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1476 : vec4<f32> = vec4<f32>(x_1469, x_1471, x_1473, x_1475);
  let x_1482 : vec4<bool> = (vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1476.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1483 : vec2<bool> = vec2<bool>(x_1482.x, x_1482.y);
  let x_1484 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1496 : u32 = u_xlatu_loop_1;
    let x_1497 : u32 = u_xlatu0;
    if ((x_1496 < x_1497)) {
    } else {
      break;
    }
    let x_1500 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1500 >> 2u);
    let x_1503 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1503 & 3u));
    let x_1506 : u32 = u_xlatu31;
    let x_1509 : vec4<f32> = x_814.unity_LightIndices[bitcast<i32>(x_1506)];
    let x_1519 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1524 : vec4<u32> = indexable[x_1519];
    u_xlat31 = dot(x_1509, bitcast<vec4<f32>>(x_1524));
    let x_1528 : f32 = u_xlat31;
    u_xlati31 = i32(x_1528);
    let x_1530 : vec3<f32> = vs_TEXCOORD7;
    let x_1541 : i32 = u_xlati31;
    let x_1543 : vec4<f32> = x_1540.x_AdditionalLightsPosition[x_1541];
    let x_1546 : i32 = u_xlati31;
    let x_1548 : vec4<f32> = x_1540.x_AdditionalLightsPosition[x_1546];
    u_xlat23 = ((-(x_1530) * vec3<f32>(x_1543.w, x_1543.w, x_1543.w)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
    let x_1551 : vec3<f32> = u_xlat23;
    let x_1552 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1551, x_1552);
    let x_1554 : f32 = u_xlat47;
    u_xlat47 = max(x_1554, 0.00006103515625f);
    let x_1557 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1557);
    let x_1559 : f32 = u_xlat48;
    let x_1561 : vec3<f32> = u_xlat23;
    let x_1562 : vec3<f32> = (vec3<f32>(x_1559, x_1559, x_1559) * x_1561);
    let x_1563 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
    let x_1566 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1566);
    let x_1568 : f32 = u_xlat47;
    let x_1569 : i32 = u_xlati31;
    let x_1571 : f32 = x_1540.x_AdditionalLightsAttenuation[x_1569].x;
    u_xlat47 = (x_1568 * x_1571);
    let x_1573 : f32 = u_xlat47;
    let x_1575 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1573) * x_1575) + 1.0f);
    let x_1578 : f32 = u_xlat47;
    u_xlat47 = max(x_1578, 0.0f);
    let x_1580 : f32 = u_xlat47;
    let x_1581 : f32 = u_xlat47;
    u_xlat47 = (x_1580 * x_1581);
    let x_1583 : f32 = u_xlat47;
    let x_1584 : f32 = u_xlat49;
    u_xlat47 = (x_1583 * x_1584);
    let x_1586 : i32 = u_xlati31;
    let x_1588 : vec4<f32> = x_1540.x_AdditionalLightsSpotDir[x_1586];
    let x_1590 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1588.x, x_1588.y, x_1588.z), vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1593 : f32 = u_xlat49;
    let x_1594 : i32 = u_xlati31;
    let x_1596 : f32 = x_1540.x_AdditionalLightsAttenuation[x_1594].z;
    let x_1598 : i32 = u_xlati31;
    let x_1600 : f32 = x_1540.x_AdditionalLightsAttenuation[x_1598].w;
    u_xlat49 = ((x_1593 * x_1596) + x_1600);
    let x_1602 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1602, 0.0f, 1.0f);
    let x_1604 : f32 = u_xlat49;
    let x_1605 : f32 = u_xlat49;
    u_xlat49 = (x_1604 * x_1605);
    let x_1607 : f32 = u_xlat47;
    let x_1608 : f32 = u_xlat49;
    u_xlat47 = (x_1607 * x_1608);
    let x_1611 : i32 = u_xlati31;
    let x_1613 : f32 = x_592.x_AdditionalShadowParams[x_1611].w;
    u_xlati49 = i32(x_1613);
    let x_1616 : i32 = u_xlati49;
    u_xlatb50 = (x_1616 >= 0i);
    let x_1618 : bool = u_xlatb50;
    if (x_1618) {
      let x_1622 : i32 = u_xlati31;
      let x_1624 : f32 = x_592.x_AdditionalShadowParams[x_1622].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1624, x_1624, x_1624, x_1624))));
      let x_1628 : bool = u_xlatb50;
      if (x_1628) {
        let x_1632 : vec4<f32> = u_xlat10;
        let x_1635 : vec4<f32> = u_xlat10;
        let x_1638 : vec4<bool> = (abs(vec4<f32>(x_1632.z, x_1632.z, x_1632.y, x_1632.z)) >= abs(vec4<f32>(x_1635.x, x_1635.y, x_1635.x, x_1635.x)));
        let x_1640 : vec3<bool> = vec3<bool>(x_1638.x, x_1638.y, x_1638.z);
        let x_1641 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
        let x_1644 : bool = u_xlatb11.y;
        let x_1646 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1644 & x_1646);
        let x_1648 : vec4<f32> = u_xlat10;
        let x_1651 : vec4<bool> = (-(vec4<f32>(x_1648.z, x_1648.y, x_1648.z, x_1648.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1652 : vec3<bool> = vec3<bool>(x_1651.x, x_1651.y, x_1651.w);
        let x_1653 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1652.x, x_1652.y, x_1653.z, x_1652.z);
        let x_1656 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1656);
        let x_1661 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1661);
        let x_1666 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1666);
        let x_1669 : bool = u_xlatb11.z;
        if (x_1669) {
          let x_1674 : f32 = u_xlat11.y;
          x_1670 = x_1674;
        } else {
          let x_1676 : f32 = u_xlat52;
          x_1670 = x_1676;
        }
        let x_1677 : f32 = x_1670;
        u_xlat52 = x_1677;
        let x_1679 : bool = u_xlatb50;
        if (x_1679) {
          let x_1684 : f32 = u_xlat11.x;
          x_1680 = x_1684;
        } else {
          let x_1686 : f32 = u_xlat52;
          x_1680 = x_1686;
        }
        let x_1687 : f32 = x_1680;
        u_xlat50 = x_1687;
        let x_1688 : i32 = u_xlati31;
        let x_1690 : f32 = x_592.x_AdditionalShadowParams[x_1688].w;
        u_xlat52 = trunc(x_1690);
        let x_1692 : f32 = u_xlat50;
        let x_1693 : f32 = u_xlat52;
        u_xlat50 = (x_1692 + x_1693);
        let x_1695 : f32 = u_xlat50;
        u_xlati49 = i32(x_1695);
      }
      let x_1697 : i32 = u_xlati49;
      u_xlati49 = (x_1697 << bitcast<u32>(2i));
      let x_1699 : vec3<f32> = vs_TEXCOORD7;
      let x_1701 : i32 = u_xlati49;
      let x_1704 : i32 = u_xlati49;
      let x_1708 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_1701 + 1i) / 4i)][((x_1704 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1699.y, x_1699.y, x_1699.y, x_1699.y) * x_1708);
      let x_1710 : i32 = u_xlati49;
      let x_1712 : i32 = u_xlati49;
      let x_1715 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[(x_1710 / 4i)][(x_1712 % 4i)];
      let x_1716 : vec3<f32> = vs_TEXCOORD7;
      let x_1719 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1715 * vec4<f32>(x_1716.x, x_1716.x, x_1716.x, x_1716.x)) + x_1719);
      let x_1721 : i32 = u_xlati49;
      let x_1724 : i32 = u_xlati49;
      let x_1728 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_1721 + 2i) / 4i)][((x_1724 + 2i) % 4i)];
      let x_1729 : vec3<f32> = vs_TEXCOORD7;
      let x_1732 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1728 * vec4<f32>(x_1729.z, x_1729.z, x_1729.z, x_1729.z)) + x_1732);
      let x_1734 : vec4<f32> = u_xlat11;
      let x_1735 : i32 = u_xlati49;
      let x_1738 : i32 = u_xlati49;
      let x_1742 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_1735 + 3i) / 4i)][((x_1738 + 3i) % 4i)];
      u_xlat11 = (x_1734 + x_1742);
      let x_1744 : vec4<f32> = u_xlat11;
      let x_1746 : vec4<f32> = u_xlat11;
      let x_1748 : vec3<f32> = (vec3<f32>(x_1744.x, x_1744.y, x_1744.z) / vec3<f32>(x_1746.w, x_1746.w, x_1746.w));
      let x_1749 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
      let x_1752 : vec4<f32> = u_xlat11;
      let x_1753 : vec2<f32> = vec2<f32>(x_1752.x, x_1752.y);
      let x_1755 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1753.x, x_1753.y, x_1755);
      let x_1763 : vec3<f32> = txVec1;
      let x_1765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1763.xy, x_1763.z);
      u_xlat49 = x_1765;
      let x_1766 : i32 = u_xlati31;
      let x_1768 : f32 = x_592.x_AdditionalShadowParams[x_1766].x;
      u_xlat50 = (1.0f + -(x_1768));
      let x_1771 : f32 = u_xlat49;
      let x_1772 : i32 = u_xlati31;
      let x_1774 : f32 = x_592.x_AdditionalShadowParams[x_1772].x;
      let x_1776 : f32 = u_xlat50;
      u_xlat49 = ((x_1771 * x_1774) + x_1776);
      let x_1779 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1779);
      let x_1783 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1783 >= 1.0f);
      let x_1785 : bool = u_xlatb50;
      let x_1786 : bool = u_xlatb52;
      u_xlatb50 = (x_1785 | x_1786);
      let x_1788 : bool = u_xlatb50;
      let x_1789 : f32 = u_xlat49;
      u_xlat49 = select(x_1789, 1.0f, x_1788);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1792 : f32 = u_xlat49;
    u_xlat50 = (-(x_1792) + 1.0f);
    let x_1795 : f32 = u_xlat28;
    let x_1796 : f32 = u_xlat50;
    let x_1798 : f32 = u_xlat49;
    u_xlat49 = ((x_1795 * x_1796) + x_1798);
    let x_1801 : i32 = u_xlati31;
    u_xlati50 = (1i << bitcast<u32>((x_1801 & 31i)));
    let x_1804 : i32 = u_xlati50;
    let x_1807 : f32 = x_1041.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1804) & bitcast<u32>(x_1807)));
    let x_1811 : i32 = u_xlati50;
    if ((x_1811 != 0i)) {
      let x_1815 : i32 = u_xlati31;
      let x_1817 : f32 = x_1041.x_AdditionalLightsLightTypes[x_1815].el;
      u_xlati50 = i32(x_1817);
      let x_1820 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1820 != 0i));
      let x_1824 : i32 = u_xlati31;
      u_xlati11 = (x_1824 << bitcast<u32>(2i));
      let x_1826 : i32 = u_xlati52;
      if ((x_1826 != 0i)) {
        let x_1831 : vec3<f32> = vs_TEXCOORD7;
        let x_1833 : i32 = u_xlati11;
        let x_1836 : i32 = u_xlati11;
        let x_1840 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1833 + 1i) / 4i)][((x_1836 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1831.y, x_1831.y, x_1831.y) * vec3<f32>(x_1840.x, x_1840.y, x_1840.w));
        let x_1843 : i32 = u_xlati11;
        let x_1845 : i32 = u_xlati11;
        let x_1848 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[(x_1843 / 4i)][(x_1845 % 4i)];
        let x_1850 : vec3<f32> = vs_TEXCOORD7;
        let x_1853 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1848.x, x_1848.y, x_1848.w) * vec3<f32>(x_1850.x, x_1850.x, x_1850.x)) + x_1853);
        let x_1855 : i32 = u_xlati11;
        let x_1858 : i32 = u_xlati11;
        let x_1862 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1855 + 2i) / 4i)][((x_1858 + 2i) % 4i)];
        let x_1864 : vec3<f32> = vs_TEXCOORD7;
        let x_1867 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1862.x, x_1862.y, x_1862.w) * vec3<f32>(x_1864.z, x_1864.z, x_1864.z)) + x_1867);
        let x_1869 : vec3<f32> = u_xlat25;
        let x_1870 : i32 = u_xlati11;
        let x_1873 : i32 = u_xlati11;
        let x_1877 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1870 + 3i) / 4i)][((x_1873 + 3i) % 4i)];
        u_xlat25 = (x_1869 + vec3<f32>(x_1877.x, x_1877.y, x_1877.w));
        let x_1880 : vec3<f32> = u_xlat25;
        let x_1882 : vec3<f32> = u_xlat25;
        let x_1884 : vec2<f32> = (vec2<f32>(x_1880.x, x_1880.y) / vec2<f32>(x_1882.z, x_1882.z));
        let x_1885 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1884.x, x_1884.y, x_1885.z);
        let x_1887 : vec3<f32> = u_xlat25;
        let x_1890 : vec2<f32> = ((vec2<f32>(x_1887.x, x_1887.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1891 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1890.x, x_1890.y, x_1891.z);
        let x_1893 : vec3<f32> = u_xlat25;
        let x_1897 : vec2<f32> = clamp(vec2<f32>(x_1893.x, x_1893.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1898 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1897.x, x_1897.y, x_1898.z);
        let x_1900 : i32 = u_xlati31;
        let x_1902 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1900];
        let x_1904 : vec3<f32> = u_xlat25;
        let x_1907 : i32 = u_xlati31;
        let x_1909 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1907];
        let x_1911 : vec2<f32> = ((vec2<f32>(x_1902.x, x_1902.y) * vec2<f32>(x_1904.x, x_1904.y)) + vec2<f32>(x_1909.z, x_1909.w));
        let x_1912 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1911.x, x_1911.y, x_1912.z);
      } else {
        let x_1915 : i32 = u_xlati50;
        u_xlatb50 = (x_1915 == 1i);
        let x_1917 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1917);
        let x_1919 : i32 = u_xlati50;
        if ((x_1919 != 0i)) {
          let x_1923 : vec3<f32> = vs_TEXCOORD7;
          let x_1925 : i32 = u_xlati11;
          let x_1928 : i32 = u_xlati11;
          let x_1932 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1925 + 1i) / 4i)][((x_1928 + 1i) % 4i)];
          let x_1934 : vec2<f32> = (vec2<f32>(x_1923.y, x_1923.y) * vec2<f32>(x_1932.x, x_1932.y));
          let x_1935 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1934.x, x_1934.y, x_1935.z, x_1935.w);
          let x_1937 : i32 = u_xlati11;
          let x_1939 : i32 = u_xlati11;
          let x_1942 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[(x_1937 / 4i)][(x_1939 % 4i)];
          let x_1944 : vec3<f32> = vs_TEXCOORD7;
          let x_1947 : vec4<f32> = u_xlat12;
          let x_1949 : vec2<f32> = ((vec2<f32>(x_1942.x, x_1942.y) * vec2<f32>(x_1944.x, x_1944.x)) + vec2<f32>(x_1947.x, x_1947.y));
          let x_1950 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1949.x, x_1949.y, x_1950.z, x_1950.w);
          let x_1952 : i32 = u_xlati11;
          let x_1955 : i32 = u_xlati11;
          let x_1959 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1952 + 2i) / 4i)][((x_1955 + 2i) % 4i)];
          let x_1961 : vec3<f32> = vs_TEXCOORD7;
          let x_1964 : vec4<f32> = u_xlat12;
          let x_1966 : vec2<f32> = ((vec2<f32>(x_1959.x, x_1959.y) * vec2<f32>(x_1961.z, x_1961.z)) + vec2<f32>(x_1964.x, x_1964.y));
          let x_1967 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1966.x, x_1966.y, x_1967.z, x_1967.w);
          let x_1969 : vec4<f32> = u_xlat12;
          let x_1971 : i32 = u_xlati11;
          let x_1974 : i32 = u_xlati11;
          let x_1978 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1971 + 3i) / 4i)][((x_1974 + 3i) % 4i)];
          let x_1980 : vec2<f32> = (vec2<f32>(x_1969.x, x_1969.y) + vec2<f32>(x_1978.x, x_1978.y));
          let x_1981 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1980.x, x_1980.y, x_1981.z, x_1981.w);
          let x_1983 : vec4<f32> = u_xlat12;
          let x_1986 : vec2<f32> = ((vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1987 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1986.x, x_1986.y, x_1987.z, x_1987.w);
          let x_1989 : vec4<f32> = u_xlat12;
          let x_1991 : vec2<f32> = fract(vec2<f32>(x_1989.x, x_1989.y));
          let x_1992 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
          let x_1994 : i32 = u_xlati31;
          let x_1996 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1994];
          let x_1998 : vec4<f32> = u_xlat12;
          let x_2001 : i32 = u_xlati31;
          let x_2003 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_2001];
          let x_2005 : vec2<f32> = ((vec2<f32>(x_1996.x, x_1996.y) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2003.z, x_2003.w));
          let x_2006 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2005.x, x_2005.y, x_2006.z);
        } else {
          let x_2009 : vec3<f32> = vs_TEXCOORD7;
          let x_2011 : i32 = u_xlati11;
          let x_2014 : i32 = u_xlati11;
          let x_2018 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_2011 + 1i) / 4i)][((x_2014 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2009.y, x_2009.y, x_2009.y, x_2009.y) * x_2018);
          let x_2020 : i32 = u_xlati11;
          let x_2022 : i32 = u_xlati11;
          let x_2025 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[(x_2020 / 4i)][(x_2022 % 4i)];
          let x_2026 : vec3<f32> = vs_TEXCOORD7;
          let x_2029 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2025 * vec4<f32>(x_2026.x, x_2026.x, x_2026.x, x_2026.x)) + x_2029);
          let x_2031 : i32 = u_xlati11;
          let x_2034 : i32 = u_xlati11;
          let x_2038 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_2031 + 2i) / 4i)][((x_2034 + 2i) % 4i)];
          let x_2039 : vec3<f32> = vs_TEXCOORD7;
          let x_2042 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2038 * vec4<f32>(x_2039.z, x_2039.z, x_2039.z, x_2039.z)) + x_2042);
          let x_2044 : vec4<f32> = u_xlat12;
          let x_2045 : i32 = u_xlati11;
          let x_2048 : i32 = u_xlati11;
          let x_2052 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_2045 + 3i) / 4i)][((x_2048 + 3i) % 4i)];
          u_xlat12 = (x_2044 + x_2052);
          let x_2054 : vec4<f32> = u_xlat12;
          let x_2056 : vec4<f32> = u_xlat12;
          let x_2058 : vec3<f32> = (vec3<f32>(x_2054.x, x_2054.y, x_2054.z) / vec3<f32>(x_2056.w, x_2056.w, x_2056.w));
          let x_2059 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
          let x_2061 : vec4<f32> = u_xlat12;
          let x_2063 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2061.x, x_2061.y, x_2061.z), vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
          let x_2066 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2066);
          let x_2068 : f32 = u_xlat50;
          let x_2070 : vec4<f32> = u_xlat12;
          let x_2072 : vec3<f32> = (vec3<f32>(x_2068, x_2068, x_2068) * vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
          let x_2073 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
          let x_2075 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2075.x, x_2075.y, x_2075.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2080 : f32 = u_xlat50;
          u_xlat50 = max(x_2080, 0.00000099999999747524f);
          let x_2083 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2083);
          let x_2085 : f32 = u_xlat50;
          let x_2087 : vec4<f32> = u_xlat12;
          let x_2089 : vec3<f32> = (vec3<f32>(x_2085, x_2085, x_2085) * vec3<f32>(x_2087.z, x_2087.x, x_2087.y));
          let x_2090 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
          let x_2093 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2093);
          let x_2097 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2097, 0.0f, 1.0f);
          let x_2100 : vec4<f32> = u_xlat13;
          let x_2102 : vec4<bool> = (vec4<f32>(x_2100.y, x_2100.y, x_2100.y, x_2100.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2103 : vec2<bool> = vec2<bool>(x_2102.x, x_2102.w);
          let x_2104 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2103.x, x_2104.y, x_2104.z, x_2103.y);
          let x_2107 : bool = u_xlatb11.x;
          if (x_2107) {
            let x_2112 : f32 = u_xlat13.x;
            x_2108 = x_2112;
          } else {
            let x_2115 : f32 = u_xlat13.x;
            x_2108 = -(x_2115);
          }
          let x_2117 : f32 = x_2108;
          u_xlat11.x = x_2117;
          let x_2120 : bool = u_xlatb11.w;
          if (x_2120) {
            let x_2125 : f32 = u_xlat13.x;
            x_2121 = x_2125;
          } else {
            let x_2128 : f32 = u_xlat13.x;
            x_2121 = -(x_2128);
          }
          let x_2130 : f32 = x_2121;
          u_xlat11.w = x_2130;
          let x_2132 : vec4<f32> = u_xlat12;
          let x_2134 : f32 = u_xlat50;
          let x_2137 : vec4<f32> = u_xlat11;
          let x_2139 : vec2<f32> = ((vec2<f32>(x_2132.x, x_2132.y) * vec2<f32>(x_2134, x_2134)) + vec2<f32>(x_2137.x, x_2137.w));
          let x_2140 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2139.x, x_2140.y, x_2140.z, x_2139.y);
          let x_2142 : vec4<f32> = u_xlat11;
          let x_2145 : vec2<f32> = ((vec2<f32>(x_2142.x, x_2142.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2146 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2145.x, x_2146.y, x_2146.z, x_2145.y);
          let x_2148 : vec4<f32> = u_xlat11;
          let x_2152 : vec2<f32> = clamp(vec2<f32>(x_2148.x, x_2148.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2153 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2152.x, x_2153.y, x_2153.z, x_2152.y);
          let x_2155 : i32 = u_xlati31;
          let x_2157 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_2155];
          let x_2159 : vec4<f32> = u_xlat11;
          let x_2162 : i32 = u_xlati31;
          let x_2164 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_2162];
          let x_2166 : vec2<f32> = ((vec2<f32>(x_2157.x, x_2157.y) * vec2<f32>(x_2159.x, x_2159.w)) + vec2<f32>(x_2164.z, x_2164.w));
          let x_2167 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2166.x, x_2166.y, x_2167.z);
        }
      }
      let x_2174 : vec3<f32> = u_xlat25;
      let x_2176 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2174.x, x_2174.y), 0.0f);
      u_xlat11 = x_2176;
      let x_2178 : bool = u_xlatb3.y;
      if (x_2178) {
        let x_2183 : f32 = u_xlat11.w;
        x_2179 = x_2183;
      } else {
        let x_2186 : f32 = u_xlat11.x;
        x_2179 = x_2186;
      }
      let x_2187 : f32 = x_2179;
      u_xlat50 = x_2187;
      let x_2189 : bool = u_xlatb3.x;
      if (x_2189) {
        let x_2193 : vec4<f32> = u_xlat11;
        x_2190 = vec3<f32>(x_2193.x, x_2193.y, x_2193.z);
      } else {
        let x_2196 : f32 = u_xlat50;
        x_2190 = vec3<f32>(x_2196, x_2196, x_2196);
      }
      let x_2198 : vec3<f32> = x_2190;
      let x_2199 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2205 : vec4<f32> = u_xlat11;
    let x_2207 : i32 = u_xlati31;
    let x_2209 : vec4<f32> = x_1540.x_AdditionalLightsColor[x_2207];
    let x_2211 : vec3<f32> = (vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
    let x_2212 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
    let x_2214 : f32 = u_xlat47;
    let x_2215 : f32 = u_xlat49;
    u_xlat31 = (x_2214 * x_2215);
    let x_2217 : vec4<f32> = u_xlat2;
    let x_2219 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2217.x, x_2217.y, x_2217.z), vec3<f32>(x_2219.x, x_2219.y, x_2219.z));
    let x_2222 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2222, 0.0f, 1.0f);
    let x_2224 : f32 = u_xlat31;
    let x_2225 : f32 = u_xlat47;
    u_xlat31 = (x_2224 * x_2225);
    let x_2227 : f32 = u_xlat31;
    let x_2229 : vec4<f32> = u_xlat11;
    let x_2231 : vec3<f32> = (vec3<f32>(x_2227, x_2227, x_2227) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
    let x_2232 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
    let x_2234 : vec3<f32> = u_xlat23;
    let x_2235 : f32 = u_xlat48;
    let x_2238 : vec4<f32> = u_xlat1;
    u_xlat23 = ((x_2234 * vec3<f32>(x_2235, x_2235, x_2235)) + vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
    let x_2241 : vec3<f32> = u_xlat23;
    let x_2242 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(x_2241, x_2242);
    let x_2244 : f32 = u_xlat31;
    u_xlat31 = max(x_2244, 1.17549435e-38f);
    let x_2246 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_2246);
    let x_2248 : f32 = u_xlat31;
    let x_2250 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2248, x_2248, x_2248) * x_2250);
    let x_2252 : vec4<f32> = u_xlat2;
    let x_2254 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(vec3<f32>(x_2252.x, x_2252.y, x_2252.z), x_2254);
    let x_2256 : f32 = u_xlat31;
    u_xlat31 = clamp(x_2256, 0.0f, 1.0f);
    let x_2258 : vec4<f32> = u_xlat10;
    let x_2260 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(vec3<f32>(x_2258.x, x_2258.y, x_2258.z), x_2260);
    let x_2262 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2262, 0.0f, 1.0f);
    let x_2264 : f32 = u_xlat31;
    let x_2265 : f32 = u_xlat31;
    u_xlat31 = (x_2264 * x_2265);
    let x_2267 : f32 = u_xlat31;
    let x_2269 : f32 = u_xlat9.x;
    u_xlat31 = ((x_2267 * x_2269) + 1.00001001358032226562f);
    let x_2272 : f32 = u_xlat47;
    let x_2273 : f32 = u_xlat47;
    u_xlat47 = (x_2272 * x_2273);
    let x_2275 : f32 = u_xlat31;
    let x_2276 : f32 = u_xlat31;
    u_xlat31 = (x_2275 * x_2276);
    let x_2278 : f32 = u_xlat47;
    u_xlat47 = max(x_2278, 0.10000000149011611938f);
    let x_2280 : f32 = u_xlat31;
    let x_2281 : f32 = u_xlat47;
    u_xlat31 = (x_2280 * x_2281);
    let x_2283 : f32 = u_xlat45;
    let x_2284 : f32 = u_xlat31;
    u_xlat31 = (x_2283 * x_2284);
    let x_2286 : f32 = u_xlat46;
    let x_2287 : f32 = u_xlat31;
    u_xlat31 = (x_2286 / x_2287);
    let x_2289 : vec4<f32> = u_xlat5;
    let x_2291 : f32 = u_xlat31;
    let x_2294 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2289.x, x_2289.y, x_2289.z) * vec3<f32>(x_2291, x_2291, x_2291)) + vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
    let x_2297 : vec3<f32> = u_xlat23;
    let x_2298 : vec4<f32> = u_xlat11;
    let x_2301 : vec4<f32> = u_xlat8;
    let x_2303 : vec3<f32> = ((x_2297 * vec3<f32>(x_2298.x, x_2298.y, x_2298.z)) + vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
    let x_2304 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);

    continuing {
      let x_2306 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2306 + bitcast<u32>(1i));
    }
  }
  let x_2308 : vec4<f32> = u_xlat4;
  let x_2310 : f32 = u_xlat14;
  let x_2313 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2308.x, x_2308.y, x_2308.z) * vec3<f32>(x_2310, x_2310, x_2310)) + vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2316 : vec4<f32> = u_xlat8;
  let x_2318 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2316.x, x_2316.y, x_2316.z) + x_2318);
  let x_2320 : f32 = u_xlat42;
  let x_2322 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2320, x_2320, x_2320) * x_2322);
  let x_2324 : f32 = u_xlat43;
  let x_2325 : f32 = u_xlat43;
  u_xlat42 = (x_2324 * -(x_2325));
  let x_2328 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2328);
  let x_2332 : vec3<f32> = u_xlat0;
  let x_2333 : f32 = u_xlat42;
  let x_2335 : vec3<f32> = (x_2332 * vec3<f32>(x_2333, x_2333, x_2333));
  let x_2336 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


