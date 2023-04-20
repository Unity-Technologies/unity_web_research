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

var<private> u_xlatb44 : bool;

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

@group(1) @binding(2) var<uniform> x_888 : UnityPerDraw;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1048 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1131 : LightCookies;

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

@group(1) @binding(1) var<uniform> x_1633 : AdditionalLights;

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
  var x_1080 : f32;
  var x_1198 : f32;
  var x_1209 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1771 : f32;
  var x_1781 : f32;
  var txVec1 : vec3<f32>;
  var x_2210 : f32;
  var x_2223 : f32;
  var x_2281 : f32;
  var x_2292 : vec3<f32>;
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
  let x_279 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb44;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat43;
  u_xlat43 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat43;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_111.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.z;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec4<f32> = u_xlat6;
  let x_390 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat43;
  u_xlat43 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat43;
  u_xlat43 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_403);
  let x_405 : f32 = u_xlat43;
  u_xlat7.z = max(x_405, 0.0000000000000001f);
  let x_409 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_13.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_111.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat43;
  u_xlat43 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat43;
  u_xlat43 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_451);
  let x_453 : f32 = u_xlat43;
  u_xlat8.z = max(x_453, 0.0000000000000001f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_13.x_NormalScale1;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_111.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat43;
  u_xlat43 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat43;
  u_xlat43 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_520);
  let x_522 : f32 = u_xlat43;
  u_xlat8.z = max(x_522, 0.0000000000000001f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_13.x_NormalScale2;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_111.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat43;
  u_xlat43 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat43;
  u_xlat43 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_583);
  let x_585 : f32 = u_xlat43;
  u_xlat8.z = max(x_585, 0.0000000000000001f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_13.x_NormalScale3;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00000999999974737875f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat43;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_13.x_Smoothness0;
  let x_675 : f32 = x_13.x_Smoothness1;
  let x_677 : f32 = x_13.x_Smoothness2;
  let x_679 : f32 = x_13.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_13.x_LayerHasMask0;
  let x_689 : f32 = x_13.x_LayerHasMask1;
  let x_692 : f32 = x_13.x_LayerHasMask2;
  let x_695 : f32 = x_13.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_13.x_Metallic0;
  let x_723 : f32 = x_13.x_Metallic1;
  let x_726 : f32 = x_13.x_Metallic2;
  let x_729 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_13.x_LayerHasMask0;
  let x_736 : f32 = x_13.x_LayerHasMask1;
  let x_738 : f32 = x_13.x_LayerHasMask2;
  let x_740 : f32 = x_13.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_13.x_Metallic0;
  let x_747 : f32 = x_13.x_Metallic1;
  let x_749 : f32 = x_13.x_Metallic2;
  let x_751 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_13.x_LayerHasMask0;
  let x_774 : f32 = x_13.x_LayerHasMask1;
  let x_776 : f32 = x_13.x_LayerHasMask2;
  let x_778 : f32 = x_13.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat43;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_837 : f32 = vs_TEXCOORD7.y;
  let x_839 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_837 * x_839);
  let x_843 : f32 = x_111.unity_MatrixV[0i].z;
  let x_845 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_843 * x_845) + x_848);
  let x_852 : f32 = x_111.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_TEXCOORD7.z;
  let x_857 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_852 * x_854) + x_857);
  let x_861 : f32 = u_xlat2.x;
  let x_863 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_861 + x_863);
  let x_867 : f32 = u_xlat2.x;
  let x_870 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_867) + -(x_870));
  let x_875 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_875, 0.0f);
  let x_879 : f32 = u_xlat2.x;
  let x_881 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_879 * x_881);
  u_xlat1.w = 1.0f;
  let x_890 : vec4<f32> = x_888.unity_SHAr;
  let x_891 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_890, x_891);
  let x_895 : vec4<f32> = x_888.unity_SHAg;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_895, x_896);
  let x_900 : vec4<f32> = x_888.unity_SHAb;
  let x_901 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_900, x_901);
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_904.y, x_904.z, x_904.z, x_904.x) * vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.z));
  let x_910 : vec4<f32> = x_888.unity_SHBr;
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_910, x_911);
  let x_915 : vec4<f32> = x_888.unity_SHBg;
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_915, x_916);
  let x_920 : vec4<f32> = x_888.unity_SHBb;
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_920, x_921);
  let x_925 : f32 = u_xlat1.y;
  let x_927 : f32 = u_xlat1.y;
  u_xlat43 = (x_925 * x_927);
  let x_930 : f32 = u_xlat1.x;
  let x_932 : f32 = u_xlat1.x;
  let x_934 : f32 = u_xlat43;
  u_xlat43 = ((x_930 * x_932) + -(x_934));
  let x_940 : vec4<f32> = x_888.unity_SHC;
  let x_942 : f32 = u_xlat43;
  let x_945 : vec4<f32> = u_xlat6;
  u_xlat16 = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat16;
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_948 + vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_952, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_956) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_961 : f32 = u_xlat28;
  let x_962 : f32 = u_xlat43;
  u_xlat3.x = (x_961 + -(x_962));
  let x_967 : f32 = u_xlat43;
  let x_969 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_967, x_967, x_967) * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat5;
  let x_976 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_977 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec3<f32> = u_xlat0;
  let x_981 : vec4<f32> = u_xlat4;
  let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.x, x_979.x) * vec3<f32>(x_981.x, x_981.y, x_981.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : f32 = u_xlat28;
  u_xlat0.x = (-(x_989) + 1.0f);
  let x_994 : f32 = u_xlat0.x;
  let x_996 : f32 = u_xlat0.x;
  u_xlat28 = (x_994 * x_996);
  let x_998 : f32 = u_xlat28;
  u_xlat28 = max(x_998, 0.0078125f);
  let x_1001 : f32 = u_xlat28;
  let x_1002 : f32 = u_xlat28;
  u_xlat43 = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1005 + 1.0f);
  let x_1009 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat28;
  u_xlat46 = ((x_1013 * 4.0f) + 2.0f);
  let x_1016 : f32 = u_xlat14;
  u_xlat14 = min(x_1016, 1.0f);
  let x_1021 : vec4<f32> = vs_TEXCOORD8;
  let x_1022 : vec2<f32> = vec2<f32>(x_1021.x, x_1021.y);
  let x_1024 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
  let x_1036 : vec3<f32> = txVec0;
  let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
  u_xlat5.x = x_1038;
  let x_1050 : f32 = x_1048.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1050) + 1.0f);
  let x_1055 : f32 = u_xlat5.x;
  let x_1057 : f32 = x_1048.x_MainLightShadowParams.x;
  let x_1060 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1055 * x_1057) + x_1060);
  let x_1065 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1065);
  let x_1071 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_1071 >= 1.0f);
  let x_1075 : bool = u_xlatb33.x;
  let x_1076 : bool = u_xlatb19;
  u_xlatb19 = (x_1075 | x_1076);
  let x_1078 : bool = u_xlatb19;
  if (x_1078) {
    x_1080 = 1.0f;
  } else {
    let x_1085 : f32 = u_xlat5.x;
    x_1080 = x_1085;
  }
  let x_1086 : f32 = x_1080;
  u_xlat5.x = x_1086;
  let x_1088 : vec3<f32> = vs_TEXCOORD7;
  let x_1091 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1088 + -(x_1091));
  let x_1094 : vec3<f32> = u_xlat19;
  let x_1095 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1094, x_1095);
  let x_1101 : f32 = u_xlat19.x;
  let x_1103 : f32 = x_1048.x_MainLightShadowParams.z;
  let x_1106 : f32 = x_1048.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_1101 * x_1103) + x_1106);
  let x_1110 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1110, 0.0f, 1.0f);
  let x_1115 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1115) + 1.0f);
  let x_1119 : f32 = u_xlat33.x;
  let x_1120 : f32 = u_xlat47;
  let x_1123 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1119 * x_1120) + x_1123);
  let x_1133 : f32 = x_1131.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_1133 == -1.0f));
  let x_1137 : bool = u_xlatb33.x;
  if (x_1137) {
    let x_1140 : vec3<f32> = vs_TEXCOORD7;
    let x_1143 : vec4<f32> = x_1131.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y));
    let x_1147 : vec4<f32> = x_1131.x_MainLightWorldToLight[0i];
    let x_1149 : vec3<f32> = vs_TEXCOORD7;
    let x_1152 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1149.x, x_1149.x)) + x_1152);
    let x_1155 : vec4<f32> = x_1131.x_MainLightWorldToLight[2i];
    let x_1157 : vec3<f32> = vs_TEXCOORD7;
    let x_1160 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1157.z, x_1157.z)) + x_1160);
    let x_1162 : vec2<f32> = u_xlat33;
    let x_1164 : vec4<f32> = x_1131.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_1162 + vec2<f32>(x_1164.x, x_1164.y));
    let x_1167 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_1167 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1175 : vec2<f32> = u_xlat33;
    let x_1177 : f32 = x_111.x_GlobalMipBias.x;
    let x_1178 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1175, x_1177);
    u_xlat6 = x_1178;
    let x_1180 : f32 = x_1131.x_MainLightCookieTextureFormat;
    let x_1182 : f32 = x_1131.x_MainLightCookieTextureFormat;
    let x_1184 : f32 = x_1131.x_MainLightCookieTextureFormat;
    let x_1186 : f32 = x_1131.x_MainLightCookieTextureFormat;
    let x_1187 : vec4<f32> = vec4<f32>(x_1180, x_1182, x_1184, x_1186);
    let x_1194 : vec4<bool> = (vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_1194.x, x_1194.y);
    let x_1197 : bool = u_xlatb33.y;
    if (x_1197) {
      let x_1202 : f32 = u_xlat6.w;
      x_1198 = x_1202;
    } else {
      let x_1205 : f32 = u_xlat6.x;
      x_1198 = x_1205;
    }
    let x_1206 : f32 = x_1198;
    u_xlat47 = x_1206;
    let x_1208 : bool = u_xlatb33.x;
    if (x_1208) {
      let x_1212 : vec4<f32> = u_xlat6;
      x_1209 = vec3<f32>(x_1212.x, x_1212.y, x_1212.z);
    } else {
      let x_1215 : f32 = u_xlat47;
      x_1209 = vec3<f32>(x_1215, x_1215, x_1215);
    }
    let x_1217 : vec3<f32> = x_1209;
    let x_1218 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1224 : vec4<f32> = u_xlat6;
  let x_1227 : vec4<f32> = x_111.x_MainLightColor;
  let x_1229 : vec3<f32> = (vec3<f32>(x_1224.x, x_1224.y, x_1224.z) * vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1233 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1233;
  let x_1236 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1236;
  let x_1239 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1239;
  let x_1241 : vec4<f32> = u_xlat7;
  let x_1244 : vec4<f32> = u_xlat1;
  u_xlat33.x = dot(-(vec3<f32>(x_1241.x, x_1241.y, x_1241.z)), vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1249 : f32 = u_xlat33.x;
  let x_1251 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1249 + x_1251);
  let x_1254 : vec4<f32> = u_xlat1;
  let x_1256 : vec2<f32> = u_xlat33;
  let x_1260 : vec4<f32> = u_xlat7;
  let x_1263 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * -(vec3<f32>(x_1256.x, x_1256.x, x_1256.x))) + -(vec3<f32>(x_1260.x, x_1260.y, x_1260.z)));
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat1;
  let x_1268 : vec4<f32> = u_xlat7;
  u_xlat33.x = dot(vec3<f32>(x_1266.x, x_1266.y, x_1266.z), vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1273 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1273, 0.0f, 1.0f);
  let x_1277 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_1277) + 1.0f);
  let x_1282 : f32 = u_xlat33.x;
  let x_1284 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1282 * x_1284);
  let x_1288 : f32 = u_xlat33.x;
  let x_1290 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1288 * x_1290);
  let x_1294 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1294) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1301 : f32 = u_xlat0.x;
  let x_1302 : f32 = u_xlat47;
  u_xlat0.x = (x_1301 * x_1302);
  let x_1306 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1306 * 6.0f);
  let x_1318 : vec4<f32> = u_xlat8;
  let x_1321 : f32 = u_xlat0.x;
  let x_1322 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1318.x, x_1318.y, x_1318.z), x_1321);
  u_xlat8 = x_1322;
  let x_1324 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1324 + -1.0f);
  let x_1328 : f32 = x_888.unity_SpecCube0_HDR.w;
  let x_1330 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1328 * x_1330) + 1.0f);
  let x_1335 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1335, 0.0f);
  let x_1339 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1339);
  let x_1343 : f32 = u_xlat0.x;
  let x_1345 : f32 = x_888.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1343 * x_1345);
  let x_1349 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1349);
  let x_1353 : f32 = u_xlat0.x;
  let x_1355 : f32 = x_888.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1353 * x_1355);
  let x_1358 : vec4<f32> = u_xlat8;
  let x_1360 : vec3<f32> = u_xlat0;
  let x_1362 : vec3<f32> = (vec3<f32>(x_1358.x, x_1358.y, x_1358.z) * vec3<f32>(x_1360.x, x_1360.x, x_1360.x));
  let x_1363 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1365 : f32 = u_xlat28;
  let x_1367 : f32 = u_xlat28;
  let x_1371 : vec2<f32> = ((vec2<f32>(x_1365, x_1365) * vec2<f32>(x_1367, x_1367)) + vec2<f32>(-1.0f, 1.0f));
  let x_1372 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1371.x, x_1372.y, x_1371.y);
  let x_1375 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1375);
  let x_1377 : vec4<f32> = u_xlat4;
  let x_1380 : vec4<f32> = u_xlat3;
  let x_1382 : vec3<f32> = (-(vec3<f32>(x_1377.x, x_1377.y, x_1377.z)) + vec3<f32>(x_1380.x, x_1380.x, x_1380.x));
  let x_1383 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
  let x_1385 : vec2<f32> = u_xlat33;
  let x_1387 : vec4<f32> = u_xlat9;
  let x_1390 : vec4<f32> = u_xlat4;
  let x_1392 : vec3<f32> = ((vec3<f32>(x_1385.x, x_1385.x, x_1385.x) * vec3<f32>(x_1387.x, x_1387.y, x_1387.z)) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : f32 = u_xlat28;
  let x_1397 : vec4<f32> = u_xlat9;
  let x_1399 : vec3<f32> = (vec3<f32>(x_1395, x_1395, x_1395) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat8;
  let x_1404 : vec4<f32> = u_xlat9;
  let x_1406 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
  let x_1407 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1409 : vec3<f32> = u_xlat16;
  let x_1410 : vec3<f32> = u_xlat17;
  let x_1412 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1409 * x_1410) + vec3<f32>(x_1412.x, x_1412.y, x_1412.z));
  let x_1416 : f32 = u_xlat5.x;
  let x_1418 : f32 = x_888.unity_LightData.z;
  u_xlat28 = (x_1416 * x_1418);
  let x_1420 : vec4<f32> = u_xlat1;
  let x_1423 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
  let x_1428 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1428, 0.0f, 1.0f);
  let x_1431 : f32 = u_xlat28;
  let x_1433 : f32 = u_xlat3.x;
  u_xlat28 = (x_1431 * x_1433);
  let x_1435 : f32 = u_xlat28;
  let x_1437 : vec4<f32> = u_xlat6;
  let x_1439 : vec3<f32> = (vec3<f32>(x_1435, x_1435, x_1435) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1439.x, x_1440.y, x_1439.y, x_1439.z);
  let x_1442 : vec4<f32> = u_xlat7;
  let x_1445 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1447 : vec3<f32> = (vec3<f32>(x_1442.x, x_1442.y, x_1442.z) + vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
  let x_1450 : vec4<f32> = u_xlat6;
  let x_1452 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1450.x, x_1450.y, x_1450.z), vec3<f32>(x_1452.x, x_1452.y, x_1452.z));
  let x_1455 : f32 = u_xlat28;
  u_xlat28 = max(x_1455, 1.17549435e-38f);
  let x_1458 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1458);
  let x_1460 : f32 = u_xlat28;
  let x_1462 : vec4<f32> = u_xlat6;
  let x_1464 : vec3<f32> = (vec3<f32>(x_1460, x_1460, x_1460) * vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1465 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1467 : vec4<f32> = u_xlat1;
  let x_1469 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
  let x_1472 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1472, 0.0f, 1.0f);
  let x_1475 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1477 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1475.x, x_1475.y, x_1475.z), vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
  let x_1482 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1482, 0.0f, 1.0f);
  let x_1485 : f32 = u_xlat28;
  let x_1486 : f32 = u_xlat28;
  u_xlat28 = (x_1485 * x_1486);
  let x_1488 : f32 = u_xlat28;
  let x_1490 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1488 * x_1490) + 1.00001001358032226562f);
  let x_1495 : f32 = u_xlat3.x;
  let x_1497 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1495 * x_1497);
  let x_1500 : f32 = u_xlat28;
  let x_1501 : f32 = u_xlat28;
  u_xlat28 = (x_1500 * x_1501);
  let x_1504 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1504, 0.10000000149011611938f);
  let x_1508 : f32 = u_xlat28;
  let x_1510 : f32 = u_xlat3.x;
  u_xlat28 = (x_1508 * x_1510);
  let x_1512 : f32 = u_xlat46;
  let x_1513 : f32 = u_xlat28;
  u_xlat28 = (x_1512 * x_1513);
  let x_1515 : f32 = u_xlat43;
  let x_1516 : f32 = u_xlat28;
  u_xlat28 = (x_1515 / x_1516);
  let x_1518 : vec4<f32> = u_xlat4;
  let x_1520 : f32 = u_xlat28;
  let x_1523 : vec3<f32> = u_xlat17;
  let x_1524 : vec3<f32> = ((vec3<f32>(x_1518.x, x_1518.y, x_1518.z) * vec3<f32>(x_1520, x_1520, x_1520)) + x_1523);
  let x_1525 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
  let x_1527 : vec4<f32> = u_xlat5;
  let x_1529 : vec4<f32> = u_xlat6;
  let x_1531 : vec3<f32> = (vec3<f32>(x_1527.x, x_1527.z, x_1527.w) * vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
  let x_1532 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1531.x, x_1532.y, x_1531.y, x_1531.z);
  let x_1535 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1537 : f32 = x_888.unity_LightData.y;
  u_xlat28 = min(x_1535, x_1537);
  let x_1541 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1541));
  let x_1545 : f32 = u_xlat19.x;
  let x_1547 : f32 = x_1048.x_AdditionalShadowFadeParams.x;
  let x_1550 : f32 = x_1048.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1545 * x_1547) + x_1550);
  let x_1554 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1554, 0.0f, 1.0f);
  let x_1559 : f32 = x_1131.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1561 : f32 = x_1131.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1563 : f32 = x_1131.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1565 : f32 = x_1131.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1566 : vec4<f32> = vec4<f32>(x_1559, x_1561, x_1563, x_1565);
  let x_1573 : vec4<bool> = (vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1566.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1573.x, x_1573.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1585 : u32 = u_xlatu_loop_1;
    let x_1586 : u32 = u_xlatu28;
    if ((x_1585 < x_1586)) {
    } else {
      break;
    }
    let x_1589 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1589 >> 2u);
    let x_1593 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1593 & 3u));
    let x_1597 : u32 = u_xlatu34;
    let x_1600 : vec4<f32> = x_888.unity_LightIndices[bitcast<i32>(x_1597)];
    let x_1610 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1615 : vec4<u32> = indexable[x_1610];
    u_xlat34.x = dot(x_1600, bitcast<vec4<f32>>(x_1615));
    let x_1621 : f32 = u_xlat34.x;
    u_xlati34 = i32(x_1621);
    let x_1623 : vec3<f32> = vs_TEXCOORD7;
    let x_1634 : i32 = u_xlati34;
    let x_1636 : vec4<f32> = x_1633.x_AdditionalLightsPosition[x_1634];
    let x_1639 : i32 = u_xlati34;
    let x_1641 : vec4<f32> = x_1633.x_AdditionalLightsPosition[x_1639];
    let x_1643 : vec3<f32> = ((-(x_1623) * vec3<f32>(x_1636.w, x_1636.w, x_1636.w)) + vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
    let x_1644 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
    let x_1647 : vec4<f32> = u_xlat9;
    let x_1649 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1647.x, x_1647.y, x_1647.z), vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : f32 = u_xlat48;
    u_xlat48 = max(x_1652, 0.00006103515625f);
    let x_1655 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1655);
    let x_1657 : f32 = u_xlat49;
    let x_1659 : vec4<f32> = u_xlat9;
    let x_1661 : vec3<f32> = (vec3<f32>(x_1657, x_1657, x_1657) * vec3<f32>(x_1659.x, x_1659.y, x_1659.z));
    let x_1662 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
    let x_1665 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1665);
    let x_1667 : f32 = u_xlat48;
    let x_1668 : i32 = u_xlati34;
    let x_1670 : f32 = x_1633.x_AdditionalLightsAttenuation[x_1668].x;
    u_xlat48 = (x_1667 * x_1670);
    let x_1672 : f32 = u_xlat48;
    let x_1674 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1672) * x_1674) + 1.0f);
    let x_1677 : f32 = u_xlat48;
    u_xlat48 = max(x_1677, 0.0f);
    let x_1679 : f32 = u_xlat48;
    let x_1680 : f32 = u_xlat48;
    u_xlat48 = (x_1679 * x_1680);
    let x_1682 : f32 = u_xlat48;
    let x_1683 : f32 = u_xlat50;
    u_xlat48 = (x_1682 * x_1683);
    let x_1685 : i32 = u_xlati34;
    let x_1687 : vec4<f32> = x_1633.x_AdditionalLightsSpotDir[x_1685];
    let x_1689 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1687.x, x_1687.y, x_1687.z), vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
    let x_1692 : f32 = u_xlat50;
    let x_1693 : i32 = u_xlati34;
    let x_1695 : f32 = x_1633.x_AdditionalLightsAttenuation[x_1693].z;
    let x_1697 : i32 = u_xlati34;
    let x_1699 : f32 = x_1633.x_AdditionalLightsAttenuation[x_1697].w;
    u_xlat50 = ((x_1692 * x_1695) + x_1699);
    let x_1701 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1701, 0.0f, 1.0f);
    let x_1703 : f32 = u_xlat50;
    let x_1704 : f32 = u_xlat50;
    u_xlat50 = (x_1703 * x_1704);
    let x_1706 : f32 = u_xlat48;
    let x_1707 : f32 = u_xlat50;
    u_xlat48 = (x_1706 * x_1707);
    let x_1710 : i32 = u_xlati34;
    let x_1712 : f32 = x_1048.x_AdditionalShadowParams[x_1710].w;
    u_xlati50 = i32(x_1712);
    let x_1715 : i32 = u_xlati50;
    u_xlatb51 = (x_1715 >= 0i);
    let x_1717 : bool = u_xlatb51;
    if (x_1717) {
      let x_1721 : i32 = u_xlati34;
      let x_1723 : f32 = x_1048.x_AdditionalShadowParams[x_1721].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1723, x_1723, x_1723, x_1723))));
      let x_1727 : bool = u_xlatb51;
      if (x_1727) {
        let x_1732 : vec4<f32> = u_xlat10;
        let x_1735 : vec4<f32> = u_xlat10;
        let x_1738 : vec4<bool> = (abs(vec4<f32>(x_1732.z, x_1732.z, x_1732.y, x_1732.z)) >= abs(vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.x)));
        let x_1740 : vec3<bool> = vec3<bool>(x_1738.x, x_1738.y, x_1738.z);
        let x_1741 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
        let x_1744 : bool = u_xlatb11.y;
        let x_1746 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1744 & x_1746);
        let x_1748 : vec4<f32> = u_xlat10;
        let x_1751 : vec4<bool> = (-(vec4<f32>(x_1748.z, x_1748.y, x_1748.z, x_1748.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1752 : vec3<bool> = vec3<bool>(x_1751.x, x_1751.y, x_1751.w);
        let x_1753 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1752.x, x_1752.y, x_1753.z, x_1752.z);
        let x_1756 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1756);
        let x_1761 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1761);
        let x_1767 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1767);
        let x_1770 : bool = u_xlatb11.z;
        if (x_1770) {
          let x_1775 : f32 = u_xlat11.y;
          x_1771 = x_1775;
        } else {
          let x_1777 : f32 = u_xlat52;
          x_1771 = x_1777;
        }
        let x_1778 : f32 = x_1771;
        u_xlat52 = x_1778;
        let x_1780 : bool = u_xlatb51;
        if (x_1780) {
          let x_1785 : f32 = u_xlat11.x;
          x_1781 = x_1785;
        } else {
          let x_1787 : f32 = u_xlat52;
          x_1781 = x_1787;
        }
        let x_1788 : f32 = x_1781;
        u_xlat51 = x_1788;
        let x_1789 : i32 = u_xlati34;
        let x_1791 : f32 = x_1048.x_AdditionalShadowParams[x_1789].w;
        u_xlat52 = trunc(x_1791);
        let x_1793 : f32 = u_xlat51;
        let x_1794 : f32 = u_xlat52;
        u_xlat51 = (x_1793 + x_1794);
        let x_1796 : f32 = u_xlat51;
        u_xlati50 = i32(x_1796);
      }
      let x_1798 : i32 = u_xlati50;
      u_xlati50 = (x_1798 << bitcast<u32>(2i));
      let x_1800 : vec3<f32> = vs_TEXCOORD7;
      let x_1802 : i32 = u_xlati50;
      let x_1805 : i32 = u_xlati50;
      let x_1809 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[((x_1802 + 1i) / 4i)][((x_1805 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1800.y, x_1800.y, x_1800.y, x_1800.y) * x_1809);
      let x_1811 : i32 = u_xlati50;
      let x_1813 : i32 = u_xlati50;
      let x_1816 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[(x_1811 / 4i)][(x_1813 % 4i)];
      let x_1817 : vec3<f32> = vs_TEXCOORD7;
      let x_1820 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1816 * vec4<f32>(x_1817.x, x_1817.x, x_1817.x, x_1817.x)) + x_1820);
      let x_1822 : i32 = u_xlati50;
      let x_1825 : i32 = u_xlati50;
      let x_1829 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[((x_1822 + 2i) / 4i)][((x_1825 + 2i) % 4i)];
      let x_1830 : vec3<f32> = vs_TEXCOORD7;
      let x_1833 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1829 * vec4<f32>(x_1830.z, x_1830.z, x_1830.z, x_1830.z)) + x_1833);
      let x_1835 : vec4<f32> = u_xlat11;
      let x_1836 : i32 = u_xlati50;
      let x_1839 : i32 = u_xlati50;
      let x_1843 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[((x_1836 + 3i) / 4i)][((x_1839 + 3i) % 4i)];
      u_xlat11 = (x_1835 + x_1843);
      let x_1845 : vec4<f32> = u_xlat11;
      let x_1847 : vec4<f32> = u_xlat11;
      let x_1849 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) / vec3<f32>(x_1847.w, x_1847.w, x_1847.w));
      let x_1850 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
      let x_1853 : vec4<f32> = u_xlat11;
      let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
      let x_1856 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
      let x_1864 : vec3<f32> = txVec1;
      let x_1866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
      u_xlat50 = x_1866;
      let x_1867 : i32 = u_xlati34;
      let x_1869 : f32 = x_1048.x_AdditionalShadowParams[x_1867].x;
      u_xlat51 = (1.0f + -(x_1869));
      let x_1872 : f32 = u_xlat50;
      let x_1873 : i32 = u_xlati34;
      let x_1875 : f32 = x_1048.x_AdditionalShadowParams[x_1873].x;
      let x_1877 : f32 = u_xlat51;
      u_xlat50 = ((x_1872 * x_1875) + x_1877);
      let x_1880 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1880);
      let x_1884 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1884 >= 1.0f);
      let x_1886 : bool = u_xlatb51;
      let x_1887 : bool = u_xlatb52;
      u_xlatb51 = (x_1886 | x_1887);
      let x_1889 : bool = u_xlatb51;
      let x_1890 : f32 = u_xlat50;
      u_xlat50 = select(x_1890, 1.0f, x_1889);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1893 : f32 = u_xlat50;
    u_xlat51 = (-(x_1893) + 1.0f);
    let x_1897 : f32 = u_xlat3.x;
    let x_1898 : f32 = u_xlat51;
    let x_1900 : f32 = u_xlat50;
    u_xlat50 = ((x_1897 * x_1898) + x_1900);
    let x_1903 : i32 = u_xlati34;
    u_xlati51 = (1i << bitcast<u32>((x_1903 & 31i)));
    let x_1906 : i32 = u_xlati51;
    let x_1909 : f32 = x_1131.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1906) & bitcast<u32>(x_1909)));
    let x_1913 : i32 = u_xlati51;
    if ((x_1913 != 0i)) {
      let x_1917 : i32 = u_xlati34;
      let x_1919 : f32 = x_1131.x_AdditionalLightsLightTypes[x_1917].el;
      u_xlati51 = i32(x_1919);
      let x_1922 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1922 != 0i));
      let x_1926 : i32 = u_xlati34;
      u_xlati11 = (x_1926 << bitcast<u32>(2i));
      let x_1928 : i32 = u_xlati52;
      if ((x_1928 != 0i)) {
        let x_1933 : vec3<f32> = vs_TEXCOORD7;
        let x_1935 : i32 = u_xlati11;
        let x_1938 : i32 = u_xlati11;
        let x_1942 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_1935 + 1i) / 4i)][((x_1938 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1933.y, x_1933.y, x_1933.y) * vec3<f32>(x_1942.x, x_1942.y, x_1942.w));
        let x_1945 : i32 = u_xlati11;
        let x_1947 : i32 = u_xlati11;
        let x_1950 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[(x_1945 / 4i)][(x_1947 % 4i)];
        let x_1952 : vec3<f32> = vs_TEXCOORD7;
        let x_1955 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1950.x, x_1950.y, x_1950.w) * vec3<f32>(x_1952.x, x_1952.x, x_1952.x)) + x_1955);
        let x_1957 : i32 = u_xlati11;
        let x_1960 : i32 = u_xlati11;
        let x_1964 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_1957 + 2i) / 4i)][((x_1960 + 2i) % 4i)];
        let x_1966 : vec3<f32> = vs_TEXCOORD7;
        let x_1969 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1964.x, x_1964.y, x_1964.w) * vec3<f32>(x_1966.z, x_1966.z, x_1966.z)) + x_1969);
        let x_1971 : vec3<f32> = u_xlat25;
        let x_1972 : i32 = u_xlati11;
        let x_1975 : i32 = u_xlati11;
        let x_1979 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_1972 + 3i) / 4i)][((x_1975 + 3i) % 4i)];
        u_xlat25 = (x_1971 + vec3<f32>(x_1979.x, x_1979.y, x_1979.w));
        let x_1982 : vec3<f32> = u_xlat25;
        let x_1984 : vec3<f32> = u_xlat25;
        let x_1986 : vec2<f32> = (vec2<f32>(x_1982.x, x_1982.y) / vec2<f32>(x_1984.z, x_1984.z));
        let x_1987 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1986.x, x_1986.y, x_1987.z);
        let x_1989 : vec3<f32> = u_xlat25;
        let x_1992 : vec2<f32> = ((vec2<f32>(x_1989.x, x_1989.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1993 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1992.x, x_1992.y, x_1993.z);
        let x_1995 : vec3<f32> = u_xlat25;
        let x_1999 : vec2<f32> = clamp(vec2<f32>(x_1995.x, x_1995.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2000 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1999.x, x_1999.y, x_2000.z);
        let x_2002 : i32 = u_xlati34;
        let x_2004 : vec4<f32> = x_1131.x_AdditionalLightsCookieAtlasUVRects[x_2002];
        let x_2006 : vec3<f32> = u_xlat25;
        let x_2009 : i32 = u_xlati34;
        let x_2011 : vec4<f32> = x_1131.x_AdditionalLightsCookieAtlasUVRects[x_2009];
        let x_2013 : vec2<f32> = ((vec2<f32>(x_2004.x, x_2004.y) * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2011.z, x_2011.w));
        let x_2014 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2013.x, x_2013.y, x_2014.z);
      } else {
        let x_2017 : i32 = u_xlati51;
        u_xlatb51 = (x_2017 == 1i);
        let x_2019 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2019);
        let x_2021 : i32 = u_xlati51;
        if ((x_2021 != 0i)) {
          let x_2025 : vec3<f32> = vs_TEXCOORD7;
          let x_2027 : i32 = u_xlati11;
          let x_2030 : i32 = u_xlati11;
          let x_2034 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_2027 + 1i) / 4i)][((x_2030 + 1i) % 4i)];
          let x_2036 : vec2<f32> = (vec2<f32>(x_2025.y, x_2025.y) * vec2<f32>(x_2034.x, x_2034.y));
          let x_2037 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2037.w);
          let x_2039 : i32 = u_xlati11;
          let x_2041 : i32 = u_xlati11;
          let x_2044 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[(x_2039 / 4i)][(x_2041 % 4i)];
          let x_2046 : vec3<f32> = vs_TEXCOORD7;
          let x_2049 : vec4<f32> = u_xlat12;
          let x_2051 : vec2<f32> = ((vec2<f32>(x_2044.x, x_2044.y) * vec2<f32>(x_2046.x, x_2046.x)) + vec2<f32>(x_2049.x, x_2049.y));
          let x_2052 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2051.x, x_2051.y, x_2052.z, x_2052.w);
          let x_2054 : i32 = u_xlati11;
          let x_2057 : i32 = u_xlati11;
          let x_2061 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_2054 + 2i) / 4i)][((x_2057 + 2i) % 4i)];
          let x_2063 : vec3<f32> = vs_TEXCOORD7;
          let x_2066 : vec4<f32> = u_xlat12;
          let x_2068 : vec2<f32> = ((vec2<f32>(x_2061.x, x_2061.y) * vec2<f32>(x_2063.z, x_2063.z)) + vec2<f32>(x_2066.x, x_2066.y));
          let x_2069 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2068.x, x_2068.y, x_2069.z, x_2069.w);
          let x_2071 : vec4<f32> = u_xlat12;
          let x_2073 : i32 = u_xlati11;
          let x_2076 : i32 = u_xlati11;
          let x_2080 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_2073 + 3i) / 4i)][((x_2076 + 3i) % 4i)];
          let x_2082 : vec2<f32> = (vec2<f32>(x_2071.x, x_2071.y) + vec2<f32>(x_2080.x, x_2080.y));
          let x_2083 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2082.x, x_2082.y, x_2083.z, x_2083.w);
          let x_2085 : vec4<f32> = u_xlat12;
          let x_2088 : vec2<f32> = ((vec2<f32>(x_2085.x, x_2085.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2089 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2088.x, x_2088.y, x_2089.z, x_2089.w);
          let x_2091 : vec4<f32> = u_xlat12;
          let x_2093 : vec2<f32> = fract(vec2<f32>(x_2091.x, x_2091.y));
          let x_2094 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2093.x, x_2093.y, x_2094.z, x_2094.w);
          let x_2096 : i32 = u_xlati34;
          let x_2098 : vec4<f32> = x_1131.x_AdditionalLightsCookieAtlasUVRects[x_2096];
          let x_2100 : vec4<f32> = u_xlat12;
          let x_2103 : i32 = u_xlati34;
          let x_2105 : vec4<f32> = x_1131.x_AdditionalLightsCookieAtlasUVRects[x_2103];
          let x_2107 : vec2<f32> = ((vec2<f32>(x_2098.x, x_2098.y) * vec2<f32>(x_2100.x, x_2100.y)) + vec2<f32>(x_2105.z, x_2105.w));
          let x_2108 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2107.x, x_2107.y, x_2108.z);
        } else {
          let x_2111 : vec3<f32> = vs_TEXCOORD7;
          let x_2113 : i32 = u_xlati11;
          let x_2116 : i32 = u_xlati11;
          let x_2120 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_2113 + 1i) / 4i)][((x_2116 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2111.y, x_2111.y, x_2111.y, x_2111.y) * x_2120);
          let x_2122 : i32 = u_xlati11;
          let x_2124 : i32 = u_xlati11;
          let x_2127 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[(x_2122 / 4i)][(x_2124 % 4i)];
          let x_2128 : vec3<f32> = vs_TEXCOORD7;
          let x_2131 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2127 * vec4<f32>(x_2128.x, x_2128.x, x_2128.x, x_2128.x)) + x_2131);
          let x_2133 : i32 = u_xlati11;
          let x_2136 : i32 = u_xlati11;
          let x_2140 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_2133 + 2i) / 4i)][((x_2136 + 2i) % 4i)];
          let x_2141 : vec3<f32> = vs_TEXCOORD7;
          let x_2144 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2140 * vec4<f32>(x_2141.z, x_2141.z, x_2141.z, x_2141.z)) + x_2144);
          let x_2146 : vec4<f32> = u_xlat12;
          let x_2147 : i32 = u_xlati11;
          let x_2150 : i32 = u_xlati11;
          let x_2154 : vec4<f32> = x_1131.x_AdditionalLightsWorldToLights[((x_2147 + 3i) / 4i)][((x_2150 + 3i) % 4i)];
          u_xlat12 = (x_2146 + x_2154);
          let x_2156 : vec4<f32> = u_xlat12;
          let x_2158 : vec4<f32> = u_xlat12;
          let x_2160 : vec3<f32> = (vec3<f32>(x_2156.x, x_2156.y, x_2156.z) / vec3<f32>(x_2158.w, x_2158.w, x_2158.w));
          let x_2161 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
          let x_2163 : vec4<f32> = u_xlat12;
          let x_2165 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2163.x, x_2163.y, x_2163.z), vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
          let x_2168 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2168);
          let x_2170 : f32 = u_xlat51;
          let x_2172 : vec4<f32> = u_xlat12;
          let x_2174 : vec3<f32> = (vec3<f32>(x_2170, x_2170, x_2170) * vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
          let x_2175 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
          let x_2177 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2177.x, x_2177.y, x_2177.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2182 : f32 = u_xlat51;
          u_xlat51 = max(x_2182, 0.00000099999999747524f);
          let x_2185 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2185);
          let x_2187 : f32 = u_xlat51;
          let x_2189 : vec4<f32> = u_xlat12;
          let x_2191 : vec3<f32> = (vec3<f32>(x_2187, x_2187, x_2187) * vec3<f32>(x_2189.z, x_2189.x, x_2189.y));
          let x_2192 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
          let x_2195 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2195);
          let x_2199 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2199, 0.0f, 1.0f);
          let x_2202 : vec4<f32> = u_xlat13;
          let x_2204 : vec4<bool> = (vec4<f32>(x_2202.y, x_2202.y, x_2202.y, x_2202.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2205 : vec2<bool> = vec2<bool>(x_2204.x, x_2204.w);
          let x_2206 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2205.x, x_2206.y, x_2206.z, x_2205.y);
          let x_2209 : bool = u_xlatb11.x;
          if (x_2209) {
            let x_2214 : f32 = u_xlat13.x;
            x_2210 = x_2214;
          } else {
            let x_2217 : f32 = u_xlat13.x;
            x_2210 = -(x_2217);
          }
          let x_2219 : f32 = x_2210;
          u_xlat11.x = x_2219;
          let x_2222 : bool = u_xlatb11.w;
          if (x_2222) {
            let x_2227 : f32 = u_xlat13.x;
            x_2223 = x_2227;
          } else {
            let x_2230 : f32 = u_xlat13.x;
            x_2223 = -(x_2230);
          }
          let x_2232 : f32 = x_2223;
          u_xlat11.w = x_2232;
          let x_2234 : vec4<f32> = u_xlat12;
          let x_2236 : f32 = u_xlat51;
          let x_2239 : vec4<f32> = u_xlat11;
          let x_2241 : vec2<f32> = ((vec2<f32>(x_2234.x, x_2234.y) * vec2<f32>(x_2236, x_2236)) + vec2<f32>(x_2239.x, x_2239.w));
          let x_2242 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2241.x, x_2242.y, x_2242.z, x_2241.y);
          let x_2244 : vec4<f32> = u_xlat11;
          let x_2247 : vec2<f32> = ((vec2<f32>(x_2244.x, x_2244.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2248 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2247.x, x_2248.y, x_2248.z, x_2247.y);
          let x_2250 : vec4<f32> = u_xlat11;
          let x_2254 : vec2<f32> = clamp(vec2<f32>(x_2250.x, x_2250.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2255 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2254.x, x_2255.y, x_2255.z, x_2254.y);
          let x_2257 : i32 = u_xlati34;
          let x_2259 : vec4<f32> = x_1131.x_AdditionalLightsCookieAtlasUVRects[x_2257];
          let x_2261 : vec4<f32> = u_xlat11;
          let x_2264 : i32 = u_xlati34;
          let x_2266 : vec4<f32> = x_1131.x_AdditionalLightsCookieAtlasUVRects[x_2264];
          let x_2268 : vec2<f32> = ((vec2<f32>(x_2259.x, x_2259.y) * vec2<f32>(x_2261.x, x_2261.w)) + vec2<f32>(x_2266.z, x_2266.w));
          let x_2269 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2268.x, x_2268.y, x_2269.z);
        }
      }
      let x_2276 : vec3<f32> = u_xlat25;
      let x_2278 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2276.x, x_2276.y), 0.0f);
      u_xlat11 = x_2278;
      let x_2280 : bool = u_xlatb6.y;
      if (x_2280) {
        let x_2285 : f32 = u_xlat11.w;
        x_2281 = x_2285;
      } else {
        let x_2288 : f32 = u_xlat11.x;
        x_2281 = x_2288;
      }
      let x_2289 : f32 = x_2281;
      u_xlat51 = x_2289;
      let x_2291 : bool = u_xlatb6.x;
      if (x_2291) {
        let x_2295 : vec4<f32> = u_xlat11;
        x_2292 = vec3<f32>(x_2295.x, x_2295.y, x_2295.z);
      } else {
        let x_2298 : f32 = u_xlat51;
        x_2292 = vec3<f32>(x_2298, x_2298, x_2298);
      }
      let x_2300 : vec3<f32> = x_2292;
      let x_2301 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2307 : vec4<f32> = u_xlat11;
    let x_2309 : i32 = u_xlati34;
    let x_2311 : vec4<f32> = x_1633.x_AdditionalLightsColor[x_2309];
    let x_2313 : vec3<f32> = (vec3<f32>(x_2307.x, x_2307.y, x_2307.z) * vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
    let x_2314 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
    let x_2316 : f32 = u_xlat48;
    let x_2317 : f32 = u_xlat50;
    u_xlat34.x = (x_2316 * x_2317);
    let x_2320 : vec4<f32> = u_xlat1;
    let x_2322 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2325, 0.0f, 1.0f);
    let x_2327 : f32 = u_xlat48;
    let x_2329 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2327 * x_2329);
    let x_2332 : vec2<f32> = u_xlat34;
    let x_2334 : vec4<f32> = u_xlat11;
    let x_2336 : vec3<f32> = (vec3<f32>(x_2332.x, x_2332.x, x_2332.x) * vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
    let x_2337 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
    let x_2339 : vec4<f32> = u_xlat9;
    let x_2341 : f32 = u_xlat49;
    let x_2344 : vec4<f32> = u_xlat7;
    let x_2346 : vec3<f32> = ((vec3<f32>(x_2339.x, x_2339.y, x_2339.z) * vec3<f32>(x_2341, x_2341, x_2341)) + vec3<f32>(x_2344.x, x_2344.y, x_2344.z));
    let x_2347 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
    let x_2349 : vec4<f32> = u_xlat9;
    let x_2351 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2349.x, x_2349.y, x_2349.z), vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
    let x_2356 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2356, 1.17549435e-38f);
    let x_2360 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2360);
    let x_2363 : vec2<f32> = u_xlat34;
    let x_2365 : vec4<f32> = u_xlat9;
    let x_2367 : vec3<f32> = (vec3<f32>(x_2363.x, x_2363.x, x_2363.x) * vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
    let x_2368 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2367.x, x_2367.y, x_2367.z, x_2368.w);
    let x_2370 : vec4<f32> = u_xlat1;
    let x_2372 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2370.x, x_2370.y, x_2370.z), vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
    let x_2377 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2377, 0.0f, 1.0f);
    let x_2380 : vec4<f32> = u_xlat10;
    let x_2382 : vec4<f32> = u_xlat9;
    u_xlat34.y = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
    let x_2387 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2387, 0.0f, 1.0f);
    let x_2390 : vec2<f32> = u_xlat34;
    let x_2391 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2390 * x_2391);
    let x_2394 : f32 = u_xlat34.x;
    let x_2396 : f32 = u_xlat0.x;
    u_xlat34.x = ((x_2394 * x_2396) + 1.00001001358032226562f);
    let x_2401 : f32 = u_xlat34.x;
    let x_2403 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2401 * x_2403);
    let x_2407 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2407, 0.10000000149011611938f);
    let x_2409 : f32 = u_xlat48;
    let x_2411 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2409 * x_2411);
    let x_2414 : f32 = u_xlat46;
    let x_2416 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2414 * x_2416);
    let x_2419 : f32 = u_xlat43;
    let x_2421 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2419 / x_2421);
    let x_2424 : vec4<f32> = u_xlat4;
    let x_2426 : vec2<f32> = u_xlat34;
    let x_2429 : vec3<f32> = u_xlat17;
    let x_2430 : vec3<f32> = ((vec3<f32>(x_2424.x, x_2424.y, x_2424.z) * vec3<f32>(x_2426.x, x_2426.x, x_2426.x)) + x_2429);
    let x_2431 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
    let x_2433 : vec4<f32> = u_xlat9;
    let x_2435 : vec4<f32> = u_xlat11;
    let x_2438 : vec4<f32> = u_xlat8;
    let x_2440 : vec3<f32> = ((vec3<f32>(x_2433.x, x_2433.y, x_2433.z) * vec3<f32>(x_2435.x, x_2435.y, x_2435.z)) + vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
    let x_2441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);

    continuing {
      let x_2443 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2443 + bitcast<u32>(1i));
    }
  }
  let x_2445 : vec3<f32> = u_xlat16;
  let x_2446 : f32 = u_xlat14;
  let x_2449 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_2445 * vec3<f32>(x_2446, x_2446, x_2446)) + vec3<f32>(x_2449.x, x_2449.z, x_2449.w));
  let x_2452 : vec4<f32> = u_xlat8;
  let x_2454 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2452.x, x_2452.y, x_2452.z) + x_2454);
  let x_2456 : f32 = u_xlat42;
  let x_2458 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2456, x_2456, x_2456) * x_2458);
  let x_2461 : f32 = u_xlat2.x;
  let x_2463 : f32 = u_xlat2.x;
  u_xlat42 = (x_2461 * -(x_2463));
  let x_2466 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2466);
  let x_2470 : vec3<f32> = u_xlat0;
  let x_2471 : f32 = u_xlat42;
  let x_2473 : vec3<f32> = (x_2470 * vec3<f32>(x_2471, x_2471, x_2471));
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


