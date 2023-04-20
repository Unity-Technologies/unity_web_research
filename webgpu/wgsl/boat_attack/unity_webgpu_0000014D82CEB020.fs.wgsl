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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_580 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(1) @binding(2) var<uniform> x_802 : UnityPerDraw;

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

@group(1) @binding(5) var<uniform> x_1029 : LightCookies;

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

@group(1) @binding(1) var<uniform> x_1528 : AdditionalLights;

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
  var x_550 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_982 : f32;
  var x_1112 : f32;
  var x_1123 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1658 : f32;
  var x_1668 : f32;
  var txVec1 : vec3<f32>;
  var x_2096 : f32;
  var x_2109 : f32;
  var x_2167 : f32;
  var x_2178 : vec3<f32>;
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
  let x_279 : f32 = u_xlat43;
  u_xlat43 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat43;
  u_xlat4 = (x_282 / vec4<f32>(x_283, x_283, x_283, x_283));
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_299 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat12;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat11;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.z, x_319.z, x_319.z) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat7;
  let x_329 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.w, x_337.w, x_337.w) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat8;
  let x_347 : vec4<f32> = u_xlat6;
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_356;
  let x_359 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_359;
  let x_362 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_362;
  let x_365 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_365;
  let x_368 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_368;
  let x_371 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_371;
  let x_374 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_374;
  let x_377 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_377;
  let x_379 : vec4<f32> = u_xlat6;
  let x_380 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_379 + x_380);
  let x_383 : f32 = u_xlat0.z;
  u_xlat7.x = x_383;
  let x_386 : f32 = u_xlat1.z;
  u_xlat7.y = x_386;
  let x_389 : f32 = u_xlat2.z;
  u_xlat7.z = x_389;
  let x_392 : f32 = u_xlat3.y;
  u_xlat7.w = x_392;
  let x_394 : vec4<f32> = u_xlat9;
  let x_397 : f32 = x_13.x_Smoothness0;
  let x_399 : f32 = x_13.x_Smoothness1;
  let x_401 : f32 = x_13.x_Smoothness2;
  let x_403 : f32 = x_13.x_Smoothness3;
  let x_406 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_394) * vec4<f32>(x_397, x_399, x_401, x_403)) + x_406);
  let x_410 : f32 = x_13.x_LayerHasMask0;
  let x_413 : f32 = x_13.x_LayerHasMask1;
  let x_416 : f32 = x_13.x_LayerHasMask2;
  let x_419 : f32 = x_13.x_LayerHasMask3;
  let x_421 : vec4<f32> = u_xlat7;
  let x_423 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_410, x_413, x_416, x_419) * x_421) + x_423);
  let x_426 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_426, x_427);
  let x_430 : f32 = u_xlat0.x;
  u_xlat7.x = x_430;
  let x_433 : f32 = u_xlat1.x;
  u_xlat7.y = x_433;
  let x_436 : f32 = u_xlat2.x;
  u_xlat7.z = x_436;
  let x_439 : f32 = u_xlat3.x;
  u_xlat7.w = x_439;
  let x_441 : vec4<f32> = u_xlat7;
  let x_444 : f32 = x_13.x_Metallic0;
  let x_447 : f32 = x_13.x_Metallic1;
  let x_450 : f32 = x_13.x_Metallic2;
  let x_453 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_441 + -(vec4<f32>(x_444, x_447, x_450, x_453)));
  let x_458 : f32 = x_13.x_LayerHasMask0;
  let x_460 : f32 = x_13.x_LayerHasMask1;
  let x_462 : f32 = x_13.x_LayerHasMask2;
  let x_464 : f32 = x_13.x_LayerHasMask3;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_13.x_Metallic0;
  let x_471 : f32 = x_13.x_Metallic1;
  let x_473 : f32 = x_13.x_Metallic2;
  let x_475 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_458, x_460, x_462, x_464) * x_466) + vec4<f32>(x_469, x_471, x_473, x_475));
  let x_478 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_478, x_479);
  let x_483 : f32 = u_xlat0.y;
  u_xlat3.x = x_483;
  let x_486 : f32 = u_xlat1.y;
  u_xlat3.y = x_486;
  let x_489 : f32 = u_xlat2.y;
  u_xlat3.z = x_489;
  let x_491 : vec4<f32> = u_xlat6;
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_491) + x_493);
  let x_496 : f32 = x_13.x_LayerHasMask0;
  let x_498 : f32 = x_13.x_LayerHasMask1;
  let x_500 : f32 = x_13.x_LayerHasMask2;
  let x_502 : f32 = x_13.x_LayerHasMask3;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_496, x_498, x_500, x_502) * x_504) + x_506);
  let x_509 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_509, x_510);
  let x_514 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_514 == 0.0f);
  let x_519 : vec3<f32> = vs_TEXCOORD7;
  let x_523 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_519) + x_523);
  let x_525 : vec3<f32> = u_xlat15;
  let x_526 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_525, x_526);
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_530);
  let x_533 : vec3<f32> = u_xlat15;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_533 * vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_538 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_538;
  let x_542 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_542;
  let x_546 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_546;
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_553 : vec3<f32> = u_xlat15;
    x_550 = x_553;
  } else {
    let x_555 : vec4<f32> = u_xlat2;
    x_550 = vec3<f32>(x_555.x, x_555.y, x_555.z);
  }
  let x_557 : vec3<f32> = x_550;
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : vec3<f32> = vs_TEXCOORD3;
  let x_562 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_561, x_562);
  let x_564 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_564);
  let x_566 : f32 = u_xlat43;
  let x_568 : vec3<f32> = vs_TEXCOORD3;
  let x_569 : vec3<f32> = (vec3<f32>(x_566, x_566, x_566) * x_568);
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec3<f32> = vs_TEXCOORD7;
  let x_582 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres0;
  let x_585 : vec3<f32> = (x_572 + -(vec3<f32>(x_582.x, x_582.y, x_582.z)));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec3<f32> = vs_TEXCOORD7;
  let x_590 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres1;
  let x_593 : vec3<f32> = (x_588 + -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = vs_TEXCOORD7;
  let x_599 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres2;
  let x_602 : vec3<f32> = (x_596 + -(vec3<f32>(x_599.x, x_599.y, x_599.z)));
  let x_603 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec3<f32> = vs_TEXCOORD7;
  let x_607 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres3;
  let x_610 : vec3<f32> = (x_605 + -(vec3<f32>(x_607.x, x_607.y, x_607.z)));
  let x_611 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat7;
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = x_580.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_639 < x_641);
  let x_644 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_644);
  let x_648 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_648);
  let x_652 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_652);
  let x_656 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_660);
  let x_665 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_665);
  let x_669 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_669);
  let x_672 : vec4<f32> = u_xlat3;
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) + vec3<f32>(x_674.y, x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = max(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_682.x, x_682.y, x_682.z);
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_685, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_690 : f32 = u_xlat43;
  u_xlat43 = (-(x_690) + 4.0f);
  let x_695 : f32 = u_xlat43;
  u_xlatu43 = u32(x_695);
  let x_699 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_699) << bitcast<u32>(2i));
  let x_702 : vec3<f32> = vs_TEXCOORD7;
  let x_704 : i32 = u_xlati43;
  let x_707 : i32 = u_xlati43;
  let x_711 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_704 + 1i) / 4i)][((x_707 + 1i) % 4i)];
  let x_713 : vec3<f32> = (vec3<f32>(x_702.y, x_702.y, x_702.y) * vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : i32 = u_xlati43;
  let x_718 : i32 = u_xlati43;
  let x_721 : vec4<f32> = x_580.x_MainLightWorldToShadow[(x_716 / 4i)][(x_718 % 4i)];
  let x_723 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : vec4<f32> = u_xlat3;
  let x_728 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723.x, x_723.x, x_723.x)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati43;
  let x_734 : i32 = u_xlati43;
  let x_738 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_731 + 2i) / 4i)][((x_734 + 2i) % 4i)];
  let x_740 : vec3<f32> = vs_TEXCOORD7;
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740.z, x_740.z, x_740.z)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : i32 = u_xlati43;
  let x_753 : i32 = u_xlati43;
  let x_757 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_750 + 3i) / 4i)][((x_753 + 3i) % 4i)];
  let x_759 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_764 : f32 = vs_TEXCOORD7.y;
  let x_766 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_764 * x_766);
  let x_769 : f32 = x_113.unity_MatrixV[0i].z;
  let x_771 : f32 = vs_TEXCOORD7.x;
  let x_773 : f32 = u_xlat43;
  u_xlat43 = ((x_769 * x_771) + x_773);
  let x_776 : f32 = x_113.unity_MatrixV[2i].z;
  let x_778 : f32 = vs_TEXCOORD7.z;
  let x_780 : f32 = u_xlat43;
  u_xlat43 = ((x_776 * x_778) + x_780);
  let x_782 : f32 = u_xlat43;
  let x_784 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_782 + x_784);
  let x_786 : f32 = u_xlat43;
  let x_789 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_786) + -(x_789));
  let x_792 : f32 = u_xlat43;
  u_xlat43 = max(x_792, 0.0f);
  let x_794 : f32 = u_xlat43;
  let x_796 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_794 * x_796);
  u_xlat2.w = 1.0f;
  let x_804 : vec4<f32> = x_802.unity_SHAr;
  let x_805 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_804, x_805);
  let x_809 : vec4<f32> = x_802.unity_SHAg;
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_809, x_810);
  let x_814 : vec4<f32> = x_802.unity_SHAb;
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_814, x_815);
  let x_818 : vec4<f32> = u_xlat2;
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_818.y, x_818.z, x_818.z, x_818.x) * vec4<f32>(x_820.x, x_820.y, x_820.z, x_820.z));
  let x_824 : vec4<f32> = x_802.unity_SHBr;
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_824, x_825);
  let x_829 : vec4<f32> = x_802.unity_SHBg;
  let x_830 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_829, x_830);
  let x_834 : vec4<f32> = x_802.unity_SHBb;
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_834, x_835);
  let x_840 : f32 = u_xlat2.y;
  let x_842 : f32 = u_xlat2.y;
  u_xlat44 = (x_840 * x_842);
  let x_845 : f32 = u_xlat2.x;
  let x_847 : f32 = u_xlat2.x;
  let x_849 : f32 = u_xlat44;
  u_xlat44 = ((x_845 * x_847) + -(x_849));
  let x_854 : vec4<f32> = x_802.unity_SHC;
  let x_856 : f32 = u_xlat44;
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec3<f32> = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_856, x_856, x_856)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat4;
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) + vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat4;
  let x_873 : vec3<f32> = max(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_877) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_883 : f32 = u_xlat44;
  u_xlat45 = (-(x_883) + 1.0f);
  let x_886 : f32 = u_xlat44;
  let x_888 : vec4<f32> = u_xlat5;
  let x_890 : vec3<f32> = (vec3<f32>(x_886, x_886, x_886) * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec3<f32> = u_xlat0;
  let x_902 : vec4<f32> = u_xlat5;
  let x_907 : vec3<f32> = ((vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_908 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : f32 = u_xlat28;
  u_xlat0.x = (-(x_910) + 1.0f);
  let x_915 : f32 = u_xlat0.x;
  let x_917 : f32 = u_xlat0.x;
  u_xlat44 = (x_915 * x_917);
  let x_919 : f32 = u_xlat44;
  u_xlat44 = max(x_919, 0.0078125f);
  let x_923 : f32 = u_xlat44;
  let x_924 : f32 = u_xlat44;
  u_xlat46 = (x_923 * x_924);
  let x_926 : f32 = u_xlat28;
  let x_927 : f32 = u_xlat45;
  u_xlat28 = (x_926 + x_927);
  let x_929 : f32 = u_xlat28;
  u_xlat28 = clamp(x_929, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat44;
  u_xlat45 = ((x_931 * 4.0f) + 2.0f);
  let x_934 : f32 = u_xlat14;
  u_xlat14 = min(x_934, 1.0f);
  let x_937 : vec4<f32> = u_xlat3;
  let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
  let x_940 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_938.x, x_938.y, x_940);
  let x_952 : vec3<f32> = txVec0;
  let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
  u_xlat3.x = x_954;
  let x_958 : f32 = x_580.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_958) + 1.0f);
  let x_962 : f32 = u_xlat3.x;
  let x_964 : f32 = x_580.x_MainLightShadowParams.x;
  let x_966 : f32 = u_xlat17;
  u_xlat3.x = ((x_962 * x_964) + x_966);
  let x_971 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_971);
  let x_975 : f32 = u_xlat3.z;
  u_xlatb31 = (x_975 >= 1.0f);
  let x_977 : bool = u_xlatb31;
  let x_978 : bool = u_xlatb17;
  u_xlatb17 = (x_977 | x_978);
  let x_980 : bool = u_xlatb17;
  if (x_980) {
    x_982 = 1.0f;
  } else {
    let x_987 : f32 = u_xlat3.x;
    x_982 = x_987;
  }
  let x_988 : f32 = x_982;
  u_xlat3.x = x_988;
  let x_990 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_994 : vec3<f32> = (x_990 + -(x_992));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1003 : f32 = u_xlat17;
  let x_1005 : f32 = x_580.x_MainLightShadowParams.z;
  let x_1008 : f32 = x_580.x_MainLightShadowParams.w;
  u_xlat31 = ((x_1003 * x_1005) + x_1008);
  let x_1010 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1010, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1014) + 1.0f);
  let x_1017 : f32 = u_xlat31;
  let x_1018 : f32 = u_xlat47;
  let x_1021 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1017 * x_1018) + x_1021);
  let x_1031 : f32 = x_1029.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1031 == -1.0f));
  let x_1033 : bool = u_xlatb31;
  if (x_1033) {
    let x_1036 : vec3<f32> = vs_TEXCOORD7;
    let x_1039 : vec4<f32> = x_1029.x_MainLightWorldToLight[1i];
    let x_1041 : vec2<f32> = (vec2<f32>(x_1036.y, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y));
    let x_1042 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
    let x_1045 : vec4<f32> = x_1029.x_MainLightWorldToLight[0i];
    let x_1047 : vec3<f32> = vs_TEXCOORD7;
    let x_1050 : vec4<f32> = u_xlat7;
    let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.x, x_1047.x)) + vec2<f32>(x_1050.x, x_1050.y));
    let x_1053 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
    let x_1056 : vec4<f32> = x_1029.x_MainLightWorldToLight[2i];
    let x_1058 : vec3<f32> = vs_TEXCOORD7;
    let x_1061 : vec4<f32> = u_xlat7;
    let x_1063 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(x_1058.z, x_1058.z)) + vec2<f32>(x_1061.x, x_1061.y));
    let x_1064 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
    let x_1066 : vec4<f32> = u_xlat7;
    let x_1069 : vec4<f32> = x_1029.x_MainLightWorldToLight[3i];
    let x_1071 : vec2<f32> = (vec2<f32>(x_1066.x, x_1066.y) + vec2<f32>(x_1069.x, x_1069.y));
    let x_1072 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
    let x_1074 : vec4<f32> = u_xlat7;
    let x_1077 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1078 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
    let x_1085 : vec4<f32> = u_xlat7;
    let x_1088 : f32 = x_113.x_GlobalMipBias.x;
    let x_1089 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1085.x, x_1085.y), x_1088);
    u_xlat7 = x_1089;
    let x_1094 : f32 = x_1029.x_MainLightCookieTextureFormat;
    let x_1096 : f32 = x_1029.x_MainLightCookieTextureFormat;
    let x_1098 : f32 = x_1029.x_MainLightCookieTextureFormat;
    let x_1100 : f32 = x_1029.x_MainLightCookieTextureFormat;
    let x_1101 : vec4<f32> = vec4<f32>(x_1094, x_1096, x_1098, x_1100);
    let x_1108 : vec4<bool> = (vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1101.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1108.x, x_1108.y);
    let x_1111 : bool = u_xlatb8.y;
    if (x_1111) {
      let x_1116 : f32 = u_xlat7.w;
      x_1112 = x_1116;
    } else {
      let x_1119 : f32 = u_xlat7.x;
      x_1112 = x_1119;
    }
    let x_1120 : f32 = x_1112;
    u_xlat31 = x_1120;
    let x_1122 : bool = u_xlatb8.x;
    if (x_1122) {
      let x_1126 : vec4<f32> = u_xlat7;
      x_1123 = vec3<f32>(x_1126.x, x_1126.y, x_1126.z);
    } else {
      let x_1129 : f32 = u_xlat31;
      x_1123 = vec3<f32>(x_1129, x_1129, x_1129);
    }
    let x_1131 : vec3<f32> = x_1123;
    let x_1132 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1141 : vec4<f32> = x_113.x_MainLightColor;
  let x_1143 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec4<f32> = u_xlat1;
  let x_1149 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1146.x, x_1146.y, x_1146.z)), vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : f32 = u_xlat31;
  let x_1153 : f32 = u_xlat31;
  u_xlat31 = (x_1152 + x_1153);
  let x_1155 : vec4<f32> = u_xlat2;
  let x_1157 : f32 = u_xlat31;
  let x_1161 : vec4<f32> = u_xlat1;
  let x_1164 : vec3<f32> = ((vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * -(vec3<f32>(x_1157, x_1157, x_1157))) + -(vec3<f32>(x_1161.x, x_1161.y, x_1161.z)));
  let x_1165 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec4<f32> = u_xlat2;
  let x_1169 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1172, 0.0f, 1.0f);
  let x_1174 : f32 = u_xlat31;
  u_xlat31 = (-(x_1174) + 1.0f);
  let x_1177 : f32 = u_xlat31;
  let x_1178 : f32 = u_xlat31;
  u_xlat31 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat31;
  let x_1181 : f32 = u_xlat31;
  u_xlat31 = (x_1180 * x_1181);
  let x_1184 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1184) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1191 : f32 = u_xlat0.x;
  let x_1192 : f32 = u_xlat47;
  u_xlat0.x = (x_1191 * x_1192);
  let x_1196 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1196 * 6.0f);
  let x_1208 : vec4<f32> = u_xlat8;
  let x_1211 : f32 = u_xlat0.x;
  let x_1212 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1208.x, x_1208.y, x_1208.z), x_1211);
  u_xlat8 = x_1212;
  let x_1214 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1214 + -1.0f);
  let x_1218 : f32 = x_802.unity_SpecCube0_HDR.w;
  let x_1220 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1218 * x_1220) + 1.0f);
  let x_1225 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1225, 0.0f);
  let x_1229 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1229);
  let x_1233 : f32 = u_xlat0.x;
  let x_1235 : f32 = x_802.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1233 * x_1235);
  let x_1239 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1239);
  let x_1243 : f32 = u_xlat0.x;
  let x_1245 : f32 = x_802.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1243 * x_1245);
  let x_1248 : vec4<f32> = u_xlat8;
  let x_1250 : vec3<f32> = u_xlat0;
  let x_1252 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * vec3<f32>(x_1250.x, x_1250.x, x_1250.x));
  let x_1253 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : f32 = u_xlat44;
  let x_1257 : f32 = u_xlat44;
  let x_1261 : vec2<f32> = ((vec2<f32>(x_1255, x_1255) * vec2<f32>(x_1257, x_1257)) + vec2<f32>(-1.0f, 1.0f));
  let x_1262 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
  let x_1265 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1265);
  let x_1269 : vec4<f32> = u_xlat5;
  let x_1272 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1269.x, x_1269.y, x_1269.z)) + vec3<f32>(x_1272, x_1272, x_1272));
  let x_1275 : f32 = u_xlat31;
  let x_1277 : vec3<f32> = u_xlat23;
  let x_1279 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1275, x_1275, x_1275) * x_1277) + vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1282 : vec3<f32> = u_xlat0;
  let x_1284 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1282.x, x_1282.x, x_1282.x) * x_1284);
  let x_1286 : vec4<f32> = u_xlat8;
  let x_1288 : vec3<f32> = u_xlat23;
  let x_1289 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * x_1288);
  let x_1290 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : vec4<f32> = u_xlat4;
  let x_1294 : vec4<f32> = u_xlat6;
  let x_1297 : vec4<f32> = u_xlat8;
  let x_1299 : vec3<f32> = ((vec3<f32>(x_1292.x, x_1292.y, x_1292.z) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z)) + vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1303 : f32 = u_xlat3.x;
  let x_1305 : f32 = x_802.unity_LightData.z;
  u_xlat0.x = (x_1303 * x_1305);
  let x_1308 : vec4<f32> = u_xlat2;
  let x_1311 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1308.x, x_1308.y, x_1308.z), vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1314, 0.0f, 1.0f);
  let x_1316 : f32 = u_xlat28;
  let x_1318 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1316 * x_1318);
  let x_1321 : vec3<f32> = u_xlat0;
  let x_1323 : vec4<f32> = u_xlat7;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.x, x_1321.x) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat1;
  let x_1331 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1333 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat8;
  let x_1338 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1343, 1.17549435e-38f);
  let x_1348 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1348);
  let x_1351 : vec3<f32> = u_xlat0;
  let x_1353 : vec4<f32> = u_xlat8;
  let x_1355 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : vec4<f32> = u_xlat2;
  let x_1360 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1358.x, x_1358.y, x_1358.z), vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
  let x_1365 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1365, 0.0f, 1.0f);
  let x_1369 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1371 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1369.x, x_1369.y, x_1369.z), vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1376 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1376, 0.0f, 1.0f);
  let x_1379 : vec3<f32> = u_xlat0;
  let x_1381 : vec3<f32> = u_xlat0;
  let x_1383 : vec2<f32> = (vec2<f32>(x_1379.x, x_1379.z) * vec2<f32>(x_1381.x, x_1381.z));
  let x_1384 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1383.x, x_1384.y, x_1383.y);
  let x_1387 : f32 = u_xlat0.x;
  let x_1389 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1387 * x_1389) + 1.00001001358032226562f);
  let x_1395 : f32 = u_xlat0.x;
  let x_1397 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1395 * x_1397);
  let x_1401 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1401, 0.10000000149011611938f);
  let x_1404 : f32 = u_xlat28;
  let x_1406 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1404 * x_1406);
  let x_1409 : f32 = u_xlat45;
  let x_1411 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1409 * x_1411);
  let x_1414 : f32 = u_xlat46;
  let x_1416 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1414 / x_1416);
  let x_1419 : vec4<f32> = u_xlat5;
  let x_1421 : vec3<f32> = u_xlat0;
  let x_1424 : vec4<f32> = u_xlat6;
  let x_1426 : vec3<f32> = ((vec3<f32>(x_1419.x, x_1419.y, x_1419.z) * vec3<f32>(x_1421.x, x_1421.x, x_1421.x)) + vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  let x_1429 : vec4<f32> = u_xlat7;
  let x_1431 : vec4<f32> = u_xlat8;
  let x_1433 : vec3<f32> = (vec3<f32>(x_1429.x, x_1429.y, x_1429.z) * vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
  let x_1434 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
  let x_1437 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1439 : f32 = x_802.unity_LightData.y;
  u_xlat0.x = min(x_1437, x_1439);
  let x_1444 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1444));
  let x_1447 : f32 = u_xlat17;
  let x_1449 : f32 = x_580.x_AdditionalShadowFadeParams.x;
  let x_1452 : f32 = x_580.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1447 * x_1449) + x_1452);
  let x_1454 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1454, 0.0f, 1.0f);
  let x_1457 : f32 = x_1029.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1459 : f32 = x_1029.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1461 : f32 = x_1029.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1463 : f32 = x_1029.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1464 : vec4<f32> = vec4<f32>(x_1457, x_1459, x_1461, x_1463);
  let x_1470 : vec4<bool> = (vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1464.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1471 : vec2<bool> = vec2<bool>(x_1470.x, x_1470.y);
  let x_1472 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1471.x, x_1471.y, x_1472.z, x_1472.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1484 : u32 = u_xlatu_loop_1;
    let x_1485 : u32 = u_xlatu0;
    if ((x_1484 < x_1485)) {
    } else {
      break;
    }
    let x_1488 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1488 >> 2u);
    let x_1491 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1491 & 3u));
    let x_1494 : u32 = u_xlatu31;
    let x_1497 : vec4<f32> = x_802.unity_LightIndices[bitcast<i32>(x_1494)];
    let x_1507 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1512 : vec4<u32> = indexable[x_1507];
    u_xlat31 = dot(x_1497, bitcast<vec4<f32>>(x_1512));
    let x_1516 : f32 = u_xlat31;
    u_xlati31 = i32(x_1516);
    let x_1518 : vec3<f32> = vs_TEXCOORD7;
    let x_1529 : i32 = u_xlati31;
    let x_1531 : vec4<f32> = x_1528.x_AdditionalLightsPosition[x_1529];
    let x_1534 : i32 = u_xlati31;
    let x_1536 : vec4<f32> = x_1528.x_AdditionalLightsPosition[x_1534];
    u_xlat23 = ((-(x_1518) * vec3<f32>(x_1531.w, x_1531.w, x_1531.w)) + vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
    let x_1539 : vec3<f32> = u_xlat23;
    let x_1540 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1539, x_1540);
    let x_1542 : f32 = u_xlat47;
    u_xlat47 = max(x_1542, 0.00006103515625f);
    let x_1545 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1545);
    let x_1547 : f32 = u_xlat48;
    let x_1549 : vec3<f32> = u_xlat23;
    let x_1550 : vec3<f32> = (vec3<f32>(x_1547, x_1547, x_1547) * x_1549);
    let x_1551 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
    let x_1554 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1554);
    let x_1556 : f32 = u_xlat47;
    let x_1557 : i32 = u_xlati31;
    let x_1559 : f32 = x_1528.x_AdditionalLightsAttenuation[x_1557].x;
    u_xlat47 = (x_1556 * x_1559);
    let x_1561 : f32 = u_xlat47;
    let x_1563 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1561) * x_1563) + 1.0f);
    let x_1566 : f32 = u_xlat47;
    u_xlat47 = max(x_1566, 0.0f);
    let x_1568 : f32 = u_xlat47;
    let x_1569 : f32 = u_xlat47;
    u_xlat47 = (x_1568 * x_1569);
    let x_1571 : f32 = u_xlat47;
    let x_1572 : f32 = u_xlat49;
    u_xlat47 = (x_1571 * x_1572);
    let x_1574 : i32 = u_xlati31;
    let x_1576 : vec4<f32> = x_1528.x_AdditionalLightsSpotDir[x_1574];
    let x_1578 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1576.x, x_1576.y, x_1576.z), vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
    let x_1581 : f32 = u_xlat49;
    let x_1582 : i32 = u_xlati31;
    let x_1584 : f32 = x_1528.x_AdditionalLightsAttenuation[x_1582].z;
    let x_1586 : i32 = u_xlati31;
    let x_1588 : f32 = x_1528.x_AdditionalLightsAttenuation[x_1586].w;
    u_xlat49 = ((x_1581 * x_1584) + x_1588);
    let x_1590 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1590, 0.0f, 1.0f);
    let x_1592 : f32 = u_xlat49;
    let x_1593 : f32 = u_xlat49;
    u_xlat49 = (x_1592 * x_1593);
    let x_1595 : f32 = u_xlat47;
    let x_1596 : f32 = u_xlat49;
    u_xlat47 = (x_1595 * x_1596);
    let x_1599 : i32 = u_xlati31;
    let x_1601 : f32 = x_580.x_AdditionalShadowParams[x_1599].w;
    u_xlati49 = i32(x_1601);
    let x_1604 : i32 = u_xlati49;
    u_xlatb50 = (x_1604 >= 0i);
    let x_1606 : bool = u_xlatb50;
    if (x_1606) {
      let x_1610 : i32 = u_xlati31;
      let x_1612 : f32 = x_580.x_AdditionalShadowParams[x_1610].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1612, x_1612, x_1612, x_1612))));
      let x_1616 : bool = u_xlatb50;
      if (x_1616) {
        let x_1620 : vec4<f32> = u_xlat10;
        let x_1623 : vec4<f32> = u_xlat10;
        let x_1626 : vec4<bool> = (abs(vec4<f32>(x_1620.z, x_1620.z, x_1620.y, x_1620.z)) >= abs(vec4<f32>(x_1623.x, x_1623.y, x_1623.x, x_1623.x)));
        let x_1628 : vec3<bool> = vec3<bool>(x_1626.x, x_1626.y, x_1626.z);
        let x_1629 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
        let x_1632 : bool = u_xlatb11.y;
        let x_1634 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1632 & x_1634);
        let x_1636 : vec4<f32> = u_xlat10;
        let x_1639 : vec4<bool> = (-(vec4<f32>(x_1636.z, x_1636.y, x_1636.z, x_1636.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1640 : vec3<bool> = vec3<bool>(x_1639.x, x_1639.y, x_1639.w);
        let x_1641 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1640.x, x_1640.y, x_1641.z, x_1640.z);
        let x_1644 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1644);
        let x_1649 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1649);
        let x_1654 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1654);
        let x_1657 : bool = u_xlatb11.z;
        if (x_1657) {
          let x_1662 : f32 = u_xlat11.y;
          x_1658 = x_1662;
        } else {
          let x_1664 : f32 = u_xlat52;
          x_1658 = x_1664;
        }
        let x_1665 : f32 = x_1658;
        u_xlat52 = x_1665;
        let x_1667 : bool = u_xlatb50;
        if (x_1667) {
          let x_1672 : f32 = u_xlat11.x;
          x_1668 = x_1672;
        } else {
          let x_1674 : f32 = u_xlat52;
          x_1668 = x_1674;
        }
        let x_1675 : f32 = x_1668;
        u_xlat50 = x_1675;
        let x_1676 : i32 = u_xlati31;
        let x_1678 : f32 = x_580.x_AdditionalShadowParams[x_1676].w;
        u_xlat52 = trunc(x_1678);
        let x_1680 : f32 = u_xlat50;
        let x_1681 : f32 = u_xlat52;
        u_xlat50 = (x_1680 + x_1681);
        let x_1683 : f32 = u_xlat50;
        u_xlati49 = i32(x_1683);
      }
      let x_1685 : i32 = u_xlati49;
      u_xlati49 = (x_1685 << bitcast<u32>(2i));
      let x_1687 : vec3<f32> = vs_TEXCOORD7;
      let x_1689 : i32 = u_xlati49;
      let x_1692 : i32 = u_xlati49;
      let x_1696 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1689 + 1i) / 4i)][((x_1692 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1687.y, x_1687.y, x_1687.y, x_1687.y) * x_1696);
      let x_1698 : i32 = u_xlati49;
      let x_1700 : i32 = u_xlati49;
      let x_1703 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[(x_1698 / 4i)][(x_1700 % 4i)];
      let x_1704 : vec3<f32> = vs_TEXCOORD7;
      let x_1707 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1703 * vec4<f32>(x_1704.x, x_1704.x, x_1704.x, x_1704.x)) + x_1707);
      let x_1709 : i32 = u_xlati49;
      let x_1712 : i32 = u_xlati49;
      let x_1716 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1709 + 2i) / 4i)][((x_1712 + 2i) % 4i)];
      let x_1717 : vec3<f32> = vs_TEXCOORD7;
      let x_1720 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1716 * vec4<f32>(x_1717.z, x_1717.z, x_1717.z, x_1717.z)) + x_1720);
      let x_1722 : vec4<f32> = u_xlat11;
      let x_1723 : i32 = u_xlati49;
      let x_1726 : i32 = u_xlati49;
      let x_1730 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1723 + 3i) / 4i)][((x_1726 + 3i) % 4i)];
      u_xlat11 = (x_1722 + x_1730);
      let x_1732 : vec4<f32> = u_xlat11;
      let x_1734 : vec4<f32> = u_xlat11;
      let x_1736 : vec3<f32> = (vec3<f32>(x_1732.x, x_1732.y, x_1732.z) / vec3<f32>(x_1734.w, x_1734.w, x_1734.w));
      let x_1737 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
      let x_1740 : vec4<f32> = u_xlat11;
      let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
      let x_1743 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
      let x_1751 : vec3<f32> = txVec1;
      let x_1753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
      u_xlat49 = x_1753;
      let x_1754 : i32 = u_xlati31;
      let x_1756 : f32 = x_580.x_AdditionalShadowParams[x_1754].x;
      u_xlat50 = (1.0f + -(x_1756));
      let x_1759 : f32 = u_xlat49;
      let x_1760 : i32 = u_xlati31;
      let x_1762 : f32 = x_580.x_AdditionalShadowParams[x_1760].x;
      let x_1764 : f32 = u_xlat50;
      u_xlat49 = ((x_1759 * x_1762) + x_1764);
      let x_1767 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1767);
      let x_1771 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1771 >= 1.0f);
      let x_1773 : bool = u_xlatb50;
      let x_1774 : bool = u_xlatb52;
      u_xlatb50 = (x_1773 | x_1774);
      let x_1776 : bool = u_xlatb50;
      let x_1777 : f32 = u_xlat49;
      u_xlat49 = select(x_1777, 1.0f, x_1776);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1780 : f32 = u_xlat49;
    u_xlat50 = (-(x_1780) + 1.0f);
    let x_1783 : f32 = u_xlat28;
    let x_1784 : f32 = u_xlat50;
    let x_1786 : f32 = u_xlat49;
    u_xlat49 = ((x_1783 * x_1784) + x_1786);
    let x_1789 : i32 = u_xlati31;
    u_xlati50 = (1i << bitcast<u32>((x_1789 & 31i)));
    let x_1792 : i32 = u_xlati50;
    let x_1795 : f32 = x_1029.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1792) & bitcast<u32>(x_1795)));
    let x_1799 : i32 = u_xlati50;
    if ((x_1799 != 0i)) {
      let x_1803 : i32 = u_xlati31;
      let x_1805 : f32 = x_1029.x_AdditionalLightsLightTypes[x_1803].el;
      u_xlati50 = i32(x_1805);
      let x_1808 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1808 != 0i));
      let x_1812 : i32 = u_xlati31;
      u_xlati11 = (x_1812 << bitcast<u32>(2i));
      let x_1814 : i32 = u_xlati52;
      if ((x_1814 != 0i)) {
        let x_1819 : vec3<f32> = vs_TEXCOORD7;
        let x_1821 : i32 = u_xlati11;
        let x_1824 : i32 = u_xlati11;
        let x_1828 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1821 + 1i) / 4i)][((x_1824 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1819.y, x_1819.y, x_1819.y) * vec3<f32>(x_1828.x, x_1828.y, x_1828.w));
        let x_1831 : i32 = u_xlati11;
        let x_1833 : i32 = u_xlati11;
        let x_1836 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[(x_1831 / 4i)][(x_1833 % 4i)];
        let x_1838 : vec3<f32> = vs_TEXCOORD7;
        let x_1841 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1836.x, x_1836.y, x_1836.w) * vec3<f32>(x_1838.x, x_1838.x, x_1838.x)) + x_1841);
        let x_1843 : i32 = u_xlati11;
        let x_1846 : i32 = u_xlati11;
        let x_1850 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1843 + 2i) / 4i)][((x_1846 + 2i) % 4i)];
        let x_1852 : vec3<f32> = vs_TEXCOORD7;
        let x_1855 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1850.x, x_1850.y, x_1850.w) * vec3<f32>(x_1852.z, x_1852.z, x_1852.z)) + x_1855);
        let x_1857 : vec3<f32> = u_xlat25;
        let x_1858 : i32 = u_xlati11;
        let x_1861 : i32 = u_xlati11;
        let x_1865 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1858 + 3i) / 4i)][((x_1861 + 3i) % 4i)];
        u_xlat25 = (x_1857 + vec3<f32>(x_1865.x, x_1865.y, x_1865.w));
        let x_1868 : vec3<f32> = u_xlat25;
        let x_1870 : vec3<f32> = u_xlat25;
        let x_1872 : vec2<f32> = (vec2<f32>(x_1868.x, x_1868.y) / vec2<f32>(x_1870.z, x_1870.z));
        let x_1873 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1872.x, x_1872.y, x_1873.z);
        let x_1875 : vec3<f32> = u_xlat25;
        let x_1878 : vec2<f32> = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1879 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1878.x, x_1878.y, x_1879.z);
        let x_1881 : vec3<f32> = u_xlat25;
        let x_1885 : vec2<f32> = clamp(vec2<f32>(x_1881.x, x_1881.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1886 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1885.x, x_1885.y, x_1886.z);
        let x_1888 : i32 = u_xlati31;
        let x_1890 : vec4<f32> = x_1029.x_AdditionalLightsCookieAtlasUVRects[x_1888];
        let x_1892 : vec3<f32> = u_xlat25;
        let x_1895 : i32 = u_xlati31;
        let x_1897 : vec4<f32> = x_1029.x_AdditionalLightsCookieAtlasUVRects[x_1895];
        let x_1899 : vec2<f32> = ((vec2<f32>(x_1890.x, x_1890.y) * vec2<f32>(x_1892.x, x_1892.y)) + vec2<f32>(x_1897.z, x_1897.w));
        let x_1900 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1899.x, x_1899.y, x_1900.z);
      } else {
        let x_1903 : i32 = u_xlati50;
        u_xlatb50 = (x_1903 == 1i);
        let x_1905 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1905);
        let x_1907 : i32 = u_xlati50;
        if ((x_1907 != 0i)) {
          let x_1911 : vec3<f32> = vs_TEXCOORD7;
          let x_1913 : i32 = u_xlati11;
          let x_1916 : i32 = u_xlati11;
          let x_1920 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1913 + 1i) / 4i)][((x_1916 + 1i) % 4i)];
          let x_1922 : vec2<f32> = (vec2<f32>(x_1911.y, x_1911.y) * vec2<f32>(x_1920.x, x_1920.y));
          let x_1923 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
          let x_1925 : i32 = u_xlati11;
          let x_1927 : i32 = u_xlati11;
          let x_1930 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[(x_1925 / 4i)][(x_1927 % 4i)];
          let x_1932 : vec3<f32> = vs_TEXCOORD7;
          let x_1935 : vec4<f32> = u_xlat12;
          let x_1937 : vec2<f32> = ((vec2<f32>(x_1930.x, x_1930.y) * vec2<f32>(x_1932.x, x_1932.x)) + vec2<f32>(x_1935.x, x_1935.y));
          let x_1938 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
          let x_1940 : i32 = u_xlati11;
          let x_1943 : i32 = u_xlati11;
          let x_1947 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1940 + 2i) / 4i)][((x_1943 + 2i) % 4i)];
          let x_1949 : vec3<f32> = vs_TEXCOORD7;
          let x_1952 : vec4<f32> = u_xlat12;
          let x_1954 : vec2<f32> = ((vec2<f32>(x_1947.x, x_1947.y) * vec2<f32>(x_1949.z, x_1949.z)) + vec2<f32>(x_1952.x, x_1952.y));
          let x_1955 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1954.x, x_1954.y, x_1955.z, x_1955.w);
          let x_1957 : vec4<f32> = u_xlat12;
          let x_1959 : i32 = u_xlati11;
          let x_1962 : i32 = u_xlati11;
          let x_1966 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1959 + 3i) / 4i)][((x_1962 + 3i) % 4i)];
          let x_1968 : vec2<f32> = (vec2<f32>(x_1957.x, x_1957.y) + vec2<f32>(x_1966.x, x_1966.y));
          let x_1969 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1968.x, x_1968.y, x_1969.z, x_1969.w);
          let x_1971 : vec4<f32> = u_xlat12;
          let x_1974 : vec2<f32> = ((vec2<f32>(x_1971.x, x_1971.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1975 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1974.x, x_1974.y, x_1975.z, x_1975.w);
          let x_1977 : vec4<f32> = u_xlat12;
          let x_1979 : vec2<f32> = fract(vec2<f32>(x_1977.x, x_1977.y));
          let x_1980 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1979.x, x_1979.y, x_1980.z, x_1980.w);
          let x_1982 : i32 = u_xlati31;
          let x_1984 : vec4<f32> = x_1029.x_AdditionalLightsCookieAtlasUVRects[x_1982];
          let x_1986 : vec4<f32> = u_xlat12;
          let x_1989 : i32 = u_xlati31;
          let x_1991 : vec4<f32> = x_1029.x_AdditionalLightsCookieAtlasUVRects[x_1989];
          let x_1993 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.y) * vec2<f32>(x_1986.x, x_1986.y)) + vec2<f32>(x_1991.z, x_1991.w));
          let x_1994 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1993.x, x_1993.y, x_1994.z);
        } else {
          let x_1997 : vec3<f32> = vs_TEXCOORD7;
          let x_1999 : i32 = u_xlati11;
          let x_2002 : i32 = u_xlati11;
          let x_2006 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_1999 + 1i) / 4i)][((x_2002 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1997.y, x_1997.y, x_1997.y, x_1997.y) * x_2006);
          let x_2008 : i32 = u_xlati11;
          let x_2010 : i32 = u_xlati11;
          let x_2013 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[(x_2008 / 4i)][(x_2010 % 4i)];
          let x_2014 : vec3<f32> = vs_TEXCOORD7;
          let x_2017 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2013 * vec4<f32>(x_2014.x, x_2014.x, x_2014.x, x_2014.x)) + x_2017);
          let x_2019 : i32 = u_xlati11;
          let x_2022 : i32 = u_xlati11;
          let x_2026 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_2019 + 2i) / 4i)][((x_2022 + 2i) % 4i)];
          let x_2027 : vec3<f32> = vs_TEXCOORD7;
          let x_2030 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2026 * vec4<f32>(x_2027.z, x_2027.z, x_2027.z, x_2027.z)) + x_2030);
          let x_2032 : vec4<f32> = u_xlat12;
          let x_2033 : i32 = u_xlati11;
          let x_2036 : i32 = u_xlati11;
          let x_2040 : vec4<f32> = x_1029.x_AdditionalLightsWorldToLights[((x_2033 + 3i) / 4i)][((x_2036 + 3i) % 4i)];
          u_xlat12 = (x_2032 + x_2040);
          let x_2042 : vec4<f32> = u_xlat12;
          let x_2044 : vec4<f32> = u_xlat12;
          let x_2046 : vec3<f32> = (vec3<f32>(x_2042.x, x_2042.y, x_2042.z) / vec3<f32>(x_2044.w, x_2044.w, x_2044.w));
          let x_2047 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
          let x_2049 : vec4<f32> = u_xlat12;
          let x_2051 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
          let x_2054 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2054);
          let x_2056 : f32 = u_xlat50;
          let x_2058 : vec4<f32> = u_xlat12;
          let x_2060 : vec3<f32> = (vec3<f32>(x_2056, x_2056, x_2056) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
          let x_2061 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
          let x_2063 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2063.x, x_2063.y, x_2063.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2068 : f32 = u_xlat50;
          u_xlat50 = max(x_2068, 0.00000099999999747524f);
          let x_2071 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2071);
          let x_2073 : f32 = u_xlat50;
          let x_2075 : vec4<f32> = u_xlat12;
          let x_2077 : vec3<f32> = (vec3<f32>(x_2073, x_2073, x_2073) * vec3<f32>(x_2075.z, x_2075.x, x_2075.y));
          let x_2078 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
          let x_2081 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2081);
          let x_2085 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2085, 0.0f, 1.0f);
          let x_2088 : vec4<f32> = u_xlat13;
          let x_2090 : vec4<bool> = (vec4<f32>(x_2088.y, x_2088.y, x_2088.y, x_2088.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2091 : vec2<bool> = vec2<bool>(x_2090.x, x_2090.w);
          let x_2092 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2091.x, x_2092.y, x_2092.z, x_2091.y);
          let x_2095 : bool = u_xlatb11.x;
          if (x_2095) {
            let x_2100 : f32 = u_xlat13.x;
            x_2096 = x_2100;
          } else {
            let x_2103 : f32 = u_xlat13.x;
            x_2096 = -(x_2103);
          }
          let x_2105 : f32 = x_2096;
          u_xlat11.x = x_2105;
          let x_2108 : bool = u_xlatb11.w;
          if (x_2108) {
            let x_2113 : f32 = u_xlat13.x;
            x_2109 = x_2113;
          } else {
            let x_2116 : f32 = u_xlat13.x;
            x_2109 = -(x_2116);
          }
          let x_2118 : f32 = x_2109;
          u_xlat11.w = x_2118;
          let x_2120 : vec4<f32> = u_xlat12;
          let x_2122 : f32 = u_xlat50;
          let x_2125 : vec4<f32> = u_xlat11;
          let x_2127 : vec2<f32> = ((vec2<f32>(x_2120.x, x_2120.y) * vec2<f32>(x_2122, x_2122)) + vec2<f32>(x_2125.x, x_2125.w));
          let x_2128 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2127.x, x_2128.y, x_2128.z, x_2127.y);
          let x_2130 : vec4<f32> = u_xlat11;
          let x_2133 : vec2<f32> = ((vec2<f32>(x_2130.x, x_2130.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2134 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2133.x, x_2134.y, x_2134.z, x_2133.y);
          let x_2136 : vec4<f32> = u_xlat11;
          let x_2140 : vec2<f32> = clamp(vec2<f32>(x_2136.x, x_2136.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2141 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2140.x, x_2141.y, x_2141.z, x_2140.y);
          let x_2143 : i32 = u_xlati31;
          let x_2145 : vec4<f32> = x_1029.x_AdditionalLightsCookieAtlasUVRects[x_2143];
          let x_2147 : vec4<f32> = u_xlat11;
          let x_2150 : i32 = u_xlati31;
          let x_2152 : vec4<f32> = x_1029.x_AdditionalLightsCookieAtlasUVRects[x_2150];
          let x_2154 : vec2<f32> = ((vec2<f32>(x_2145.x, x_2145.y) * vec2<f32>(x_2147.x, x_2147.w)) + vec2<f32>(x_2152.z, x_2152.w));
          let x_2155 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2154.x, x_2154.y, x_2155.z);
        }
      }
      let x_2162 : vec3<f32> = u_xlat25;
      let x_2164 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2162.x, x_2162.y), 0.0f);
      u_xlat11 = x_2164;
      let x_2166 : bool = u_xlatb3.y;
      if (x_2166) {
        let x_2171 : f32 = u_xlat11.w;
        x_2167 = x_2171;
      } else {
        let x_2174 : f32 = u_xlat11.x;
        x_2167 = x_2174;
      }
      let x_2175 : f32 = x_2167;
      u_xlat50 = x_2175;
      let x_2177 : bool = u_xlatb3.x;
      if (x_2177) {
        let x_2181 : vec4<f32> = u_xlat11;
        x_2178 = vec3<f32>(x_2181.x, x_2181.y, x_2181.z);
      } else {
        let x_2184 : f32 = u_xlat50;
        x_2178 = vec3<f32>(x_2184, x_2184, x_2184);
      }
      let x_2186 : vec3<f32> = x_2178;
      let x_2187 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2193 : vec4<f32> = u_xlat11;
    let x_2195 : i32 = u_xlati31;
    let x_2197 : vec4<f32> = x_1528.x_AdditionalLightsColor[x_2195];
    let x_2199 : vec3<f32> = (vec3<f32>(x_2193.x, x_2193.y, x_2193.z) * vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
    let x_2200 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
    let x_2202 : f32 = u_xlat47;
    let x_2203 : f32 = u_xlat49;
    u_xlat31 = (x_2202 * x_2203);
    let x_2205 : vec4<f32> = u_xlat2;
    let x_2207 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2205.x, x_2205.y, x_2205.z), vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
    let x_2210 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2210, 0.0f, 1.0f);
    let x_2212 : f32 = u_xlat31;
    let x_2213 : f32 = u_xlat47;
    u_xlat31 = (x_2212 * x_2213);
    let x_2215 : f32 = u_xlat31;
    let x_2217 : vec4<f32> = u_xlat11;
    let x_2219 : vec3<f32> = (vec3<f32>(x_2215, x_2215, x_2215) * vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
    let x_2220 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
    let x_2222 : vec3<f32> = u_xlat23;
    let x_2223 : f32 = u_xlat48;
    let x_2226 : vec4<f32> = u_xlat1;
    u_xlat23 = ((x_2222 * vec3<f32>(x_2223, x_2223, x_2223)) + vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
    let x_2229 : vec3<f32> = u_xlat23;
    let x_2230 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(x_2229, x_2230);
    let x_2232 : f32 = u_xlat31;
    u_xlat31 = max(x_2232, 1.17549435e-38f);
    let x_2234 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_2234);
    let x_2236 : f32 = u_xlat31;
    let x_2238 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2236, x_2236, x_2236) * x_2238);
    let x_2240 : vec4<f32> = u_xlat2;
    let x_2242 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(vec3<f32>(x_2240.x, x_2240.y, x_2240.z), x_2242);
    let x_2244 : f32 = u_xlat31;
    u_xlat31 = clamp(x_2244, 0.0f, 1.0f);
    let x_2246 : vec4<f32> = u_xlat10;
    let x_2248 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(vec3<f32>(x_2246.x, x_2246.y, x_2246.z), x_2248);
    let x_2250 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2250, 0.0f, 1.0f);
    let x_2252 : f32 = u_xlat31;
    let x_2253 : f32 = u_xlat31;
    u_xlat31 = (x_2252 * x_2253);
    let x_2255 : f32 = u_xlat31;
    let x_2257 : f32 = u_xlat9.x;
    u_xlat31 = ((x_2255 * x_2257) + 1.00001001358032226562f);
    let x_2260 : f32 = u_xlat47;
    let x_2261 : f32 = u_xlat47;
    u_xlat47 = (x_2260 * x_2261);
    let x_2263 : f32 = u_xlat31;
    let x_2264 : f32 = u_xlat31;
    u_xlat31 = (x_2263 * x_2264);
    let x_2266 : f32 = u_xlat47;
    u_xlat47 = max(x_2266, 0.10000000149011611938f);
    let x_2268 : f32 = u_xlat31;
    let x_2269 : f32 = u_xlat47;
    u_xlat31 = (x_2268 * x_2269);
    let x_2271 : f32 = u_xlat45;
    let x_2272 : f32 = u_xlat31;
    u_xlat31 = (x_2271 * x_2272);
    let x_2274 : f32 = u_xlat46;
    let x_2275 : f32 = u_xlat31;
    u_xlat31 = (x_2274 / x_2275);
    let x_2277 : vec4<f32> = u_xlat5;
    let x_2279 : f32 = u_xlat31;
    let x_2282 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2277.x, x_2277.y, x_2277.z) * vec3<f32>(x_2279, x_2279, x_2279)) + vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
    let x_2285 : vec3<f32> = u_xlat23;
    let x_2286 : vec4<f32> = u_xlat11;
    let x_2289 : vec4<f32> = u_xlat8;
    let x_2291 : vec3<f32> = ((x_2285 * vec3<f32>(x_2286.x, x_2286.y, x_2286.z)) + vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
    let x_2292 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);

    continuing {
      let x_2294 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2294 + bitcast<u32>(1i));
    }
  }
  let x_2296 : vec4<f32> = u_xlat4;
  let x_2298 : f32 = u_xlat14;
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2296.x, x_2296.y, x_2296.z) * vec3<f32>(x_2298, x_2298, x_2298)) + vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : vec4<f32> = u_xlat8;
  let x_2306 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2304.x, x_2304.y, x_2304.z) + x_2306);
  let x_2308 : f32 = u_xlat43;
  let x_2309 : f32 = u_xlat43;
  u_xlat1.x = (x_2308 * -(x_2309));
  let x_2314 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2314);
  let x_2317 : vec3<f32> = u_xlat0;
  let x_2318 : f32 = u_xlat42;
  let x_2322 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_2317 * vec3<f32>(x_2318, x_2318, x_2318)) + -(vec3<f32>(x_2322.x, x_2322.y, x_2322.z)));
  let x_2328 : vec4<f32> = u_xlat1;
  let x_2330 : vec3<f32> = u_xlat0;
  let x_2333 : vec4<f32> = x_113.unity_FogColor;
  let x_2335 : vec3<f32> = ((vec3<f32>(x_2328.x, x_2328.x, x_2328.x) * x_2330) + vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
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


