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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_876 : UnityPerDraw;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1036 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1119 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_1621 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1068 : f32;
  var x_1186 : f32;
  var x_1197 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1759 : f32;
  var x_1769 : f32;
  var txVec1 : vec3<f32>;
  var x_2198 : f32;
  var x_2211 : f32;
  var x_2269 : f32;
  var x_2280 : vec3<f32>;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb43;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_277 : f32 = u_xlat43;
  u_xlat43 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat43;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_358 : vec4<f32> = vs_TEXCOORD1;
  let x_361 : f32 = x_111.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_358.x, x_358.y), x_361);
  let x_363 : vec3<f32> = vec3<f32>(x_362.x, x_362.y, x_362.w);
  let x_364 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = u_xlat6.x;
  let x_369 : f32 = u_xlat6.z;
  u_xlat6.x = (x_367 * x_369);
  let x_372 : vec4<f32> = u_xlat6;
  let x_377 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_385 : f32 = u_xlat43;
  u_xlat43 = min(x_385, 1.0f);
  let x_387 : f32 = u_xlat43;
  u_xlat43 = (-(x_387) + 1.0f);
  let x_390 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_390);
  let x_392 : f32 = u_xlat43;
  u_xlat7.z = max(x_392, 0.0000000000000001f);
  let x_396 : vec4<f32> = u_xlat6;
  let x_399 : f32 = x_13.x_NormalScale0;
  let x_401 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_399, x_399));
  let x_402 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_408 : vec4<f32> = vs_TEXCOORD1;
  let x_411 : f32 = x_111.x_GlobalMipBias.x;
  let x_412 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_408.z, x_408.w), x_411);
  let x_413 : vec3<f32> = vec3<f32>(x_412.x, x_412.y, x_412.w);
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat6.x;
  let x_419 : f32 = u_xlat6.z;
  u_xlat6.x = (x_417 * x_419);
  let x_422 : vec4<f32> = u_xlat6;
  let x_425 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  let x_430 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_428.x, x_428.y), vec2<f32>(x_430.x, x_430.y));
  let x_433 : f32 = u_xlat43;
  u_xlat43 = min(x_433, 1.0f);
  let x_435 : f32 = u_xlat43;
  u_xlat43 = (-(x_435) + 1.0f);
  let x_438 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_438);
  let x_440 : f32 = u_xlat43;
  u_xlat8.z = max(x_440, 0.0000000000000001f);
  let x_443 : vec4<f32> = u_xlat6;
  let x_447 : f32 = x_13.x_NormalScale1;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_450 : vec2<f32> = vec2<f32>(x_447, x_449);
  let x_454 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_450.x, x_450.y));
  let x_455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat8;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.y, x_457.y, x_457.y) * vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = u_xlat6;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.x, x_464.x) * vec3<f32>(x_466.x, x_466.y, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_478 : vec4<f32> = vs_TEXCOORD2;
  let x_481 : f32 = x_111.x_GlobalMipBias.x;
  let x_482 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_478.x, x_478.y), x_481);
  let x_483 : vec3<f32> = vec3<f32>(x_482.x, x_482.y, x_482.w);
  let x_484 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : f32 = u_xlat7.x;
  let x_489 : f32 = u_xlat7.z;
  u_xlat7.x = (x_487 * x_489);
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  let x_500 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_498.x, x_498.y), vec2<f32>(x_500.x, x_500.y));
  let x_503 : f32 = u_xlat43;
  u_xlat43 = min(x_503, 1.0f);
  let x_505 : f32 = u_xlat43;
  u_xlat43 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_508);
  let x_510 : f32 = u_xlat43;
  u_xlat8.z = max(x_510, 0.0000000000000001f);
  let x_513 : vec4<f32> = u_xlat7;
  let x_517 : f32 = x_13.x_NormalScale2;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_520 : vec2<f32> = vec2<f32>(x_517, x_519);
  let x_524 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_520.x, x_520.y));
  let x_525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat8;
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.z, x_527.z, x_527.z) * vec3<f32>(x_529.x, x_529.y, x_529.z)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_541 : vec4<f32> = vs_TEXCOORD2;
  let x_544 : f32 = x_111.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_541.z, x_541.w), x_544);
  let x_546 : vec3<f32> = vec3<f32>(x_545.x, x_545.y, x_545.w);
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : f32 = u_xlat7.x;
  let x_552 : f32 = u_xlat7.z;
  u_xlat7.x = (x_550 * x_552);
  let x_555 : vec4<f32> = u_xlat7;
  let x_558 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_561.x, x_561.y), vec2<f32>(x_563.x, x_563.y));
  let x_566 : f32 = u_xlat43;
  u_xlat43 = min(x_566, 1.0f);
  let x_568 : f32 = u_xlat43;
  u_xlat43 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_571);
  let x_573 : f32 = u_xlat43;
  u_xlat8.z = max(x_573, 0.0000000000000001f);
  let x_576 : vec4<f32> = u_xlat7;
  let x_580 : f32 = x_13.x_NormalScale3;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_583 : vec2<f32> = vec2<f32>(x_580, x_582);
  let x_587 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_583.x, x_583.y));
  let x_588 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat8;
  let x_595 : vec4<f32> = u_xlat6;
  let x_597 : vec3<f32> = ((vec3<f32>(x_590.w, x_590.w, x_590.w) * vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_601 : f32 = u_xlat6.z;
  u_xlat6.w = (x_601 + 0.00000999999974737875f);
  let x_605 : vec4<f32> = u_xlat6;
  let x_607 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_605.x, x_605.y, x_605.w), vec3<f32>(x_607.x, x_607.y, x_607.w));
  let x_610 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_610);
  let x_612 : f32 = u_xlat43;
  let x_614 : vec4<f32> = u_xlat6;
  let x_616 : vec3<f32> = (vec3<f32>(x_612, x_612, x_612) * vec3<f32>(x_614.x, x_614.y, x_614.w));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_620;
  let x_623 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_623;
  let x_626 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_626;
  let x_629 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_629;
  let x_632 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_641;
  let x_643 : vec4<f32> = u_xlat7;
  let x_644 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_643 + x_644);
  let x_647 : f32 = u_xlat0.z;
  u_xlat8.x = x_647;
  let x_650 : f32 = u_xlat1.z;
  u_xlat8.y = x_650;
  let x_653 : f32 = u_xlat2.z;
  u_xlat8.z = x_653;
  let x_656 : f32 = u_xlat3.y;
  u_xlat8.w = x_656;
  let x_658 : vec4<f32> = u_xlat9;
  let x_661 : f32 = x_13.x_Smoothness0;
  let x_663 : f32 = x_13.x_Smoothness1;
  let x_665 : f32 = x_13.x_Smoothness2;
  let x_667 : f32 = x_13.x_Smoothness3;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_658) * vec4<f32>(x_661, x_663, x_665, x_667)) + x_670);
  let x_674 : f32 = x_13.x_LayerHasMask0;
  let x_677 : f32 = x_13.x_LayerHasMask1;
  let x_680 : f32 = x_13.x_LayerHasMask2;
  let x_683 : f32 = x_13.x_LayerHasMask3;
  let x_685 : vec4<f32> = u_xlat8;
  let x_687 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_674, x_677, x_680, x_683) * x_685) + x_687);
  let x_690 : vec4<f32> = u_xlat4;
  let x_691 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_690, x_691);
  let x_694 : f32 = u_xlat0.x;
  u_xlat8.x = x_694;
  let x_697 : f32 = u_xlat1.x;
  u_xlat8.y = x_697;
  let x_700 : f32 = u_xlat2.x;
  u_xlat8.z = x_700;
  let x_703 : f32 = u_xlat3.x;
  u_xlat8.w = x_703;
  let x_705 : vec4<f32> = u_xlat8;
  let x_708 : f32 = x_13.x_Metallic0;
  let x_711 : f32 = x_13.x_Metallic1;
  let x_714 : f32 = x_13.x_Metallic2;
  let x_717 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_705 + -(vec4<f32>(x_708, x_711, x_714, x_717)));
  let x_722 : f32 = x_13.x_LayerHasMask0;
  let x_724 : f32 = x_13.x_LayerHasMask1;
  let x_726 : f32 = x_13.x_LayerHasMask2;
  let x_728 : f32 = x_13.x_LayerHasMask3;
  let x_730 : vec4<f32> = u_xlat8;
  let x_733 : f32 = x_13.x_Metallic0;
  let x_735 : f32 = x_13.x_Metallic1;
  let x_737 : f32 = x_13.x_Metallic2;
  let x_739 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_722, x_724, x_726, x_728) * x_730) + vec4<f32>(x_733, x_735, x_737, x_739));
  let x_742 : vec4<f32> = u_xlat4;
  let x_743 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_742, x_743);
  let x_747 : f32 = u_xlat0.y;
  u_xlat3.x = x_747;
  let x_750 : f32 = u_xlat1.y;
  u_xlat3.y = x_750;
  let x_753 : f32 = u_xlat2.y;
  u_xlat3.z = x_753;
  let x_755 : vec4<f32> = u_xlat7;
  let x_757 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_755) + x_757);
  let x_760 : f32 = x_13.x_LayerHasMask0;
  let x_762 : f32 = x_13.x_LayerHasMask1;
  let x_764 : f32 = x_13.x_LayerHasMask2;
  let x_766 : f32 = x_13.x_LayerHasMask3;
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_760, x_762, x_764, x_766) * x_768) + x_770);
  let x_773 : vec4<f32> = u_xlat4;
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_773, x_774);
  let x_776 : vec4<f32> = u_xlat6;
  let x_779 : vec4<f32> = vs_TEXCOORD5;
  let x_781 : vec3<f32> = (vec3<f32>(x_776.y, x_776.y, x_776.y) * vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat6;
  let x_787 : vec4<f32> = vs_TEXCOORD4;
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.x, x_784.x) * -(vec3<f32>(x_787.x, x_787.y, x_787.z))) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD3;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_796.z, x_796.z, x_796.z) * vec3<f32>(x_799.x, x_799.y, x_799.z)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat1;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_812);
  let x_814 : f32 = u_xlat43;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = (vec3<f32>(x_814, x_814, x_814) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_825 : f32 = vs_TEXCOORD7.y;
  let x_827 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_825 * x_827);
  let x_831 : f32 = x_111.unity_MatrixV[0i].z;
  let x_833 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_831 * x_833) + x_836);
  let x_840 : f32 = x_111.unity_MatrixV[2i].z;
  let x_842 : f32 = vs_TEXCOORD7.z;
  let x_845 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = u_xlat2.x;
  let x_851 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_849 + x_851);
  let x_855 : f32 = u_xlat2.x;
  let x_858 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_855) + -(x_858));
  let x_863 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_863, 0.0f);
  let x_867 : f32 = u_xlat2.x;
  let x_869 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_867 * x_869);
  u_xlat1.w = 1.0f;
  let x_878 : vec4<f32> = x_876.unity_SHAr;
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_878, x_879);
  let x_883 : vec4<f32> = x_876.unity_SHAg;
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_883, x_884);
  let x_888 : vec4<f32> = x_876.unity_SHAb;
  let x_889 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_888, x_889);
  let x_892 : vec4<f32> = u_xlat1;
  let x_894 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_892.y, x_892.z, x_892.z, x_892.x) * vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.z));
  let x_898 : vec4<f32> = x_876.unity_SHBr;
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_898, x_899);
  let x_903 : vec4<f32> = x_876.unity_SHBg;
  let x_904 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_903, x_904);
  let x_908 : vec4<f32> = x_876.unity_SHBb;
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_908, x_909);
  let x_913 : f32 = u_xlat1.y;
  let x_915 : f32 = u_xlat1.y;
  u_xlat43 = (x_913 * x_915);
  let x_918 : f32 = u_xlat1.x;
  let x_920 : f32 = u_xlat1.x;
  let x_922 : f32 = u_xlat43;
  u_xlat43 = ((x_918 * x_920) + -(x_922));
  let x_928 : vec4<f32> = x_876.unity_SHC;
  let x_930 : f32 = u_xlat43;
  let x_933 : vec4<f32> = u_xlat6;
  u_xlat16 = ((vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930, x_930, x_930)) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec3<f32> = u_xlat16;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_936 + vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_940, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_944 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_944) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_949 : f32 = u_xlat28;
  let x_950 : f32 = u_xlat43;
  u_xlat3.x = (x_949 + -(x_950));
  let x_955 : f32 = u_xlat43;
  let x_957 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat5;
  let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_965 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec3<f32> = u_xlat0;
  let x_969 : vec4<f32> = u_xlat4;
  let x_974 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.x, x_967.x) * vec3<f32>(x_969.x, x_969.y, x_969.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_975 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : f32 = u_xlat28;
  u_xlat0.x = (-(x_977) + 1.0f);
  let x_982 : f32 = u_xlat0.x;
  let x_984 : f32 = u_xlat0.x;
  u_xlat28 = (x_982 * x_984);
  let x_986 : f32 = u_xlat28;
  u_xlat28 = max(x_986, 0.0078125f);
  let x_989 : f32 = u_xlat28;
  let x_990 : f32 = u_xlat28;
  u_xlat43 = (x_989 * x_990);
  let x_993 : f32 = u_xlat3.x;
  u_xlat3.x = (x_993 + 1.0f);
  let x_997 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_997, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat28;
  u_xlat46 = ((x_1001 * 4.0f) + 2.0f);
  let x_1004 : f32 = u_xlat14;
  u_xlat14 = min(x_1004, 1.0f);
  let x_1009 : vec4<f32> = vs_TEXCOORD8;
  let x_1010 : vec2<f32> = vec2<f32>(x_1009.x, x_1009.y);
  let x_1012 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1010.x, x_1010.y, x_1012);
  let x_1024 : vec3<f32> = txVec0;
  let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
  u_xlat5.x = x_1026;
  let x_1038 : f32 = x_1036.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1038) + 1.0f);
  let x_1043 : f32 = u_xlat5.x;
  let x_1045 : f32 = x_1036.x_MainLightShadowParams.x;
  let x_1048 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1043 * x_1045) + x_1048);
  let x_1053 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1053);
  let x_1059 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_1059 >= 1.0f);
  let x_1063 : bool = u_xlatb33.x;
  let x_1064 : bool = u_xlatb19;
  u_xlatb19 = (x_1063 | x_1064);
  let x_1066 : bool = u_xlatb19;
  if (x_1066) {
    x_1068 = 1.0f;
  } else {
    let x_1073 : f32 = u_xlat5.x;
    x_1068 = x_1073;
  }
  let x_1074 : f32 = x_1068;
  u_xlat5.x = x_1074;
  let x_1076 : vec3<f32> = vs_TEXCOORD7;
  let x_1079 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1076 + -(x_1079));
  let x_1082 : vec3<f32> = u_xlat19;
  let x_1083 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1082, x_1083);
  let x_1089 : f32 = u_xlat19.x;
  let x_1091 : f32 = x_1036.x_MainLightShadowParams.z;
  let x_1094 : f32 = x_1036.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_1089 * x_1091) + x_1094);
  let x_1098 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1098, 0.0f, 1.0f);
  let x_1103 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1103) + 1.0f);
  let x_1107 : f32 = u_xlat33.x;
  let x_1108 : f32 = u_xlat47;
  let x_1111 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1107 * x_1108) + x_1111);
  let x_1121 : f32 = x_1119.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_1121 == -1.0f));
  let x_1125 : bool = u_xlatb33.x;
  if (x_1125) {
    let x_1128 : vec3<f32> = vs_TEXCOORD7;
    let x_1131 : vec4<f32> = x_1119.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_1128.y, x_1128.y) * vec2<f32>(x_1131.x, x_1131.y));
    let x_1135 : vec4<f32> = x_1119.x_MainLightWorldToLight[0i];
    let x_1137 : vec3<f32> = vs_TEXCOORD7;
    let x_1140 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1137.x, x_1137.x)) + x_1140);
    let x_1143 : vec4<f32> = x_1119.x_MainLightWorldToLight[2i];
    let x_1145 : vec3<f32> = vs_TEXCOORD7;
    let x_1148 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1145.z, x_1145.z)) + x_1148);
    let x_1150 : vec2<f32> = u_xlat33;
    let x_1152 : vec4<f32> = x_1119.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_1150 + vec2<f32>(x_1152.x, x_1152.y));
    let x_1155 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_1155 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1163 : vec2<f32> = u_xlat33;
    let x_1165 : f32 = x_111.x_GlobalMipBias.x;
    let x_1166 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1163, x_1165);
    u_xlat6 = x_1166;
    let x_1168 : f32 = x_1119.x_MainLightCookieTextureFormat;
    let x_1170 : f32 = x_1119.x_MainLightCookieTextureFormat;
    let x_1172 : f32 = x_1119.x_MainLightCookieTextureFormat;
    let x_1174 : f32 = x_1119.x_MainLightCookieTextureFormat;
    let x_1175 : vec4<f32> = vec4<f32>(x_1168, x_1170, x_1172, x_1174);
    let x_1182 : vec4<bool> = (vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_1182.x, x_1182.y);
    let x_1185 : bool = u_xlatb33.y;
    if (x_1185) {
      let x_1190 : f32 = u_xlat6.w;
      x_1186 = x_1190;
    } else {
      let x_1193 : f32 = u_xlat6.x;
      x_1186 = x_1193;
    }
    let x_1194 : f32 = x_1186;
    u_xlat47 = x_1194;
    let x_1196 : bool = u_xlatb33.x;
    if (x_1196) {
      let x_1200 : vec4<f32> = u_xlat6;
      x_1197 = vec3<f32>(x_1200.x, x_1200.y, x_1200.z);
    } else {
      let x_1203 : f32 = u_xlat47;
      x_1197 = vec3<f32>(x_1203, x_1203, x_1203);
    }
    let x_1205 : vec3<f32> = x_1197;
    let x_1206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1212 : vec4<f32> = u_xlat6;
  let x_1215 : vec4<f32> = x_111.x_MainLightColor;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1221 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1221;
  let x_1224 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1224;
  let x_1227 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1227;
  let x_1229 : vec4<f32> = u_xlat7;
  let x_1232 : vec4<f32> = u_xlat1;
  u_xlat33.x = dot(-(vec3<f32>(x_1229.x, x_1229.y, x_1229.z)), vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1237 : f32 = u_xlat33.x;
  let x_1239 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1237 + x_1239);
  let x_1242 : vec4<f32> = u_xlat1;
  let x_1244 : vec2<f32> = u_xlat33;
  let x_1248 : vec4<f32> = u_xlat7;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * -(vec3<f32>(x_1244.x, x_1244.x, x_1244.x))) + -(vec3<f32>(x_1248.x, x_1248.y, x_1248.z)));
  let x_1252 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat1;
  let x_1256 : vec4<f32> = u_xlat7;
  u_xlat33.x = dot(vec3<f32>(x_1254.x, x_1254.y, x_1254.z), vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1261 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1261, 0.0f, 1.0f);
  let x_1265 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_1265) + 1.0f);
  let x_1270 : f32 = u_xlat33.x;
  let x_1272 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1270 * x_1272);
  let x_1276 : f32 = u_xlat33.x;
  let x_1278 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1276 * x_1278);
  let x_1282 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1282) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1289 : f32 = u_xlat0.x;
  let x_1290 : f32 = u_xlat47;
  u_xlat0.x = (x_1289 * x_1290);
  let x_1294 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1294 * 6.0f);
  let x_1306 : vec4<f32> = u_xlat8;
  let x_1309 : f32 = u_xlat0.x;
  let x_1310 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1306.x, x_1306.y, x_1306.z), x_1309);
  u_xlat8 = x_1310;
  let x_1312 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1312 + -1.0f);
  let x_1316 : f32 = x_876.unity_SpecCube0_HDR.w;
  let x_1318 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1316 * x_1318) + 1.0f);
  let x_1323 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1323, 0.0f);
  let x_1327 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1327);
  let x_1331 : f32 = u_xlat0.x;
  let x_1333 : f32 = x_876.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1331 * x_1333);
  let x_1337 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1337);
  let x_1341 : f32 = u_xlat0.x;
  let x_1343 : f32 = x_876.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1341 * x_1343);
  let x_1346 : vec4<f32> = u_xlat8;
  let x_1348 : vec3<f32> = u_xlat0;
  let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348.x, x_1348.x, x_1348.x));
  let x_1351 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1353 : f32 = u_xlat28;
  let x_1355 : f32 = u_xlat28;
  let x_1359 : vec2<f32> = ((vec2<f32>(x_1353, x_1353) * vec2<f32>(x_1355, x_1355)) + vec2<f32>(-1.0f, 1.0f));
  let x_1360 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1359.x, x_1360.y, x_1359.y);
  let x_1363 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1363);
  let x_1365 : vec4<f32> = u_xlat4;
  let x_1368 : vec4<f32> = u_xlat3;
  let x_1370 : vec3<f32> = (-(vec3<f32>(x_1365.x, x_1365.y, x_1365.z)) + vec3<f32>(x_1368.x, x_1368.x, x_1368.x));
  let x_1371 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
  let x_1373 : vec2<f32> = u_xlat33;
  let x_1375 : vec4<f32> = u_xlat9;
  let x_1378 : vec4<f32> = u_xlat4;
  let x_1380 : vec3<f32> = ((vec3<f32>(x_1373.x, x_1373.x, x_1373.x) * vec3<f32>(x_1375.x, x_1375.y, x_1375.z)) + vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : f32 = u_xlat28;
  let x_1385 : vec4<f32> = u_xlat9;
  let x_1387 : vec3<f32> = (vec3<f32>(x_1383, x_1383, x_1383) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
  let x_1390 : vec4<f32> = u_xlat8;
  let x_1392 : vec4<f32> = u_xlat9;
  let x_1394 : vec3<f32> = (vec3<f32>(x_1390.x, x_1390.y, x_1390.z) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1397 : vec3<f32> = u_xlat16;
  let x_1398 : vec3<f32> = u_xlat17;
  let x_1400 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1397 * x_1398) + vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1404 : f32 = u_xlat5.x;
  let x_1406 : f32 = x_876.unity_LightData.z;
  u_xlat28 = (x_1404 * x_1406);
  let x_1408 : vec4<f32> = u_xlat1;
  let x_1411 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1408.x, x_1408.y, x_1408.z), vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
  let x_1416 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1416, 0.0f, 1.0f);
  let x_1419 : f32 = u_xlat28;
  let x_1421 : f32 = u_xlat3.x;
  u_xlat28 = (x_1419 * x_1421);
  let x_1423 : f32 = u_xlat28;
  let x_1425 : vec4<f32> = u_xlat6;
  let x_1427 : vec3<f32> = (vec3<f32>(x_1423, x_1423, x_1423) * vec3<f32>(x_1425.x, x_1425.y, x_1425.z));
  let x_1428 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1427.x, x_1428.y, x_1427.y, x_1427.z);
  let x_1430 : vec4<f32> = u_xlat7;
  let x_1433 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1435 : vec3<f32> = (vec3<f32>(x_1430.x, x_1430.y, x_1430.z) + vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1438 : vec4<f32> = u_xlat6;
  let x_1440 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1438.x, x_1438.y, x_1438.z), vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
  let x_1443 : f32 = u_xlat28;
  u_xlat28 = max(x_1443, 1.17549435e-38f);
  let x_1446 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1446);
  let x_1448 : f32 = u_xlat28;
  let x_1450 : vec4<f32> = u_xlat6;
  let x_1452 : vec3<f32> = (vec3<f32>(x_1448, x_1448, x_1448) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
  let x_1455 : vec4<f32> = u_xlat1;
  let x_1457 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1455.x, x_1455.y, x_1455.z), vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
  let x_1460 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1460, 0.0f, 1.0f);
  let x_1463 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1465 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1463.x, x_1463.y, x_1463.z), vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
  let x_1470 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1470, 0.0f, 1.0f);
  let x_1473 : f32 = u_xlat28;
  let x_1474 : f32 = u_xlat28;
  u_xlat28 = (x_1473 * x_1474);
  let x_1476 : f32 = u_xlat28;
  let x_1478 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1476 * x_1478) + 1.00001001358032226562f);
  let x_1483 : f32 = u_xlat3.x;
  let x_1485 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1483 * x_1485);
  let x_1488 : f32 = u_xlat28;
  let x_1489 : f32 = u_xlat28;
  u_xlat28 = (x_1488 * x_1489);
  let x_1492 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1492, 0.10000000149011611938f);
  let x_1496 : f32 = u_xlat28;
  let x_1498 : f32 = u_xlat3.x;
  u_xlat28 = (x_1496 * x_1498);
  let x_1500 : f32 = u_xlat46;
  let x_1501 : f32 = u_xlat28;
  u_xlat28 = (x_1500 * x_1501);
  let x_1503 : f32 = u_xlat43;
  let x_1504 : f32 = u_xlat28;
  u_xlat28 = (x_1503 / x_1504);
  let x_1506 : vec4<f32> = u_xlat4;
  let x_1508 : f32 = u_xlat28;
  let x_1511 : vec3<f32> = u_xlat17;
  let x_1512 : vec3<f32> = ((vec3<f32>(x_1506.x, x_1506.y, x_1506.z) * vec3<f32>(x_1508, x_1508, x_1508)) + x_1511);
  let x_1513 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
  let x_1515 : vec4<f32> = u_xlat5;
  let x_1517 : vec4<f32> = u_xlat6;
  let x_1519 : vec3<f32> = (vec3<f32>(x_1515.x, x_1515.z, x_1515.w) * vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
  let x_1520 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1519.x, x_1520.y, x_1519.y, x_1519.z);
  let x_1523 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1525 : f32 = x_876.unity_LightData.y;
  u_xlat28 = min(x_1523, x_1525);
  let x_1529 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1529));
  let x_1533 : f32 = u_xlat19.x;
  let x_1535 : f32 = x_1036.x_AdditionalShadowFadeParams.x;
  let x_1538 : f32 = x_1036.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1533 * x_1535) + x_1538);
  let x_1542 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1542, 0.0f, 1.0f);
  let x_1547 : f32 = x_1119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1549 : f32 = x_1119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1551 : f32 = x_1119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1553 : f32 = x_1119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1554 : vec4<f32> = vec4<f32>(x_1547, x_1549, x_1551, x_1553);
  let x_1561 : vec4<bool> = (vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1554.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1561.x, x_1561.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1573 : u32 = u_xlatu_loop_1;
    let x_1574 : u32 = u_xlatu28;
    if ((x_1573 < x_1574)) {
    } else {
      break;
    }
    let x_1577 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1577 >> 2u);
    let x_1581 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1581 & 3u));
    let x_1585 : u32 = u_xlatu34;
    let x_1588 : vec4<f32> = x_876.unity_LightIndices[bitcast<i32>(x_1585)];
    let x_1598 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1603 : vec4<u32> = indexable[x_1598];
    u_xlat34.x = dot(x_1588, bitcast<vec4<f32>>(x_1603));
    let x_1609 : f32 = u_xlat34.x;
    u_xlati34 = i32(x_1609);
    let x_1611 : vec3<f32> = vs_TEXCOORD7;
    let x_1622 : i32 = u_xlati34;
    let x_1624 : vec4<f32> = x_1621.x_AdditionalLightsPosition[x_1622];
    let x_1627 : i32 = u_xlati34;
    let x_1629 : vec4<f32> = x_1621.x_AdditionalLightsPosition[x_1627];
    let x_1631 : vec3<f32> = ((-(x_1611) * vec3<f32>(x_1624.w, x_1624.w, x_1624.w)) + vec3<f32>(x_1629.x, x_1629.y, x_1629.z));
    let x_1632 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1631.x, x_1631.y, x_1631.z, x_1632.w);
    let x_1635 : vec4<f32> = u_xlat9;
    let x_1637 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1635.x, x_1635.y, x_1635.z), vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
    let x_1640 : f32 = u_xlat48;
    u_xlat48 = max(x_1640, 0.00006103515625f);
    let x_1643 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1643);
    let x_1645 : f32 = u_xlat49;
    let x_1647 : vec4<f32> = u_xlat9;
    let x_1649 : vec3<f32> = (vec3<f32>(x_1645, x_1645, x_1645) * vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
    let x_1650 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
    let x_1653 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1653);
    let x_1655 : f32 = u_xlat48;
    let x_1656 : i32 = u_xlati34;
    let x_1658 : f32 = x_1621.x_AdditionalLightsAttenuation[x_1656].x;
    u_xlat48 = (x_1655 * x_1658);
    let x_1660 : f32 = u_xlat48;
    let x_1662 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1660) * x_1662) + 1.0f);
    let x_1665 : f32 = u_xlat48;
    u_xlat48 = max(x_1665, 0.0f);
    let x_1667 : f32 = u_xlat48;
    let x_1668 : f32 = u_xlat48;
    u_xlat48 = (x_1667 * x_1668);
    let x_1670 : f32 = u_xlat48;
    let x_1671 : f32 = u_xlat50;
    u_xlat48 = (x_1670 * x_1671);
    let x_1673 : i32 = u_xlati34;
    let x_1675 : vec4<f32> = x_1621.x_AdditionalLightsSpotDir[x_1673];
    let x_1677 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1675.x, x_1675.y, x_1675.z), vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
    let x_1680 : f32 = u_xlat50;
    let x_1681 : i32 = u_xlati34;
    let x_1683 : f32 = x_1621.x_AdditionalLightsAttenuation[x_1681].z;
    let x_1685 : i32 = u_xlati34;
    let x_1687 : f32 = x_1621.x_AdditionalLightsAttenuation[x_1685].w;
    u_xlat50 = ((x_1680 * x_1683) + x_1687);
    let x_1689 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1689, 0.0f, 1.0f);
    let x_1691 : f32 = u_xlat50;
    let x_1692 : f32 = u_xlat50;
    u_xlat50 = (x_1691 * x_1692);
    let x_1694 : f32 = u_xlat48;
    let x_1695 : f32 = u_xlat50;
    u_xlat48 = (x_1694 * x_1695);
    let x_1698 : i32 = u_xlati34;
    let x_1700 : f32 = x_1036.x_AdditionalShadowParams[x_1698].w;
    u_xlati50 = i32(x_1700);
    let x_1703 : i32 = u_xlati50;
    u_xlatb51 = (x_1703 >= 0i);
    let x_1705 : bool = u_xlatb51;
    if (x_1705) {
      let x_1709 : i32 = u_xlati34;
      let x_1711 : f32 = x_1036.x_AdditionalShadowParams[x_1709].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1711, x_1711, x_1711, x_1711))));
      let x_1715 : bool = u_xlatb51;
      if (x_1715) {
        let x_1720 : vec4<f32> = u_xlat10;
        let x_1723 : vec4<f32> = u_xlat10;
        let x_1726 : vec4<bool> = (abs(vec4<f32>(x_1720.z, x_1720.z, x_1720.y, x_1720.z)) >= abs(vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.x)));
        let x_1728 : vec3<bool> = vec3<bool>(x_1726.x, x_1726.y, x_1726.z);
        let x_1729 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
        let x_1732 : bool = u_xlatb11.y;
        let x_1734 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1732 & x_1734);
        let x_1736 : vec4<f32> = u_xlat10;
        let x_1739 : vec4<bool> = (-(vec4<f32>(x_1736.z, x_1736.y, x_1736.z, x_1736.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1740 : vec3<bool> = vec3<bool>(x_1739.x, x_1739.y, x_1739.w);
        let x_1741 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1740.x, x_1740.y, x_1741.z, x_1740.z);
        let x_1744 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1744);
        let x_1749 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1749);
        let x_1755 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1755);
        let x_1758 : bool = u_xlatb11.z;
        if (x_1758) {
          let x_1763 : f32 = u_xlat11.y;
          x_1759 = x_1763;
        } else {
          let x_1765 : f32 = u_xlat52;
          x_1759 = x_1765;
        }
        let x_1766 : f32 = x_1759;
        u_xlat52 = x_1766;
        let x_1768 : bool = u_xlatb51;
        if (x_1768) {
          let x_1773 : f32 = u_xlat11.x;
          x_1769 = x_1773;
        } else {
          let x_1775 : f32 = u_xlat52;
          x_1769 = x_1775;
        }
        let x_1776 : f32 = x_1769;
        u_xlat51 = x_1776;
        let x_1777 : i32 = u_xlati34;
        let x_1779 : f32 = x_1036.x_AdditionalShadowParams[x_1777].w;
        u_xlat52 = trunc(x_1779);
        let x_1781 : f32 = u_xlat51;
        let x_1782 : f32 = u_xlat52;
        u_xlat51 = (x_1781 + x_1782);
        let x_1784 : f32 = u_xlat51;
        u_xlati50 = i32(x_1784);
      }
      let x_1786 : i32 = u_xlati50;
      u_xlati50 = (x_1786 << bitcast<u32>(2i));
      let x_1788 : vec3<f32> = vs_TEXCOORD7;
      let x_1790 : i32 = u_xlati50;
      let x_1793 : i32 = u_xlati50;
      let x_1797 : vec4<f32> = x_1036.x_AdditionalLightsWorldToShadow[((x_1790 + 1i) / 4i)][((x_1793 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1788.y, x_1788.y, x_1788.y, x_1788.y) * x_1797);
      let x_1799 : i32 = u_xlati50;
      let x_1801 : i32 = u_xlati50;
      let x_1804 : vec4<f32> = x_1036.x_AdditionalLightsWorldToShadow[(x_1799 / 4i)][(x_1801 % 4i)];
      let x_1805 : vec3<f32> = vs_TEXCOORD7;
      let x_1808 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1804 * vec4<f32>(x_1805.x, x_1805.x, x_1805.x, x_1805.x)) + x_1808);
      let x_1810 : i32 = u_xlati50;
      let x_1813 : i32 = u_xlati50;
      let x_1817 : vec4<f32> = x_1036.x_AdditionalLightsWorldToShadow[((x_1810 + 2i) / 4i)][((x_1813 + 2i) % 4i)];
      let x_1818 : vec3<f32> = vs_TEXCOORD7;
      let x_1821 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1817 * vec4<f32>(x_1818.z, x_1818.z, x_1818.z, x_1818.z)) + x_1821);
      let x_1823 : vec4<f32> = u_xlat11;
      let x_1824 : i32 = u_xlati50;
      let x_1827 : i32 = u_xlati50;
      let x_1831 : vec4<f32> = x_1036.x_AdditionalLightsWorldToShadow[((x_1824 + 3i) / 4i)][((x_1827 + 3i) % 4i)];
      u_xlat11 = (x_1823 + x_1831);
      let x_1833 : vec4<f32> = u_xlat11;
      let x_1835 : vec4<f32> = u_xlat11;
      let x_1837 : vec3<f32> = (vec3<f32>(x_1833.x, x_1833.y, x_1833.z) / vec3<f32>(x_1835.w, x_1835.w, x_1835.w));
      let x_1838 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
      let x_1841 : vec4<f32> = u_xlat11;
      let x_1842 : vec2<f32> = vec2<f32>(x_1841.x, x_1841.y);
      let x_1844 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
      let x_1852 : vec3<f32> = txVec1;
      let x_1854 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1852.xy, x_1852.z);
      u_xlat50 = x_1854;
      let x_1855 : i32 = u_xlati34;
      let x_1857 : f32 = x_1036.x_AdditionalShadowParams[x_1855].x;
      u_xlat51 = (1.0f + -(x_1857));
      let x_1860 : f32 = u_xlat50;
      let x_1861 : i32 = u_xlati34;
      let x_1863 : f32 = x_1036.x_AdditionalShadowParams[x_1861].x;
      let x_1865 : f32 = u_xlat51;
      u_xlat50 = ((x_1860 * x_1863) + x_1865);
      let x_1868 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1868);
      let x_1872 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1872 >= 1.0f);
      let x_1874 : bool = u_xlatb51;
      let x_1875 : bool = u_xlatb52;
      u_xlatb51 = (x_1874 | x_1875);
      let x_1877 : bool = u_xlatb51;
      let x_1878 : f32 = u_xlat50;
      u_xlat50 = select(x_1878, 1.0f, x_1877);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1881 : f32 = u_xlat50;
    u_xlat51 = (-(x_1881) + 1.0f);
    let x_1885 : f32 = u_xlat3.x;
    let x_1886 : f32 = u_xlat51;
    let x_1888 : f32 = u_xlat50;
    u_xlat50 = ((x_1885 * x_1886) + x_1888);
    let x_1891 : i32 = u_xlati34;
    u_xlati51 = (1i << bitcast<u32>((x_1891 & 31i)));
    let x_1894 : i32 = u_xlati51;
    let x_1897 : f32 = x_1119.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1894) & bitcast<u32>(x_1897)));
    let x_1901 : i32 = u_xlati51;
    if ((x_1901 != 0i)) {
      let x_1905 : i32 = u_xlati34;
      let x_1907 : f32 = x_1119.x_AdditionalLightsLightTypes[x_1905].el;
      u_xlati51 = i32(x_1907);
      let x_1910 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1910 != 0i));
      let x_1914 : i32 = u_xlati34;
      u_xlati11 = (x_1914 << bitcast<u32>(2i));
      let x_1916 : i32 = u_xlati52;
      if ((x_1916 != 0i)) {
        let x_1921 : vec3<f32> = vs_TEXCOORD7;
        let x_1923 : i32 = u_xlati11;
        let x_1926 : i32 = u_xlati11;
        let x_1930 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_1923 + 1i) / 4i)][((x_1926 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1921.y, x_1921.y, x_1921.y) * vec3<f32>(x_1930.x, x_1930.y, x_1930.w));
        let x_1933 : i32 = u_xlati11;
        let x_1935 : i32 = u_xlati11;
        let x_1938 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[(x_1933 / 4i)][(x_1935 % 4i)];
        let x_1940 : vec3<f32> = vs_TEXCOORD7;
        let x_1943 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1938.x, x_1938.y, x_1938.w) * vec3<f32>(x_1940.x, x_1940.x, x_1940.x)) + x_1943);
        let x_1945 : i32 = u_xlati11;
        let x_1948 : i32 = u_xlati11;
        let x_1952 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_1945 + 2i) / 4i)][((x_1948 + 2i) % 4i)];
        let x_1954 : vec3<f32> = vs_TEXCOORD7;
        let x_1957 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1952.x, x_1952.y, x_1952.w) * vec3<f32>(x_1954.z, x_1954.z, x_1954.z)) + x_1957);
        let x_1959 : vec3<f32> = u_xlat25;
        let x_1960 : i32 = u_xlati11;
        let x_1963 : i32 = u_xlati11;
        let x_1967 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_1960 + 3i) / 4i)][((x_1963 + 3i) % 4i)];
        u_xlat25 = (x_1959 + vec3<f32>(x_1967.x, x_1967.y, x_1967.w));
        let x_1970 : vec3<f32> = u_xlat25;
        let x_1972 : vec3<f32> = u_xlat25;
        let x_1974 : vec2<f32> = (vec2<f32>(x_1970.x, x_1970.y) / vec2<f32>(x_1972.z, x_1972.z));
        let x_1975 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1974.x, x_1974.y, x_1975.z);
        let x_1977 : vec3<f32> = u_xlat25;
        let x_1980 : vec2<f32> = ((vec2<f32>(x_1977.x, x_1977.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1981 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1980.x, x_1980.y, x_1981.z);
        let x_1983 : vec3<f32> = u_xlat25;
        let x_1987 : vec2<f32> = clamp(vec2<f32>(x_1983.x, x_1983.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1988 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1987.x, x_1987.y, x_1988.z);
        let x_1990 : i32 = u_xlati34;
        let x_1992 : vec4<f32> = x_1119.x_AdditionalLightsCookieAtlasUVRects[x_1990];
        let x_1994 : vec3<f32> = u_xlat25;
        let x_1997 : i32 = u_xlati34;
        let x_1999 : vec4<f32> = x_1119.x_AdditionalLightsCookieAtlasUVRects[x_1997];
        let x_2001 : vec2<f32> = ((vec2<f32>(x_1992.x, x_1992.y) * vec2<f32>(x_1994.x, x_1994.y)) + vec2<f32>(x_1999.z, x_1999.w));
        let x_2002 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2001.x, x_2001.y, x_2002.z);
      } else {
        let x_2005 : i32 = u_xlati51;
        u_xlatb51 = (x_2005 == 1i);
        let x_2007 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2007);
        let x_2009 : i32 = u_xlati51;
        if ((x_2009 != 0i)) {
          let x_2013 : vec3<f32> = vs_TEXCOORD7;
          let x_2015 : i32 = u_xlati11;
          let x_2018 : i32 = u_xlati11;
          let x_2022 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_2015 + 1i) / 4i)][((x_2018 + 1i) % 4i)];
          let x_2024 : vec2<f32> = (vec2<f32>(x_2013.y, x_2013.y) * vec2<f32>(x_2022.x, x_2022.y));
          let x_2025 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
          let x_2027 : i32 = u_xlati11;
          let x_2029 : i32 = u_xlati11;
          let x_2032 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[(x_2027 / 4i)][(x_2029 % 4i)];
          let x_2034 : vec3<f32> = vs_TEXCOORD7;
          let x_2037 : vec4<f32> = u_xlat12;
          let x_2039 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.y) * vec2<f32>(x_2034.x, x_2034.x)) + vec2<f32>(x_2037.x, x_2037.y));
          let x_2040 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2039.x, x_2039.y, x_2040.z, x_2040.w);
          let x_2042 : i32 = u_xlati11;
          let x_2045 : i32 = u_xlati11;
          let x_2049 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_2042 + 2i) / 4i)][((x_2045 + 2i) % 4i)];
          let x_2051 : vec3<f32> = vs_TEXCOORD7;
          let x_2054 : vec4<f32> = u_xlat12;
          let x_2056 : vec2<f32> = ((vec2<f32>(x_2049.x, x_2049.y) * vec2<f32>(x_2051.z, x_2051.z)) + vec2<f32>(x_2054.x, x_2054.y));
          let x_2057 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2056.x, x_2056.y, x_2057.z, x_2057.w);
          let x_2059 : vec4<f32> = u_xlat12;
          let x_2061 : i32 = u_xlati11;
          let x_2064 : i32 = u_xlati11;
          let x_2068 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_2061 + 3i) / 4i)][((x_2064 + 3i) % 4i)];
          let x_2070 : vec2<f32> = (vec2<f32>(x_2059.x, x_2059.y) + vec2<f32>(x_2068.x, x_2068.y));
          let x_2071 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2070.x, x_2070.y, x_2071.z, x_2071.w);
          let x_2073 : vec4<f32> = u_xlat12;
          let x_2076 : vec2<f32> = ((vec2<f32>(x_2073.x, x_2073.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2077 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2077.w);
          let x_2079 : vec4<f32> = u_xlat12;
          let x_2081 : vec2<f32> = fract(vec2<f32>(x_2079.x, x_2079.y));
          let x_2082 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2081.x, x_2081.y, x_2082.z, x_2082.w);
          let x_2084 : i32 = u_xlati34;
          let x_2086 : vec4<f32> = x_1119.x_AdditionalLightsCookieAtlasUVRects[x_2084];
          let x_2088 : vec4<f32> = u_xlat12;
          let x_2091 : i32 = u_xlati34;
          let x_2093 : vec4<f32> = x_1119.x_AdditionalLightsCookieAtlasUVRects[x_2091];
          let x_2095 : vec2<f32> = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2088.x, x_2088.y)) + vec2<f32>(x_2093.z, x_2093.w));
          let x_2096 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2095.x, x_2095.y, x_2096.z);
        } else {
          let x_2099 : vec3<f32> = vs_TEXCOORD7;
          let x_2101 : i32 = u_xlati11;
          let x_2104 : i32 = u_xlati11;
          let x_2108 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_2101 + 1i) / 4i)][((x_2104 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2099.y, x_2099.y, x_2099.y, x_2099.y) * x_2108);
          let x_2110 : i32 = u_xlati11;
          let x_2112 : i32 = u_xlati11;
          let x_2115 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[(x_2110 / 4i)][(x_2112 % 4i)];
          let x_2116 : vec3<f32> = vs_TEXCOORD7;
          let x_2119 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2115 * vec4<f32>(x_2116.x, x_2116.x, x_2116.x, x_2116.x)) + x_2119);
          let x_2121 : i32 = u_xlati11;
          let x_2124 : i32 = u_xlati11;
          let x_2128 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_2121 + 2i) / 4i)][((x_2124 + 2i) % 4i)];
          let x_2129 : vec3<f32> = vs_TEXCOORD7;
          let x_2132 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2128 * vec4<f32>(x_2129.z, x_2129.z, x_2129.z, x_2129.z)) + x_2132);
          let x_2134 : vec4<f32> = u_xlat12;
          let x_2135 : i32 = u_xlati11;
          let x_2138 : i32 = u_xlati11;
          let x_2142 : vec4<f32> = x_1119.x_AdditionalLightsWorldToLights[((x_2135 + 3i) / 4i)][((x_2138 + 3i) % 4i)];
          u_xlat12 = (x_2134 + x_2142);
          let x_2144 : vec4<f32> = u_xlat12;
          let x_2146 : vec4<f32> = u_xlat12;
          let x_2148 : vec3<f32> = (vec3<f32>(x_2144.x, x_2144.y, x_2144.z) / vec3<f32>(x_2146.w, x_2146.w, x_2146.w));
          let x_2149 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
          let x_2151 : vec4<f32> = u_xlat12;
          let x_2153 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2151.x, x_2151.y, x_2151.z), vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
          let x_2156 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2156);
          let x_2158 : f32 = u_xlat51;
          let x_2160 : vec4<f32> = u_xlat12;
          let x_2162 : vec3<f32> = (vec3<f32>(x_2158, x_2158, x_2158) * vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
          let x_2163 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
          let x_2165 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2165.x, x_2165.y, x_2165.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2170 : f32 = u_xlat51;
          u_xlat51 = max(x_2170, 0.00000099999999747524f);
          let x_2173 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2173);
          let x_2175 : f32 = u_xlat51;
          let x_2177 : vec4<f32> = u_xlat12;
          let x_2179 : vec3<f32> = (vec3<f32>(x_2175, x_2175, x_2175) * vec3<f32>(x_2177.z, x_2177.x, x_2177.y));
          let x_2180 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
          let x_2183 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2183);
          let x_2187 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2187, 0.0f, 1.0f);
          let x_2190 : vec4<f32> = u_xlat13;
          let x_2192 : vec4<bool> = (vec4<f32>(x_2190.y, x_2190.y, x_2190.y, x_2190.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2193 : vec2<bool> = vec2<bool>(x_2192.x, x_2192.w);
          let x_2194 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2193.x, x_2194.y, x_2194.z, x_2193.y);
          let x_2197 : bool = u_xlatb11.x;
          if (x_2197) {
            let x_2202 : f32 = u_xlat13.x;
            x_2198 = x_2202;
          } else {
            let x_2205 : f32 = u_xlat13.x;
            x_2198 = -(x_2205);
          }
          let x_2207 : f32 = x_2198;
          u_xlat11.x = x_2207;
          let x_2210 : bool = u_xlatb11.w;
          if (x_2210) {
            let x_2215 : f32 = u_xlat13.x;
            x_2211 = x_2215;
          } else {
            let x_2218 : f32 = u_xlat13.x;
            x_2211 = -(x_2218);
          }
          let x_2220 : f32 = x_2211;
          u_xlat11.w = x_2220;
          let x_2222 : vec4<f32> = u_xlat12;
          let x_2224 : f32 = u_xlat51;
          let x_2227 : vec4<f32> = u_xlat11;
          let x_2229 : vec2<f32> = ((vec2<f32>(x_2222.x, x_2222.y) * vec2<f32>(x_2224, x_2224)) + vec2<f32>(x_2227.x, x_2227.w));
          let x_2230 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2229.x, x_2230.y, x_2230.z, x_2229.y);
          let x_2232 : vec4<f32> = u_xlat11;
          let x_2235 : vec2<f32> = ((vec2<f32>(x_2232.x, x_2232.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2236 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2235.x, x_2236.y, x_2236.z, x_2235.y);
          let x_2238 : vec4<f32> = u_xlat11;
          let x_2242 : vec2<f32> = clamp(vec2<f32>(x_2238.x, x_2238.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2243 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2242.x, x_2243.y, x_2243.z, x_2242.y);
          let x_2245 : i32 = u_xlati34;
          let x_2247 : vec4<f32> = x_1119.x_AdditionalLightsCookieAtlasUVRects[x_2245];
          let x_2249 : vec4<f32> = u_xlat11;
          let x_2252 : i32 = u_xlati34;
          let x_2254 : vec4<f32> = x_1119.x_AdditionalLightsCookieAtlasUVRects[x_2252];
          let x_2256 : vec2<f32> = ((vec2<f32>(x_2247.x, x_2247.y) * vec2<f32>(x_2249.x, x_2249.w)) + vec2<f32>(x_2254.z, x_2254.w));
          let x_2257 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2256.x, x_2256.y, x_2257.z);
        }
      }
      let x_2264 : vec3<f32> = u_xlat25;
      let x_2266 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2264.x, x_2264.y), 0.0f);
      u_xlat11 = x_2266;
      let x_2268 : bool = u_xlatb6.y;
      if (x_2268) {
        let x_2273 : f32 = u_xlat11.w;
        x_2269 = x_2273;
      } else {
        let x_2276 : f32 = u_xlat11.x;
        x_2269 = x_2276;
      }
      let x_2277 : f32 = x_2269;
      u_xlat51 = x_2277;
      let x_2279 : bool = u_xlatb6.x;
      if (x_2279) {
        let x_2283 : vec4<f32> = u_xlat11;
        x_2280 = vec3<f32>(x_2283.x, x_2283.y, x_2283.z);
      } else {
        let x_2286 : f32 = u_xlat51;
        x_2280 = vec3<f32>(x_2286, x_2286, x_2286);
      }
      let x_2288 : vec3<f32> = x_2280;
      let x_2289 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2295 : vec4<f32> = u_xlat11;
    let x_2297 : i32 = u_xlati34;
    let x_2299 : vec4<f32> = x_1621.x_AdditionalLightsColor[x_2297];
    let x_2301 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) * vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
    let x_2302 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
    let x_2304 : f32 = u_xlat48;
    let x_2305 : f32 = u_xlat50;
    u_xlat34.x = (x_2304 * x_2305);
    let x_2308 : vec4<f32> = u_xlat1;
    let x_2310 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
    let x_2313 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2313, 0.0f, 1.0f);
    let x_2315 : f32 = u_xlat48;
    let x_2317 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2315 * x_2317);
    let x_2320 : vec2<f32> = u_xlat34;
    let x_2322 : vec4<f32> = u_xlat11;
    let x_2324 : vec3<f32> = (vec3<f32>(x_2320.x, x_2320.x, x_2320.x) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
    let x_2327 : vec4<f32> = u_xlat9;
    let x_2329 : f32 = u_xlat49;
    let x_2332 : vec4<f32> = u_xlat7;
    let x_2334 : vec3<f32> = ((vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329, x_2329, x_2329)) + vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
    let x_2335 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
    let x_2337 : vec4<f32> = u_xlat9;
    let x_2339 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2337.x, x_2337.y, x_2337.z), vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
    let x_2344 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2344, 1.17549435e-38f);
    let x_2348 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2348);
    let x_2351 : vec2<f32> = u_xlat34;
    let x_2353 : vec4<f32> = u_xlat9;
    let x_2355 : vec3<f32> = (vec3<f32>(x_2351.x, x_2351.x, x_2351.x) * vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
    let x_2356 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2356.w);
    let x_2358 : vec4<f32> = u_xlat1;
    let x_2360 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2358.x, x_2358.y, x_2358.z), vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
    let x_2365 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2365, 0.0f, 1.0f);
    let x_2368 : vec4<f32> = u_xlat10;
    let x_2370 : vec4<f32> = u_xlat9;
    u_xlat34.y = dot(vec3<f32>(x_2368.x, x_2368.y, x_2368.z), vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
    let x_2375 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2375, 0.0f, 1.0f);
    let x_2378 : vec2<f32> = u_xlat34;
    let x_2379 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2378 * x_2379);
    let x_2382 : f32 = u_xlat34.x;
    let x_2384 : f32 = u_xlat0.x;
    u_xlat34.x = ((x_2382 * x_2384) + 1.00001001358032226562f);
    let x_2389 : f32 = u_xlat34.x;
    let x_2391 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2389 * x_2391);
    let x_2395 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2395, 0.10000000149011611938f);
    let x_2397 : f32 = u_xlat48;
    let x_2399 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2397 * x_2399);
    let x_2402 : f32 = u_xlat46;
    let x_2404 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2402 * x_2404);
    let x_2407 : f32 = u_xlat43;
    let x_2409 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2407 / x_2409);
    let x_2412 : vec4<f32> = u_xlat4;
    let x_2414 : vec2<f32> = u_xlat34;
    let x_2417 : vec3<f32> = u_xlat17;
    let x_2418 : vec3<f32> = ((vec3<f32>(x_2412.x, x_2412.y, x_2412.z) * vec3<f32>(x_2414.x, x_2414.x, x_2414.x)) + x_2417);
    let x_2419 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
    let x_2421 : vec4<f32> = u_xlat9;
    let x_2423 : vec4<f32> = u_xlat11;
    let x_2426 : vec4<f32> = u_xlat8;
    let x_2428 : vec3<f32> = ((vec3<f32>(x_2421.x, x_2421.y, x_2421.z) * vec3<f32>(x_2423.x, x_2423.y, x_2423.z)) + vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
    let x_2429 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);

    continuing {
      let x_2431 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2431 + bitcast<u32>(1i));
    }
  }
  let x_2433 : vec3<f32> = u_xlat16;
  let x_2434 : f32 = u_xlat14;
  let x_2437 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_2433 * vec3<f32>(x_2434, x_2434, x_2434)) + vec3<f32>(x_2437.x, x_2437.z, x_2437.w));
  let x_2440 : vec4<f32> = u_xlat8;
  let x_2442 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2440.x, x_2440.y, x_2440.z) + x_2442);
  let x_2445 : f32 = u_xlat2.x;
  let x_2447 : f32 = u_xlat2.x;
  u_xlat1.x = (x_2445 * -(x_2447));
  let x_2452 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2452);
  let x_2455 : vec3<f32> = u_xlat0;
  let x_2456 : f32 = u_xlat42;
  let x_2460 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_2455 * vec3<f32>(x_2456, x_2456, x_2456)) + -(vec3<f32>(x_2460.x, x_2460.y, x_2460.z)));
  let x_2466 : vec4<f32> = u_xlat1;
  let x_2468 : vec3<f32> = u_xlat0;
  let x_2471 : vec4<f32> = x_111.unity_FogColor;
  let x_2473 : vec3<f32> = ((vec3<f32>(x_2466.x, x_2466.x, x_2466.x) * x_2468) + vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
  let x_2474 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
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


