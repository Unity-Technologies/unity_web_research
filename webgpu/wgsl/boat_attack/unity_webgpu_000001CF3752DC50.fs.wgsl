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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1024 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1107 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1306 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_1616 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1056 : f32;
  var x_1174 : f32;
  var x_1185 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1754 : f32;
  var x_1764 : f32;
  var txVec1 : vec3<f32>;
  var x_2193 : f32;
  var x_2206 : f32;
  var x_2264 : f32;
  var x_2275 : vec3<f32>;
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
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat43;
  u_xlat43 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_405);
  let x_407 : f32 = u_xlat43;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat43;
  u_xlat43 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_453);
  let x_455 : f32 = u_xlat43;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat43;
  u_xlat43 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_522);
  let x_524 : f32 = u_xlat43;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat43;
  u_xlat43 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat43;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_839 : f32 = vs_TEXCOORD7.y;
  let x_841 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_839 * x_841);
  let x_844 : f32 = x_113.unity_MatrixV[0i].z;
  let x_846 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat43;
  u_xlat43 = ((x_844 * x_846) + x_848);
  let x_851 : f32 = x_113.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_855 : f32 = u_xlat43;
  u_xlat43 = ((x_851 * x_853) + x_855);
  let x_857 : f32 = u_xlat43;
  let x_859 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_857 + x_859);
  let x_861 : f32 = u_xlat43;
  let x_864 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_861) + -(x_864));
  let x_867 : f32 = u_xlat43;
  u_xlat43 = max(x_867, 0.0f);
  let x_869 : f32 = u_xlat43;
  let x_871 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_869 * x_871);
  let x_878 : vec4<f32> = vs_TEXCOORD0;
  let x_881 : f32 = x_113.x_GlobalMipBias.x;
  let x_882 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_878.z, x_878.w), x_881);
  u_xlat2 = x_882;
  let x_887 : vec4<f32> = vs_TEXCOORD0;
  let x_890 : f32 = x_113.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_887.z, x_887.w), x_890);
  let x_892 : vec3<f32> = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat2;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_909 : f32 = u_xlat2.x;
  u_xlat2.x = (x_909 + 0.5f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = u_xlat3;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_921 : f32 = u_xlat2.w;
  u_xlat44 = max(x_921, 0.00009999999747378752f);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : f32 = u_xlat44;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) / vec3<f32>(x_926, x_926, x_926));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_932 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_932) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_937 : f32 = u_xlat28;
  let x_938 : f32 = u_xlat44;
  u_xlat3.x = (x_937 + -(x_938));
  let x_943 : f32 = u_xlat44;
  let x_945 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat5;
  let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec3<f32> = u_xlat0;
  let x_957 : vec4<f32> = u_xlat4;
  let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.x, x_955.x) * vec3<f32>(x_957.x, x_957.y, x_957.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_963 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : f32 = u_xlat28;
  u_xlat0.x = (-(x_965) + 1.0f);
  let x_970 : f32 = u_xlat0.x;
  let x_972 : f32 = u_xlat0.x;
  u_xlat28 = (x_970 * x_972);
  let x_974 : f32 = u_xlat28;
  u_xlat28 = max(x_974, 0.0078125f);
  let x_977 : f32 = u_xlat28;
  let x_978 : f32 = u_xlat28;
  u_xlat44 = (x_977 * x_978);
  let x_981 : f32 = u_xlat3.x;
  u_xlat3.x = (x_981 + 1.0f);
  let x_985 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_985, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat28;
  u_xlat46 = ((x_989 * 4.0f) + 2.0f);
  let x_992 : f32 = u_xlat14;
  u_xlat14 = min(x_992, 1.0f);
  let x_997 : vec4<f32> = vs_TEXCOORD8;
  let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
  let x_1000 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_998.x, x_998.y, x_1000);
  let x_1012 : vec3<f32> = txVec0;
  let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1012.xy, x_1012.z);
  u_xlat5.x = x_1014;
  let x_1026 : f32 = x_1024.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1026) + 1.0f);
  let x_1031 : f32 = u_xlat5.x;
  let x_1033 : f32 = x_1024.x_MainLightShadowParams.x;
  let x_1036 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1031 * x_1033) + x_1036);
  let x_1041 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1041);
  let x_1047 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_1047 >= 1.0f);
  let x_1051 : bool = u_xlatb33.x;
  let x_1052 : bool = u_xlatb19;
  u_xlatb19 = (x_1051 | x_1052);
  let x_1054 : bool = u_xlatb19;
  if (x_1054) {
    x_1056 = 1.0f;
  } else {
    let x_1061 : f32 = u_xlat5.x;
    x_1056 = x_1061;
  }
  let x_1062 : f32 = x_1056;
  u_xlat5.x = x_1062;
  let x_1064 : vec3<f32> = vs_TEXCOORD7;
  let x_1067 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1064 + -(x_1067));
  let x_1070 : vec3<f32> = u_xlat19;
  let x_1071 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1070, x_1071);
  let x_1077 : f32 = u_xlat19.x;
  let x_1079 : f32 = x_1024.x_MainLightShadowParams.z;
  let x_1082 : f32 = x_1024.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_1077 * x_1079) + x_1082);
  let x_1086 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1086, 0.0f, 1.0f);
  let x_1091 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1091) + 1.0f);
  let x_1095 : f32 = u_xlat33.x;
  let x_1096 : f32 = u_xlat47;
  let x_1099 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1095 * x_1096) + x_1099);
  let x_1109 : f32 = x_1107.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_1109 == -1.0f));
  let x_1113 : bool = u_xlatb33.x;
  if (x_1113) {
    let x_1116 : vec3<f32> = vs_TEXCOORD7;
    let x_1119 : vec4<f32> = x_1107.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_1116.y, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y));
    let x_1123 : vec4<f32> = x_1107.x_MainLightWorldToLight[0i];
    let x_1125 : vec3<f32> = vs_TEXCOORD7;
    let x_1128 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1125.x, x_1125.x)) + x_1128);
    let x_1131 : vec4<f32> = x_1107.x_MainLightWorldToLight[2i];
    let x_1133 : vec3<f32> = vs_TEXCOORD7;
    let x_1136 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1133.z, x_1133.z)) + x_1136);
    let x_1138 : vec2<f32> = u_xlat33;
    let x_1140 : vec4<f32> = x_1107.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_1138 + vec2<f32>(x_1140.x, x_1140.y));
    let x_1143 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_1143 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1151 : vec2<f32> = u_xlat33;
    let x_1153 : f32 = x_113.x_GlobalMipBias.x;
    let x_1154 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1151, x_1153);
    u_xlat6 = x_1154;
    let x_1156 : f32 = x_1107.x_MainLightCookieTextureFormat;
    let x_1158 : f32 = x_1107.x_MainLightCookieTextureFormat;
    let x_1160 : f32 = x_1107.x_MainLightCookieTextureFormat;
    let x_1162 : f32 = x_1107.x_MainLightCookieTextureFormat;
    let x_1163 : vec4<f32> = vec4<f32>(x_1156, x_1158, x_1160, x_1162);
    let x_1170 : vec4<bool> = (vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_1170.x, x_1170.y);
    let x_1173 : bool = u_xlatb33.y;
    if (x_1173) {
      let x_1178 : f32 = u_xlat6.w;
      x_1174 = x_1178;
    } else {
      let x_1181 : f32 = u_xlat6.x;
      x_1174 = x_1181;
    }
    let x_1182 : f32 = x_1174;
    u_xlat47 = x_1182;
    let x_1184 : bool = u_xlatb33.x;
    if (x_1184) {
      let x_1188 : vec4<f32> = u_xlat6;
      x_1185 = vec3<f32>(x_1188.x, x_1188.y, x_1188.z);
    } else {
      let x_1191 : f32 = u_xlat47;
      x_1185 = vec3<f32>(x_1191, x_1191, x_1191);
    }
    let x_1193 : vec3<f32> = x_1185;
    let x_1194 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1200 : vec4<f32> = u_xlat6;
  let x_1203 : vec4<f32> = x_113.x_MainLightColor;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1209 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1209;
  let x_1212 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1212;
  let x_1215 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1215;
  let x_1217 : vec4<f32> = u_xlat7;
  let x_1220 : vec4<f32> = u_xlat1;
  u_xlat33.x = dot(-(vec3<f32>(x_1217.x, x_1217.y, x_1217.z)), vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1225 : f32 = u_xlat33.x;
  let x_1227 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1225 + x_1227);
  let x_1230 : vec4<f32> = u_xlat1;
  let x_1232 : vec2<f32> = u_xlat33;
  let x_1236 : vec4<f32> = u_xlat7;
  let x_1239 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * -(vec3<f32>(x_1232.x, x_1232.x, x_1232.x))) + -(vec3<f32>(x_1236.x, x_1236.y, x_1236.z)));
  let x_1240 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec4<f32> = u_xlat1;
  let x_1244 : vec4<f32> = u_xlat7;
  u_xlat33.x = dot(vec3<f32>(x_1242.x, x_1242.y, x_1242.z), vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1249 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1249, 0.0f, 1.0f);
  let x_1253 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_1253) + 1.0f);
  let x_1258 : f32 = u_xlat33.x;
  let x_1260 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1258 * x_1260);
  let x_1264 : f32 = u_xlat33.x;
  let x_1266 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1264 * x_1266);
  let x_1270 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1270) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1277 : f32 = u_xlat0.x;
  let x_1278 : f32 = u_xlat47;
  u_xlat0.x = (x_1277 * x_1278);
  let x_1282 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1282 * 6.0f);
  let x_1294 : vec4<f32> = u_xlat8;
  let x_1297 : f32 = u_xlat0.x;
  let x_1298 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1294.x, x_1294.y, x_1294.z), x_1297);
  u_xlat8 = x_1298;
  let x_1300 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1300 + -1.0f);
  let x_1308 : f32 = x_1306.unity_SpecCube0_HDR.w;
  let x_1310 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1308 * x_1310) + 1.0f);
  let x_1315 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1315, 0.0f);
  let x_1319 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1319);
  let x_1323 : f32 = u_xlat0.x;
  let x_1325 : f32 = x_1306.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1323 * x_1325);
  let x_1329 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1329);
  let x_1333 : f32 = u_xlat0.x;
  let x_1335 : f32 = x_1306.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1333 * x_1335);
  let x_1338 : vec4<f32> = u_xlat8;
  let x_1340 : vec3<f32> = u_xlat0;
  let x_1342 : vec3<f32> = (vec3<f32>(x_1338.x, x_1338.y, x_1338.z) * vec3<f32>(x_1340.x, x_1340.x, x_1340.x));
  let x_1343 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1345 : f32 = u_xlat28;
  let x_1347 : f32 = u_xlat28;
  let x_1351 : vec2<f32> = ((vec2<f32>(x_1345, x_1345) * vec2<f32>(x_1347, x_1347)) + vec2<f32>(-1.0f, 1.0f));
  let x_1352 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1351.x, x_1352.y, x_1351.y);
  let x_1355 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1355);
  let x_1357 : vec4<f32> = u_xlat4;
  let x_1360 : vec4<f32> = u_xlat3;
  let x_1362 : vec3<f32> = (-(vec3<f32>(x_1357.x, x_1357.y, x_1357.z)) + vec3<f32>(x_1360.x, x_1360.x, x_1360.x));
  let x_1363 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1365 : vec2<f32> = u_xlat33;
  let x_1367 : vec4<f32> = u_xlat9;
  let x_1370 : vec4<f32> = u_xlat4;
  let x_1372 : vec3<f32> = ((vec3<f32>(x_1365.x, x_1365.x, x_1365.x) * vec3<f32>(x_1367.x, x_1367.y, x_1367.z)) + vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1375 : f32 = u_xlat28;
  let x_1377 : vec4<f32> = u_xlat9;
  let x_1379 : vec3<f32> = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec4<f32> = u_xlat8;
  let x_1384 : vec4<f32> = u_xlat9;
  let x_1386 : vec3<f32> = (vec3<f32>(x_1382.x, x_1382.y, x_1382.z) * vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat2;
  let x_1391 : vec3<f32> = u_xlat17;
  let x_1393 : vec4<f32> = u_xlat8;
  let x_1395 : vec3<f32> = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * x_1391) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1399 : f32 = u_xlat5.x;
  let x_1401 : f32 = x_1306.unity_LightData.z;
  u_xlat28 = (x_1399 * x_1401);
  let x_1403 : vec4<f32> = u_xlat1;
  let x_1406 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1403.x, x_1403.y, x_1403.z), vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1411 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1411, 0.0f, 1.0f);
  let x_1414 : f32 = u_xlat28;
  let x_1416 : f32 = u_xlat3.x;
  u_xlat28 = (x_1414 * x_1416);
  let x_1418 : f32 = u_xlat28;
  let x_1420 : vec4<f32> = u_xlat6;
  let x_1422 : vec3<f32> = (vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1422.x, x_1423.y, x_1422.y, x_1422.z);
  let x_1425 : vec4<f32> = u_xlat7;
  let x_1428 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1430 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) + vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
  let x_1431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
  let x_1433 : vec4<f32> = u_xlat6;
  let x_1435 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1433.x, x_1433.y, x_1433.z), vec3<f32>(x_1435.x, x_1435.y, x_1435.z));
  let x_1438 : f32 = u_xlat28;
  u_xlat28 = max(x_1438, 1.17549435e-38f);
  let x_1441 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1441);
  let x_1443 : f32 = u_xlat28;
  let x_1445 : vec4<f32> = u_xlat6;
  let x_1447 : vec3<f32> = (vec3<f32>(x_1443, x_1443, x_1443) * vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
  let x_1450 : vec4<f32> = u_xlat1;
  let x_1452 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1450.x, x_1450.y, x_1450.z), vec3<f32>(x_1452.x, x_1452.y, x_1452.z));
  let x_1455 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1455, 0.0f, 1.0f);
  let x_1458 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1460 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
  let x_1465 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1465, 0.0f, 1.0f);
  let x_1468 : f32 = u_xlat28;
  let x_1469 : f32 = u_xlat28;
  u_xlat28 = (x_1468 * x_1469);
  let x_1471 : f32 = u_xlat28;
  let x_1473 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1471 * x_1473) + 1.00001001358032226562f);
  let x_1478 : f32 = u_xlat3.x;
  let x_1480 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1478 * x_1480);
  let x_1483 : f32 = u_xlat28;
  let x_1484 : f32 = u_xlat28;
  u_xlat28 = (x_1483 * x_1484);
  let x_1487 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1487, 0.10000000149011611938f);
  let x_1491 : f32 = u_xlat28;
  let x_1493 : f32 = u_xlat3.x;
  u_xlat28 = (x_1491 * x_1493);
  let x_1495 : f32 = u_xlat46;
  let x_1496 : f32 = u_xlat28;
  u_xlat28 = (x_1495 * x_1496);
  let x_1498 : f32 = u_xlat44;
  let x_1499 : f32 = u_xlat28;
  u_xlat28 = (x_1498 / x_1499);
  let x_1501 : vec4<f32> = u_xlat4;
  let x_1503 : f32 = u_xlat28;
  let x_1506 : vec3<f32> = u_xlat17;
  let x_1507 : vec3<f32> = ((vec3<f32>(x_1501.x, x_1501.y, x_1501.z) * vec3<f32>(x_1503, x_1503, x_1503)) + x_1506);
  let x_1508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
  let x_1510 : vec4<f32> = u_xlat5;
  let x_1512 : vec4<f32> = u_xlat6;
  let x_1514 : vec3<f32> = (vec3<f32>(x_1510.x, x_1510.z, x_1510.w) * vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
  let x_1515 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1514.x, x_1515.y, x_1514.y, x_1514.z);
  let x_1518 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1520 : f32 = x_1306.unity_LightData.y;
  u_xlat28 = min(x_1518, x_1520);
  let x_1524 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1524));
  let x_1528 : f32 = u_xlat19.x;
  let x_1530 : f32 = x_1024.x_AdditionalShadowFadeParams.x;
  let x_1533 : f32 = x_1024.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1528 * x_1530) + x_1533);
  let x_1537 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1537, 0.0f, 1.0f);
  let x_1542 : f32 = x_1107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1544 : f32 = x_1107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1546 : f32 = x_1107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1548 : f32 = x_1107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1549 : vec4<f32> = vec4<f32>(x_1542, x_1544, x_1546, x_1548);
  let x_1556 : vec4<bool> = (vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1549.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1556.x, x_1556.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1568 : u32 = u_xlatu_loop_1;
    let x_1569 : u32 = u_xlatu28;
    if ((x_1568 < x_1569)) {
    } else {
      break;
    }
    let x_1572 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1572 >> 2u);
    let x_1576 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1576 & 3u));
    let x_1580 : u32 = u_xlatu34;
    let x_1583 : vec4<f32> = x_1306.unity_LightIndices[bitcast<i32>(x_1580)];
    let x_1593 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1598 : vec4<u32> = indexable[x_1593];
    u_xlat34.x = dot(x_1583, bitcast<vec4<f32>>(x_1598));
    let x_1604 : f32 = u_xlat34.x;
    u_xlati34 = i32(x_1604);
    let x_1606 : vec3<f32> = vs_TEXCOORD7;
    let x_1617 : i32 = u_xlati34;
    let x_1619 : vec4<f32> = x_1616.x_AdditionalLightsPosition[x_1617];
    let x_1622 : i32 = u_xlati34;
    let x_1624 : vec4<f32> = x_1616.x_AdditionalLightsPosition[x_1622];
    let x_1626 : vec3<f32> = ((-(x_1606) * vec3<f32>(x_1619.w, x_1619.w, x_1619.w)) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
    let x_1627 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
    let x_1630 : vec4<f32> = u_xlat9;
    let x_1632 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1630.x, x_1630.y, x_1630.z), vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : f32 = u_xlat48;
    u_xlat48 = max(x_1635, 0.00006103515625f);
    let x_1638 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1638);
    let x_1640 : f32 = u_xlat49;
    let x_1642 : vec4<f32> = u_xlat9;
    let x_1644 : vec3<f32> = (vec3<f32>(x_1640, x_1640, x_1640) * vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
    let x_1645 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
    let x_1648 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1648);
    let x_1650 : f32 = u_xlat48;
    let x_1651 : i32 = u_xlati34;
    let x_1653 : f32 = x_1616.x_AdditionalLightsAttenuation[x_1651].x;
    u_xlat48 = (x_1650 * x_1653);
    let x_1655 : f32 = u_xlat48;
    let x_1657 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1655) * x_1657) + 1.0f);
    let x_1660 : f32 = u_xlat48;
    u_xlat48 = max(x_1660, 0.0f);
    let x_1662 : f32 = u_xlat48;
    let x_1663 : f32 = u_xlat48;
    u_xlat48 = (x_1662 * x_1663);
    let x_1665 : f32 = u_xlat48;
    let x_1666 : f32 = u_xlat50;
    u_xlat48 = (x_1665 * x_1666);
    let x_1668 : i32 = u_xlati34;
    let x_1670 : vec4<f32> = x_1616.x_AdditionalLightsSpotDir[x_1668];
    let x_1672 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1670.x, x_1670.y, x_1670.z), vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : f32 = u_xlat50;
    let x_1676 : i32 = u_xlati34;
    let x_1678 : f32 = x_1616.x_AdditionalLightsAttenuation[x_1676].z;
    let x_1680 : i32 = u_xlati34;
    let x_1682 : f32 = x_1616.x_AdditionalLightsAttenuation[x_1680].w;
    u_xlat50 = ((x_1675 * x_1678) + x_1682);
    let x_1684 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1684, 0.0f, 1.0f);
    let x_1686 : f32 = u_xlat50;
    let x_1687 : f32 = u_xlat50;
    u_xlat50 = (x_1686 * x_1687);
    let x_1689 : f32 = u_xlat48;
    let x_1690 : f32 = u_xlat50;
    u_xlat48 = (x_1689 * x_1690);
    let x_1693 : i32 = u_xlati34;
    let x_1695 : f32 = x_1024.x_AdditionalShadowParams[x_1693].w;
    u_xlati50 = i32(x_1695);
    let x_1698 : i32 = u_xlati50;
    u_xlatb51 = (x_1698 >= 0i);
    let x_1700 : bool = u_xlatb51;
    if (x_1700) {
      let x_1704 : i32 = u_xlati34;
      let x_1706 : f32 = x_1024.x_AdditionalShadowParams[x_1704].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1706, x_1706, x_1706, x_1706))));
      let x_1710 : bool = u_xlatb51;
      if (x_1710) {
        let x_1715 : vec4<f32> = u_xlat10;
        let x_1718 : vec4<f32> = u_xlat10;
        let x_1721 : vec4<bool> = (abs(vec4<f32>(x_1715.z, x_1715.z, x_1715.y, x_1715.z)) >= abs(vec4<f32>(x_1718.x, x_1718.y, x_1718.x, x_1718.x)));
        let x_1723 : vec3<bool> = vec3<bool>(x_1721.x, x_1721.y, x_1721.z);
        let x_1724 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
        let x_1727 : bool = u_xlatb11.y;
        let x_1729 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1727 & x_1729);
        let x_1731 : vec4<f32> = u_xlat10;
        let x_1734 : vec4<bool> = (-(vec4<f32>(x_1731.z, x_1731.y, x_1731.z, x_1731.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1735 : vec3<bool> = vec3<bool>(x_1734.x, x_1734.y, x_1734.w);
        let x_1736 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1735.x, x_1735.y, x_1736.z, x_1735.z);
        let x_1739 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1739);
        let x_1744 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1744);
        let x_1750 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1750);
        let x_1753 : bool = u_xlatb11.z;
        if (x_1753) {
          let x_1758 : f32 = u_xlat11.y;
          x_1754 = x_1758;
        } else {
          let x_1760 : f32 = u_xlat52;
          x_1754 = x_1760;
        }
        let x_1761 : f32 = x_1754;
        u_xlat52 = x_1761;
        let x_1763 : bool = u_xlatb51;
        if (x_1763) {
          let x_1768 : f32 = u_xlat11.x;
          x_1764 = x_1768;
        } else {
          let x_1770 : f32 = u_xlat52;
          x_1764 = x_1770;
        }
        let x_1771 : f32 = x_1764;
        u_xlat51 = x_1771;
        let x_1772 : i32 = u_xlati34;
        let x_1774 : f32 = x_1024.x_AdditionalShadowParams[x_1772].w;
        u_xlat52 = trunc(x_1774);
        let x_1776 : f32 = u_xlat51;
        let x_1777 : f32 = u_xlat52;
        u_xlat51 = (x_1776 + x_1777);
        let x_1779 : f32 = u_xlat51;
        u_xlati50 = i32(x_1779);
      }
      let x_1781 : i32 = u_xlati50;
      u_xlati50 = (x_1781 << bitcast<u32>(2i));
      let x_1783 : vec3<f32> = vs_TEXCOORD7;
      let x_1785 : i32 = u_xlati50;
      let x_1788 : i32 = u_xlati50;
      let x_1792 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[((x_1785 + 1i) / 4i)][((x_1788 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1783.y, x_1783.y, x_1783.y, x_1783.y) * x_1792);
      let x_1794 : i32 = u_xlati50;
      let x_1796 : i32 = u_xlati50;
      let x_1799 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[(x_1794 / 4i)][(x_1796 % 4i)];
      let x_1800 : vec3<f32> = vs_TEXCOORD7;
      let x_1803 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1799 * vec4<f32>(x_1800.x, x_1800.x, x_1800.x, x_1800.x)) + x_1803);
      let x_1805 : i32 = u_xlati50;
      let x_1808 : i32 = u_xlati50;
      let x_1812 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[((x_1805 + 2i) / 4i)][((x_1808 + 2i) % 4i)];
      let x_1813 : vec3<f32> = vs_TEXCOORD7;
      let x_1816 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1812 * vec4<f32>(x_1813.z, x_1813.z, x_1813.z, x_1813.z)) + x_1816);
      let x_1818 : vec4<f32> = u_xlat11;
      let x_1819 : i32 = u_xlati50;
      let x_1822 : i32 = u_xlati50;
      let x_1826 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[((x_1819 + 3i) / 4i)][((x_1822 + 3i) % 4i)];
      u_xlat11 = (x_1818 + x_1826);
      let x_1828 : vec4<f32> = u_xlat11;
      let x_1830 : vec4<f32> = u_xlat11;
      let x_1832 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.y, x_1828.z) / vec3<f32>(x_1830.w, x_1830.w, x_1830.w));
      let x_1833 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
      let x_1836 : vec4<f32> = u_xlat11;
      let x_1837 : vec2<f32> = vec2<f32>(x_1836.x, x_1836.y);
      let x_1839 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
      let x_1847 : vec3<f32> = txVec1;
      let x_1849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1847.xy, x_1847.z);
      u_xlat50 = x_1849;
      let x_1850 : i32 = u_xlati34;
      let x_1852 : f32 = x_1024.x_AdditionalShadowParams[x_1850].x;
      u_xlat51 = (1.0f + -(x_1852));
      let x_1855 : f32 = u_xlat50;
      let x_1856 : i32 = u_xlati34;
      let x_1858 : f32 = x_1024.x_AdditionalShadowParams[x_1856].x;
      let x_1860 : f32 = u_xlat51;
      u_xlat50 = ((x_1855 * x_1858) + x_1860);
      let x_1863 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1863);
      let x_1867 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1867 >= 1.0f);
      let x_1869 : bool = u_xlatb51;
      let x_1870 : bool = u_xlatb52;
      u_xlatb51 = (x_1869 | x_1870);
      let x_1872 : bool = u_xlatb51;
      let x_1873 : f32 = u_xlat50;
      u_xlat50 = select(x_1873, 1.0f, x_1872);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1876 : f32 = u_xlat50;
    u_xlat51 = (-(x_1876) + 1.0f);
    let x_1880 : f32 = u_xlat3.x;
    let x_1881 : f32 = u_xlat51;
    let x_1883 : f32 = u_xlat50;
    u_xlat50 = ((x_1880 * x_1881) + x_1883);
    let x_1886 : i32 = u_xlati34;
    u_xlati51 = (1i << bitcast<u32>((x_1886 & 31i)));
    let x_1889 : i32 = u_xlati51;
    let x_1892 : f32 = x_1107.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1889) & bitcast<u32>(x_1892)));
    let x_1896 : i32 = u_xlati51;
    if ((x_1896 != 0i)) {
      let x_1900 : i32 = u_xlati34;
      let x_1902 : f32 = x_1107.x_AdditionalLightsLightTypes[x_1900].el;
      u_xlati51 = i32(x_1902);
      let x_1905 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1905 != 0i));
      let x_1909 : i32 = u_xlati34;
      u_xlati11 = (x_1909 << bitcast<u32>(2i));
      let x_1911 : i32 = u_xlati52;
      if ((x_1911 != 0i)) {
        let x_1916 : vec3<f32> = vs_TEXCOORD7;
        let x_1918 : i32 = u_xlati11;
        let x_1921 : i32 = u_xlati11;
        let x_1925 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1918 + 1i) / 4i)][((x_1921 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1916.y, x_1916.y, x_1916.y) * vec3<f32>(x_1925.x, x_1925.y, x_1925.w));
        let x_1928 : i32 = u_xlati11;
        let x_1930 : i32 = u_xlati11;
        let x_1933 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1928 / 4i)][(x_1930 % 4i)];
        let x_1935 : vec3<f32> = vs_TEXCOORD7;
        let x_1938 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1933.x, x_1933.y, x_1933.w) * vec3<f32>(x_1935.x, x_1935.x, x_1935.x)) + x_1938);
        let x_1940 : i32 = u_xlati11;
        let x_1943 : i32 = u_xlati11;
        let x_1947 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1940 + 2i) / 4i)][((x_1943 + 2i) % 4i)];
        let x_1949 : vec3<f32> = vs_TEXCOORD7;
        let x_1952 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1947.x, x_1947.y, x_1947.w) * vec3<f32>(x_1949.z, x_1949.z, x_1949.z)) + x_1952);
        let x_1954 : vec3<f32> = u_xlat25;
        let x_1955 : i32 = u_xlati11;
        let x_1958 : i32 = u_xlati11;
        let x_1962 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1955 + 3i) / 4i)][((x_1958 + 3i) % 4i)];
        u_xlat25 = (x_1954 + vec3<f32>(x_1962.x, x_1962.y, x_1962.w));
        let x_1965 : vec3<f32> = u_xlat25;
        let x_1967 : vec3<f32> = u_xlat25;
        let x_1969 : vec2<f32> = (vec2<f32>(x_1965.x, x_1965.y) / vec2<f32>(x_1967.z, x_1967.z));
        let x_1970 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1969.x, x_1969.y, x_1970.z);
        let x_1972 : vec3<f32> = u_xlat25;
        let x_1975 : vec2<f32> = ((vec2<f32>(x_1972.x, x_1972.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1976 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1975.x, x_1975.y, x_1976.z);
        let x_1978 : vec3<f32> = u_xlat25;
        let x_1982 : vec2<f32> = clamp(vec2<f32>(x_1978.x, x_1978.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1983 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1982.x, x_1982.y, x_1983.z);
        let x_1985 : i32 = u_xlati34;
        let x_1987 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[x_1985];
        let x_1989 : vec3<f32> = u_xlat25;
        let x_1992 : i32 = u_xlati34;
        let x_1994 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[x_1992];
        let x_1996 : vec2<f32> = ((vec2<f32>(x_1987.x, x_1987.y) * vec2<f32>(x_1989.x, x_1989.y)) + vec2<f32>(x_1994.z, x_1994.w));
        let x_1997 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1996.x, x_1996.y, x_1997.z);
      } else {
        let x_2000 : i32 = u_xlati51;
        u_xlatb51 = (x_2000 == 1i);
        let x_2002 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2002);
        let x_2004 : i32 = u_xlati51;
        if ((x_2004 != 0i)) {
          let x_2008 : vec3<f32> = vs_TEXCOORD7;
          let x_2010 : i32 = u_xlati11;
          let x_2013 : i32 = u_xlati11;
          let x_2017 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_2010 + 1i) / 4i)][((x_2013 + 1i) % 4i)];
          let x_2019 : vec2<f32> = (vec2<f32>(x_2008.y, x_2008.y) * vec2<f32>(x_2017.x, x_2017.y));
          let x_2020 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2019.x, x_2019.y, x_2020.z, x_2020.w);
          let x_2022 : i32 = u_xlati11;
          let x_2024 : i32 = u_xlati11;
          let x_2027 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_2022 / 4i)][(x_2024 % 4i)];
          let x_2029 : vec3<f32> = vs_TEXCOORD7;
          let x_2032 : vec4<f32> = u_xlat12;
          let x_2034 : vec2<f32> = ((vec2<f32>(x_2027.x, x_2027.y) * vec2<f32>(x_2029.x, x_2029.x)) + vec2<f32>(x_2032.x, x_2032.y));
          let x_2035 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2034.x, x_2034.y, x_2035.z, x_2035.w);
          let x_2037 : i32 = u_xlati11;
          let x_2040 : i32 = u_xlati11;
          let x_2044 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_2037 + 2i) / 4i)][((x_2040 + 2i) % 4i)];
          let x_2046 : vec3<f32> = vs_TEXCOORD7;
          let x_2049 : vec4<f32> = u_xlat12;
          let x_2051 : vec2<f32> = ((vec2<f32>(x_2044.x, x_2044.y) * vec2<f32>(x_2046.z, x_2046.z)) + vec2<f32>(x_2049.x, x_2049.y));
          let x_2052 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2051.x, x_2051.y, x_2052.z, x_2052.w);
          let x_2054 : vec4<f32> = u_xlat12;
          let x_2056 : i32 = u_xlati11;
          let x_2059 : i32 = u_xlati11;
          let x_2063 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_2056 + 3i) / 4i)][((x_2059 + 3i) % 4i)];
          let x_2065 : vec2<f32> = (vec2<f32>(x_2054.x, x_2054.y) + vec2<f32>(x_2063.x, x_2063.y));
          let x_2066 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2065.x, x_2065.y, x_2066.z, x_2066.w);
          let x_2068 : vec4<f32> = u_xlat12;
          let x_2071 : vec2<f32> = ((vec2<f32>(x_2068.x, x_2068.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2072 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2071.x, x_2071.y, x_2072.z, x_2072.w);
          let x_2074 : vec4<f32> = u_xlat12;
          let x_2076 : vec2<f32> = fract(vec2<f32>(x_2074.x, x_2074.y));
          let x_2077 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2077.w);
          let x_2079 : i32 = u_xlati34;
          let x_2081 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[x_2079];
          let x_2083 : vec4<f32> = u_xlat12;
          let x_2086 : i32 = u_xlati34;
          let x_2088 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[x_2086];
          let x_2090 : vec2<f32> = ((vec2<f32>(x_2081.x, x_2081.y) * vec2<f32>(x_2083.x, x_2083.y)) + vec2<f32>(x_2088.z, x_2088.w));
          let x_2091 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2090.x, x_2090.y, x_2091.z);
        } else {
          let x_2094 : vec3<f32> = vs_TEXCOORD7;
          let x_2096 : i32 = u_xlati11;
          let x_2099 : i32 = u_xlati11;
          let x_2103 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_2096 + 1i) / 4i)][((x_2099 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2094.y, x_2094.y, x_2094.y, x_2094.y) * x_2103);
          let x_2105 : i32 = u_xlati11;
          let x_2107 : i32 = u_xlati11;
          let x_2110 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_2105 / 4i)][(x_2107 % 4i)];
          let x_2111 : vec3<f32> = vs_TEXCOORD7;
          let x_2114 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2110 * vec4<f32>(x_2111.x, x_2111.x, x_2111.x, x_2111.x)) + x_2114);
          let x_2116 : i32 = u_xlati11;
          let x_2119 : i32 = u_xlati11;
          let x_2123 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_2116 + 2i) / 4i)][((x_2119 + 2i) % 4i)];
          let x_2124 : vec3<f32> = vs_TEXCOORD7;
          let x_2127 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2123 * vec4<f32>(x_2124.z, x_2124.z, x_2124.z, x_2124.z)) + x_2127);
          let x_2129 : vec4<f32> = u_xlat12;
          let x_2130 : i32 = u_xlati11;
          let x_2133 : i32 = u_xlati11;
          let x_2137 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_2130 + 3i) / 4i)][((x_2133 + 3i) % 4i)];
          u_xlat12 = (x_2129 + x_2137);
          let x_2139 : vec4<f32> = u_xlat12;
          let x_2141 : vec4<f32> = u_xlat12;
          let x_2143 : vec3<f32> = (vec3<f32>(x_2139.x, x_2139.y, x_2139.z) / vec3<f32>(x_2141.w, x_2141.w, x_2141.w));
          let x_2144 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
          let x_2146 : vec4<f32> = u_xlat12;
          let x_2148 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2146.x, x_2146.y, x_2146.z), vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
          let x_2151 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2151);
          let x_2153 : f32 = u_xlat51;
          let x_2155 : vec4<f32> = u_xlat12;
          let x_2157 : vec3<f32> = (vec3<f32>(x_2153, x_2153, x_2153) * vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
          let x_2158 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
          let x_2160 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2160.x, x_2160.y, x_2160.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2165 : f32 = u_xlat51;
          u_xlat51 = max(x_2165, 0.00000099999999747524f);
          let x_2168 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2168);
          let x_2170 : f32 = u_xlat51;
          let x_2172 : vec4<f32> = u_xlat12;
          let x_2174 : vec3<f32> = (vec3<f32>(x_2170, x_2170, x_2170) * vec3<f32>(x_2172.z, x_2172.x, x_2172.y));
          let x_2175 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
          let x_2178 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2178);
          let x_2182 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2182, 0.0f, 1.0f);
          let x_2185 : vec4<f32> = u_xlat13;
          let x_2187 : vec4<bool> = (vec4<f32>(x_2185.y, x_2185.y, x_2185.y, x_2185.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2188 : vec2<bool> = vec2<bool>(x_2187.x, x_2187.w);
          let x_2189 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2188.x, x_2189.y, x_2189.z, x_2188.y);
          let x_2192 : bool = u_xlatb11.x;
          if (x_2192) {
            let x_2197 : f32 = u_xlat13.x;
            x_2193 = x_2197;
          } else {
            let x_2200 : f32 = u_xlat13.x;
            x_2193 = -(x_2200);
          }
          let x_2202 : f32 = x_2193;
          u_xlat11.x = x_2202;
          let x_2205 : bool = u_xlatb11.w;
          if (x_2205) {
            let x_2210 : f32 = u_xlat13.x;
            x_2206 = x_2210;
          } else {
            let x_2213 : f32 = u_xlat13.x;
            x_2206 = -(x_2213);
          }
          let x_2215 : f32 = x_2206;
          u_xlat11.w = x_2215;
          let x_2217 : vec4<f32> = u_xlat12;
          let x_2219 : f32 = u_xlat51;
          let x_2222 : vec4<f32> = u_xlat11;
          let x_2224 : vec2<f32> = ((vec2<f32>(x_2217.x, x_2217.y) * vec2<f32>(x_2219, x_2219)) + vec2<f32>(x_2222.x, x_2222.w));
          let x_2225 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2224.x, x_2225.y, x_2225.z, x_2224.y);
          let x_2227 : vec4<f32> = u_xlat11;
          let x_2230 : vec2<f32> = ((vec2<f32>(x_2227.x, x_2227.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2231 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2230.x, x_2231.y, x_2231.z, x_2230.y);
          let x_2233 : vec4<f32> = u_xlat11;
          let x_2237 : vec2<f32> = clamp(vec2<f32>(x_2233.x, x_2233.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2238 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2237.x, x_2238.y, x_2238.z, x_2237.y);
          let x_2240 : i32 = u_xlati34;
          let x_2242 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[x_2240];
          let x_2244 : vec4<f32> = u_xlat11;
          let x_2247 : i32 = u_xlati34;
          let x_2249 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[x_2247];
          let x_2251 : vec2<f32> = ((vec2<f32>(x_2242.x, x_2242.y) * vec2<f32>(x_2244.x, x_2244.w)) + vec2<f32>(x_2249.z, x_2249.w));
          let x_2252 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2251.x, x_2251.y, x_2252.z);
        }
      }
      let x_2259 : vec3<f32> = u_xlat25;
      let x_2261 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2259.x, x_2259.y), 0.0f);
      u_xlat11 = x_2261;
      let x_2263 : bool = u_xlatb6.y;
      if (x_2263) {
        let x_2268 : f32 = u_xlat11.w;
        x_2264 = x_2268;
      } else {
        let x_2271 : f32 = u_xlat11.x;
        x_2264 = x_2271;
      }
      let x_2272 : f32 = x_2264;
      u_xlat51 = x_2272;
      let x_2274 : bool = u_xlatb6.x;
      if (x_2274) {
        let x_2278 : vec4<f32> = u_xlat11;
        x_2275 = vec3<f32>(x_2278.x, x_2278.y, x_2278.z);
      } else {
        let x_2281 : f32 = u_xlat51;
        x_2275 = vec3<f32>(x_2281, x_2281, x_2281);
      }
      let x_2283 : vec3<f32> = x_2275;
      let x_2284 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2290 : vec4<f32> = u_xlat11;
    let x_2292 : i32 = u_xlati34;
    let x_2294 : vec4<f32> = x_1616.x_AdditionalLightsColor[x_2292];
    let x_2296 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
    let x_2297 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
    let x_2299 : f32 = u_xlat48;
    let x_2300 : f32 = u_xlat50;
    u_xlat34.x = (x_2299 * x_2300);
    let x_2303 : vec4<f32> = u_xlat1;
    let x_2305 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2303.x, x_2303.y, x_2303.z), vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2308, 0.0f, 1.0f);
    let x_2310 : f32 = u_xlat48;
    let x_2312 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2310 * x_2312);
    let x_2315 : vec2<f32> = u_xlat34;
    let x_2317 : vec4<f32> = u_xlat11;
    let x_2319 : vec3<f32> = (vec3<f32>(x_2315.x, x_2315.x, x_2315.x) * vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
    let x_2322 : vec4<f32> = u_xlat9;
    let x_2324 : f32 = u_xlat49;
    let x_2327 : vec4<f32> = u_xlat7;
    let x_2329 : vec3<f32> = ((vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2324, x_2324, x_2324)) + vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
    let x_2332 : vec4<f32> = u_xlat9;
    let x_2334 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2332.x, x_2332.y, x_2332.z), vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
    let x_2339 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2339, 1.17549435e-38f);
    let x_2343 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2343);
    let x_2346 : vec2<f32> = u_xlat34;
    let x_2348 : vec4<f32> = u_xlat9;
    let x_2350 : vec3<f32> = (vec3<f32>(x_2346.x, x_2346.x, x_2346.x) * vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
    let x_2351 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
    let x_2353 : vec4<f32> = u_xlat1;
    let x_2355 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2353.x, x_2353.y, x_2353.z), vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
    let x_2360 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2360, 0.0f, 1.0f);
    let x_2363 : vec4<f32> = u_xlat10;
    let x_2365 : vec4<f32> = u_xlat9;
    u_xlat34.y = dot(vec3<f32>(x_2363.x, x_2363.y, x_2363.z), vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
    let x_2370 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2370, 0.0f, 1.0f);
    let x_2373 : vec2<f32> = u_xlat34;
    let x_2374 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2373 * x_2374);
    let x_2377 : f32 = u_xlat34.x;
    let x_2379 : f32 = u_xlat0.x;
    u_xlat34.x = ((x_2377 * x_2379) + 1.00001001358032226562f);
    let x_2384 : f32 = u_xlat34.x;
    let x_2386 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2384 * x_2386);
    let x_2390 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2390, 0.10000000149011611938f);
    let x_2392 : f32 = u_xlat48;
    let x_2394 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2392 * x_2394);
    let x_2397 : f32 = u_xlat46;
    let x_2399 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2397 * x_2399);
    let x_2402 : f32 = u_xlat44;
    let x_2404 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2402 / x_2404);
    let x_2407 : vec4<f32> = u_xlat4;
    let x_2409 : vec2<f32> = u_xlat34;
    let x_2412 : vec3<f32> = u_xlat17;
    let x_2413 : vec3<f32> = ((vec3<f32>(x_2407.x, x_2407.y, x_2407.z) * vec3<f32>(x_2409.x, x_2409.x, x_2409.x)) + x_2412);
    let x_2414 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
    let x_2416 : vec4<f32> = u_xlat9;
    let x_2418 : vec4<f32> = u_xlat11;
    let x_2421 : vec4<f32> = u_xlat8;
    let x_2423 : vec3<f32> = ((vec3<f32>(x_2416.x, x_2416.y, x_2416.z) * vec3<f32>(x_2418.x, x_2418.y, x_2418.z)) + vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
    let x_2424 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);

    continuing {
      let x_2426 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2426 + bitcast<u32>(1i));
    }
  }
  let x_2428 : vec4<f32> = u_xlat2;
  let x_2430 : f32 = u_xlat14;
  let x_2433 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_2428.x, x_2428.y, x_2428.z) * vec3<f32>(x_2430, x_2430, x_2430)) + vec3<f32>(x_2433.x, x_2433.z, x_2433.w));
  let x_2436 : vec4<f32> = u_xlat8;
  let x_2438 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2436.x, x_2436.y, x_2436.z) + x_2438);
  let x_2440 : f32 = u_xlat42;
  let x_2442 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2440, x_2440, x_2440) * x_2442);
  let x_2444 : f32 = u_xlat43;
  let x_2445 : f32 = u_xlat43;
  u_xlat42 = (x_2444 * -(x_2445));
  let x_2448 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2448);
  let x_2452 : vec3<f32> = u_xlat0;
  let x_2453 : f32 = u_xlat42;
  let x_2455 : vec3<f32> = (x_2452 * vec3<f32>(x_2453, x_2453, x_2453));
  let x_2456 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


