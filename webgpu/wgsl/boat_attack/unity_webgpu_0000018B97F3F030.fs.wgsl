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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_587 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1012 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1200 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1492 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_560 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_965 : f32;
  var x_1095 : f32;
  var x_1106 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1628 : f32;
  var x_1638 : f32;
  var txVec1 : vec3<f32>;
  var x_2066 : f32;
  var x_2079 : f32;
  var x_2137 : f32;
  var x_2148 : vec3<f32>;
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
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat15;
  let x_537 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat15;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_549 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_563 : vec3<f32> = u_xlat15;
    x_560 = x_563;
  } else {
    let x_565 : vec3<f32> = u_xlat2;
    x_560 = x_565;
  }
  let x_566 : vec3<f32> = x_560;
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  let x_571 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_570, x_571);
  let x_573 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_573);
  let x_575 : f32 = u_xlat43;
  let x_577 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_579 : vec3<f32> = vs_TEXCOORD7;
  let x_589 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres0;
  let x_592 : vec3<f32> = (x_579 + -(vec3<f32>(x_589.x, x_589.y, x_589.z)));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = vs_TEXCOORD7;
  let x_597 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres1;
  let x_600 : vec3<f32> = (x_595 + -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_601 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = vs_TEXCOORD7;
  let x_606 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres2;
  let x_609 : vec3<f32> = (x_603 + -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = vs_TEXCOORD7;
  let x_614 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres3;
  let x_617 : vec3<f32> = (x_612 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
  let x_618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_638 : vec4<f32> = u_xlat7;
  let x_640 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_646 : vec4<f32> = u_xlat3;
  let x_648 : vec4<f32> = x_587.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_646 < x_648);
  let x_651 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_663);
  let x_667 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_667);
  let x_672 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_672);
  let x_676 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_676);
  let x_679 : vec4<f32> = u_xlat3;
  let x_681 : vec4<f32> = u_xlat4;
  let x_683 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) + vec3<f32>(x_681.y, x_681.z, x_681.w));
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_689 : vec3<f32> = max(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_689.x, x_689.y, x_689.z);
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_692, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_697 : f32 = u_xlat43;
  u_xlat43 = (-(x_697) + 4.0f);
  let x_702 : f32 = u_xlat43;
  u_xlatu43 = u32(x_702);
  let x_706 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_706) << bitcast<u32>(2i));
  let x_709 : vec3<f32> = vs_TEXCOORD7;
  let x_711 : i32 = u_xlati43;
  let x_714 : i32 = u_xlati43;
  let x_718 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_711 + 1i) / 4i)][((x_714 + 1i) % 4i)];
  let x_720 : vec3<f32> = (vec3<f32>(x_709.y, x_709.y, x_709.y) * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : i32 = u_xlati43;
  let x_725 : i32 = u_xlati43;
  let x_728 : vec4<f32> = x_587.x_MainLightWorldToShadow[(x_723 / 4i)][(x_725 % 4i)];
  let x_730 : vec3<f32> = vs_TEXCOORD7;
  let x_733 : vec4<f32> = u_xlat3;
  let x_735 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730.x, x_730.x, x_730.x)) + vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati43;
  let x_741 : i32 = u_xlati43;
  let x_745 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_738 + 2i) / 4i)][((x_741 + 2i) % 4i)];
  let x_747 : vec3<f32> = vs_TEXCOORD7;
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747.z, x_747.z, x_747.z)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : i32 = u_xlati43;
  let x_760 : i32 = u_xlati43;
  let x_764 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_757 + 3i) / 4i)][((x_760 + 3i) % 4i)];
  let x_766 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : f32 = vs_TEXCOORD7.y;
  let x_773 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_771 * x_773);
  let x_776 : f32 = x_111.unity_MatrixV[0i].z;
  let x_778 : f32 = vs_TEXCOORD7.x;
  let x_780 : f32 = u_xlat43;
  u_xlat43 = ((x_776 * x_778) + x_780);
  let x_783 : f32 = x_111.unity_MatrixV[2i].z;
  let x_785 : f32 = vs_TEXCOORD7.z;
  let x_787 : f32 = u_xlat43;
  u_xlat43 = ((x_783 * x_785) + x_787);
  let x_789 : f32 = u_xlat43;
  let x_791 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_789 + x_791);
  let x_793 : f32 = u_xlat43;
  let x_796 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_793) + -(x_796));
  let x_799 : f32 = u_xlat43;
  u_xlat43 = max(x_799, 0.0f);
  let x_801 : f32 = u_xlat43;
  let x_803 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_801 * x_803);
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_111.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  u_xlat4 = x_814;
  let x_819 : vec4<f32> = vs_TEXCOORD0;
  let x_822 : f32 = x_111.x_GlobalMipBias.x;
  let x_823 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_819.z, x_819.w), x_822);
  let x_824 : vec3<f32> = vec3<f32>(x_823.x, x_823.y, x_823.z);
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat4;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : vec3<f32> = u_xlat2;
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_835, vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat44;
  u_xlat44 = (x_839 + 0.5f);
  let x_841 : f32 = u_xlat44;
  let x_843 : vec4<f32> = u_xlat6;
  let x_845 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_849 : f32 = u_xlat4.w;
  u_xlat44 = max(x_849, 0.00009999999747378752f);
  let x_852 : vec4<f32> = u_xlat4;
  let x_854 : f32 = u_xlat44;
  let x_856 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) / vec3<f32>(x_854, x_854, x_854));
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_860 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_860) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_866 : f32 = u_xlat28;
  let x_867 : f32 = u_xlat44;
  u_xlat45 = (x_866 + -(x_867));
  let x_870 : f32 = u_xlat44;
  let x_872 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat5;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_882 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = u_xlat0;
  let x_886 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = ((vec3<f32>(x_884.x, x_884.x, x_884.x) * vec3<f32>(x_886.x, x_886.y, x_886.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_892 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : f32 = u_xlat28;
  u_xlat0.x = (-(x_894) + 1.0f);
  let x_899 : f32 = u_xlat0.x;
  let x_901 : f32 = u_xlat0.x;
  u_xlat28 = (x_899 * x_901);
  let x_903 : f32 = u_xlat28;
  u_xlat28 = max(x_903, 0.0078125f);
  let x_906 : f32 = u_xlat28;
  let x_907 : f32 = u_xlat28;
  u_xlat44 = (x_906 * x_907);
  let x_909 : f32 = u_xlat45;
  u_xlat45 = (x_909 + 1.0f);
  let x_911 : f32 = u_xlat45;
  u_xlat45 = clamp(x_911, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat28;
  u_xlat46 = ((x_914 * 4.0f) + 2.0f);
  let x_917 : f32 = u_xlat14;
  u_xlat14 = min(x_917, 1.0f);
  let x_920 : vec4<f32> = u_xlat3;
  let x_921 : vec2<f32> = vec2<f32>(x_920.x, x_920.y);
  let x_923 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_921.x, x_921.y, x_923);
  let x_935 : vec3<f32> = txVec0;
  let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
  u_xlat3.x = x_937;
  let x_941 : f32 = x_587.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_941) + 1.0f);
  let x_945 : f32 = u_xlat3.x;
  let x_947 : f32 = x_587.x_MainLightShadowParams.x;
  let x_949 : f32 = u_xlat17;
  u_xlat3.x = ((x_945 * x_947) + x_949);
  let x_954 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_954);
  let x_958 : f32 = u_xlat3.z;
  u_xlatb31 = (x_958 >= 1.0f);
  let x_960 : bool = u_xlatb31;
  let x_961 : bool = u_xlatb17;
  u_xlatb17 = (x_960 | x_961);
  let x_963 : bool = u_xlatb17;
  if (x_963) {
    x_965 = 1.0f;
  } else {
    let x_970 : f32 = u_xlat3.x;
    x_965 = x_970;
  }
  let x_971 : f32 = x_965;
  u_xlat3.x = x_971;
  let x_973 : vec3<f32> = vs_TEXCOORD7;
  let x_975 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_977 : vec3<f32> = (x_973 + -(x_975));
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_986 : f32 = u_xlat17;
  let x_988 : f32 = x_587.x_MainLightShadowParams.z;
  let x_991 : f32 = x_587.x_MainLightShadowParams.w;
  u_xlat31 = ((x_986 * x_988) + x_991);
  let x_993 : f32 = u_xlat31;
  u_xlat31 = clamp(x_993, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_997) + 1.0f);
  let x_1000 : f32 = u_xlat31;
  let x_1001 : f32 = u_xlat47;
  let x_1004 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1000 * x_1001) + x_1004);
  let x_1014 : f32 = x_1012.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1014 == -1.0f));
  let x_1016 : bool = u_xlatb31;
  if (x_1016) {
    let x_1019 : vec3<f32> = vs_TEXCOORD7;
    let x_1022 : vec4<f32> = x_1012.x_MainLightWorldToLight[1i];
    let x_1024 : vec2<f32> = (vec2<f32>(x_1019.y, x_1019.y) * vec2<f32>(x_1022.x, x_1022.y));
    let x_1025 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
    let x_1028 : vec4<f32> = x_1012.x_MainLightWorldToLight[0i];
    let x_1030 : vec3<f32> = vs_TEXCOORD7;
    let x_1033 : vec4<f32> = u_xlat7;
    let x_1035 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1030.x, x_1030.x)) + vec2<f32>(x_1033.x, x_1033.y));
    let x_1036 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
    let x_1039 : vec4<f32> = x_1012.x_MainLightWorldToLight[2i];
    let x_1041 : vec3<f32> = vs_TEXCOORD7;
    let x_1044 : vec4<f32> = u_xlat7;
    let x_1046 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.y) * vec2<f32>(x_1041.z, x_1041.z)) + vec2<f32>(x_1044.x, x_1044.y));
    let x_1047 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
    let x_1049 : vec4<f32> = u_xlat7;
    let x_1052 : vec4<f32> = x_1012.x_MainLightWorldToLight[3i];
    let x_1054 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.y) + vec2<f32>(x_1052.x, x_1052.y));
    let x_1055 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
    let x_1057 : vec4<f32> = u_xlat7;
    let x_1060 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1061 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
    let x_1068 : vec4<f32> = u_xlat7;
    let x_1071 : f32 = x_111.x_GlobalMipBias.x;
    let x_1072 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1068.x, x_1068.y), x_1071);
    u_xlat7 = x_1072;
    let x_1077 : f32 = x_1012.x_MainLightCookieTextureFormat;
    let x_1079 : f32 = x_1012.x_MainLightCookieTextureFormat;
    let x_1081 : f32 = x_1012.x_MainLightCookieTextureFormat;
    let x_1083 : f32 = x_1012.x_MainLightCookieTextureFormat;
    let x_1084 : vec4<f32> = vec4<f32>(x_1077, x_1079, x_1081, x_1083);
    let x_1091 : vec4<bool> = (vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1084.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1091.x, x_1091.y);
    let x_1094 : bool = u_xlatb8.y;
    if (x_1094) {
      let x_1099 : f32 = u_xlat7.w;
      x_1095 = x_1099;
    } else {
      let x_1102 : f32 = u_xlat7.x;
      x_1095 = x_1102;
    }
    let x_1103 : f32 = x_1095;
    u_xlat31 = x_1103;
    let x_1105 : bool = u_xlatb8.x;
    if (x_1105) {
      let x_1109 : vec4<f32> = u_xlat7;
      x_1106 = vec3<f32>(x_1109.x, x_1109.y, x_1109.z);
    } else {
      let x_1112 : f32 = u_xlat31;
      x_1106 = vec3<f32>(x_1112, x_1112, x_1112);
    }
    let x_1114 : vec3<f32> = x_1106;
    let x_1115 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1124 : vec4<f32> = x_111.x_MainLightColor;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec4<f32> = u_xlat1;
  let x_1132 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1129.x, x_1129.y, x_1129.z)), x_1132);
  let x_1134 : f32 = u_xlat31;
  let x_1135 : f32 = u_xlat31;
  u_xlat31 = (x_1134 + x_1135);
  let x_1137 : vec3<f32> = u_xlat2;
  let x_1138 : f32 = u_xlat31;
  let x_1142 : vec4<f32> = u_xlat1;
  let x_1145 : vec3<f32> = ((x_1137 * -(vec3<f32>(x_1138, x_1138, x_1138))) + -(vec3<f32>(x_1142.x, x_1142.y, x_1142.z)));
  let x_1146 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec3<f32> = u_xlat2;
  let x_1149 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(x_1148, vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1152, 0.0f, 1.0f);
  let x_1154 : f32 = u_xlat31;
  u_xlat31 = (-(x_1154) + 1.0f);
  let x_1157 : f32 = u_xlat31;
  let x_1158 : f32 = u_xlat31;
  u_xlat31 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat31;
  let x_1161 : f32 = u_xlat31;
  u_xlat31 = (x_1160 * x_1161);
  let x_1164 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1164) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1171 : f32 = u_xlat0.x;
  let x_1172 : f32 = u_xlat47;
  u_xlat0.x = (x_1171 * x_1172);
  let x_1176 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1176 * 6.0f);
  let x_1188 : vec4<f32> = u_xlat8;
  let x_1191 : f32 = u_xlat0.x;
  let x_1192 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1188.x, x_1188.y, x_1188.z), x_1191);
  u_xlat8 = x_1192;
  let x_1194 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1194 + -1.0f);
  let x_1202 : f32 = x_1200.unity_SpecCube0_HDR.w;
  let x_1204 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1202 * x_1204) + 1.0f);
  let x_1209 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1209, 0.0f);
  let x_1213 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1213);
  let x_1217 : f32 = u_xlat0.x;
  let x_1219 : f32 = x_1200.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1217 * x_1219);
  let x_1223 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1223);
  let x_1227 : f32 = u_xlat0.x;
  let x_1229 : f32 = x_1200.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1227 * x_1229);
  let x_1232 : vec4<f32> = u_xlat8;
  let x_1234 : vec3<f32> = u_xlat0;
  let x_1236 : vec3<f32> = (vec3<f32>(x_1232.x, x_1232.y, x_1232.z) * vec3<f32>(x_1234.x, x_1234.x, x_1234.x));
  let x_1237 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1239 : f32 = u_xlat28;
  let x_1241 : f32 = u_xlat28;
  let x_1245 : vec2<f32> = ((vec2<f32>(x_1239, x_1239) * vec2<f32>(x_1241, x_1241)) + vec2<f32>(-1.0f, 1.0f));
  let x_1246 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1245.x, x_1246.y, x_1245.y);
  let x_1249 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1249);
  let x_1251 : vec4<f32> = u_xlat5;
  let x_1254 : f32 = u_xlat45;
  let x_1256 : vec3<f32> = (-(vec3<f32>(x_1251.x, x_1251.y, x_1251.z)) + vec3<f32>(x_1254, x_1254, x_1254));
  let x_1257 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : f32 = u_xlat31;
  let x_1261 : vec4<f32> = u_xlat9;
  let x_1264 : vec4<f32> = u_xlat5;
  let x_1266 : vec3<f32> = ((vec3<f32>(x_1259, x_1259, x_1259) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z)) + vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1269 : f32 = u_xlat28;
  let x_1271 : vec4<f32> = u_xlat9;
  let x_1273 : vec3<f32> = (vec3<f32>(x_1269, x_1269, x_1269) * vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : vec4<f32> = u_xlat8;
  let x_1278 : vec4<f32> = u_xlat9;
  let x_1280 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
  let x_1281 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec4<f32> = u_xlat4;
  let x_1285 : vec4<f32> = u_xlat6;
  let x_1288 : vec4<f32> = u_xlat8;
  let x_1290 : vec3<f32> = ((vec3<f32>(x_1283.x, x_1283.y, x_1283.z) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z)) + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1294 : f32 = u_xlat3.x;
  let x_1296 : f32 = x_1200.unity_LightData.z;
  u_xlat28 = (x_1294 * x_1296);
  let x_1298 : vec3<f32> = u_xlat2;
  let x_1300 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_1298, vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
  let x_1305 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1305, 0.0f, 1.0f);
  let x_1308 : f32 = u_xlat28;
  let x_1310 : f32 = u_xlat3.x;
  u_xlat28 = (x_1308 * x_1310);
  let x_1312 : f32 = u_xlat28;
  let x_1314 : vec4<f32> = u_xlat7;
  let x_1316 : vec3<f32> = (vec3<f32>(x_1312, x_1312, x_1312) * vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
  let x_1317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1316.x, x_1317.y, x_1316.y, x_1316.z);
  let x_1319 : vec4<f32> = u_xlat1;
  let x_1322 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1324 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1327 : vec4<f32> = u_xlat7;
  let x_1329 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1327.x, x_1327.y, x_1327.z), vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : f32 = u_xlat28;
  u_xlat28 = max(x_1332, 1.17549435e-38f);
  let x_1335 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1335);
  let x_1337 : f32 = u_xlat28;
  let x_1339 : vec4<f32> = u_xlat7;
  let x_1341 : vec3<f32> = (vec3<f32>(x_1337, x_1337, x_1337) * vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : vec3<f32> = u_xlat2;
  let x_1345 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1344, vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1348, 0.0f, 1.0f);
  let x_1351 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1353 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1351.x, x_1351.y, x_1351.z), vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1356, 0.0f, 1.0f);
  let x_1358 : f32 = u_xlat28;
  let x_1359 : f32 = u_xlat28;
  u_xlat28 = (x_1358 * x_1359);
  let x_1361 : f32 = u_xlat28;
  let x_1363 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1361 * x_1363) + 1.00001001358032226562f);
  let x_1367 : f32 = u_xlat47;
  let x_1368 : f32 = u_xlat47;
  u_xlat47 = (x_1367 * x_1368);
  let x_1370 : f32 = u_xlat28;
  let x_1371 : f32 = u_xlat28;
  u_xlat28 = (x_1370 * x_1371);
  let x_1373 : f32 = u_xlat47;
  u_xlat47 = max(x_1373, 0.10000000149011611938f);
  let x_1376 : f32 = u_xlat28;
  let x_1377 : f32 = u_xlat47;
  u_xlat28 = (x_1376 * x_1377);
  let x_1379 : f32 = u_xlat46;
  let x_1380 : f32 = u_xlat28;
  u_xlat28 = (x_1379 * x_1380);
  let x_1382 : f32 = u_xlat44;
  let x_1383 : f32 = u_xlat28;
  u_xlat28 = (x_1382 / x_1383);
  let x_1385 : vec4<f32> = u_xlat5;
  let x_1387 : f32 = u_xlat28;
  let x_1390 : vec4<f32> = u_xlat6;
  let x_1392 : vec3<f32> = ((vec3<f32>(x_1385.x, x_1385.y, x_1385.z) * vec3<f32>(x_1387, x_1387, x_1387)) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat3;
  let x_1397 : vec4<f32> = u_xlat7;
  let x_1399 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.z, x_1395.w) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1399.x, x_1400.y, x_1399.y, x_1399.z);
  let x_1403 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1405 : f32 = x_1200.unity_LightData.y;
  u_xlat28 = min(x_1403, x_1405);
  let x_1408 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1408));
  let x_1411 : f32 = u_xlat17;
  let x_1413 : f32 = x_587.x_AdditionalShadowFadeParams.x;
  let x_1416 : f32 = x_587.x_AdditionalShadowFadeParams.y;
  u_xlat17 = ((x_1411 * x_1413) + x_1416);
  let x_1418 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1418, 0.0f, 1.0f);
  let x_1422 : f32 = x_1012.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1424 : f32 = x_1012.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1426 : f32 = x_1012.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1428 : f32 = x_1012.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1429 : vec4<f32> = vec4<f32>(x_1422, x_1424, x_1426, x_1428);
  let x_1435 : vec4<bool> = (vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1429.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1435.x, x_1435.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1447 : u32 = u_xlatu_loop_1;
    let x_1448 : u32 = u_xlatu28;
    if ((x_1447 < x_1448)) {
    } else {
      break;
    }
    let x_1451 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1451 >> 2u);
    let x_1454 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1454 & 3u));
    let x_1458 : u32 = u_xlatu48;
    let x_1461 : vec4<f32> = x_1200.unity_LightIndices[bitcast<i32>(x_1458)];
    let x_1471 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1476 : vec4<u32> = indexable[x_1471];
    u_xlat48 = dot(x_1461, bitcast<vec4<f32>>(x_1476));
    let x_1480 : f32 = u_xlat48;
    u_xlati48 = i32(x_1480);
    let x_1482 : vec3<f32> = vs_TEXCOORD7;
    let x_1493 : i32 = u_xlati48;
    let x_1495 : vec4<f32> = x_1492.x_AdditionalLightsPosition[x_1493];
    let x_1498 : i32 = u_xlati48;
    let x_1500 : vec4<f32> = x_1492.x_AdditionalLightsPosition[x_1498];
    let x_1502 : vec3<f32> = ((-(x_1482) * vec3<f32>(x_1495.w, x_1495.w, x_1495.w)) + vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
    let x_1503 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
    let x_1506 : vec4<f32> = u_xlat9;
    let x_1508 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
    let x_1511 : f32 = u_xlat35;
    u_xlat35 = max(x_1511, 0.00006103515625f);
    let x_1514 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1514);
    let x_1516 : f32 = u_xlat49;
    let x_1518 : vec4<f32> = u_xlat9;
    let x_1520 : vec3<f32> = (vec3<f32>(x_1516, x_1516, x_1516) * vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
    let x_1521 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
    let x_1524 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1524);
    let x_1526 : f32 = u_xlat35;
    let x_1527 : i32 = u_xlati48;
    let x_1529 : f32 = x_1492.x_AdditionalLightsAttenuation[x_1527].x;
    u_xlat35 = (x_1526 * x_1529);
    let x_1531 : f32 = u_xlat35;
    let x_1533 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1531) * x_1533) + 1.0f);
    let x_1536 : f32 = u_xlat35;
    u_xlat35 = max(x_1536, 0.0f);
    let x_1538 : f32 = u_xlat35;
    let x_1539 : f32 = u_xlat35;
    u_xlat35 = (x_1538 * x_1539);
    let x_1541 : f32 = u_xlat35;
    let x_1542 : f32 = u_xlat50;
    u_xlat35 = (x_1541 * x_1542);
    let x_1544 : i32 = u_xlati48;
    let x_1546 : vec4<f32> = x_1492.x_AdditionalLightsSpotDir[x_1544];
    let x_1548 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1546.x, x_1546.y, x_1546.z), vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
    let x_1551 : f32 = u_xlat50;
    let x_1552 : i32 = u_xlati48;
    let x_1554 : f32 = x_1492.x_AdditionalLightsAttenuation[x_1552].z;
    let x_1556 : i32 = u_xlati48;
    let x_1558 : f32 = x_1492.x_AdditionalLightsAttenuation[x_1556].w;
    u_xlat50 = ((x_1551 * x_1554) + x_1558);
    let x_1560 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1560, 0.0f, 1.0f);
    let x_1562 : f32 = u_xlat50;
    let x_1563 : f32 = u_xlat50;
    u_xlat50 = (x_1562 * x_1563);
    let x_1565 : f32 = u_xlat35;
    let x_1566 : f32 = u_xlat50;
    u_xlat35 = (x_1565 * x_1566);
    let x_1569 : i32 = u_xlati48;
    let x_1571 : f32 = x_587.x_AdditionalShadowParams[x_1569].w;
    u_xlati50 = i32(x_1571);
    let x_1574 : i32 = u_xlati50;
    u_xlatb51 = (x_1574 >= 0i);
    let x_1576 : bool = u_xlatb51;
    if (x_1576) {
      let x_1580 : i32 = u_xlati48;
      let x_1582 : f32 = x_587.x_AdditionalShadowParams[x_1580].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1582, x_1582, x_1582, x_1582))));
      let x_1586 : bool = u_xlatb51;
      if (x_1586) {
        let x_1590 : vec4<f32> = u_xlat10;
        let x_1593 : vec4<f32> = u_xlat10;
        let x_1596 : vec4<bool> = (abs(vec4<f32>(x_1590.z, x_1590.z, x_1590.y, x_1590.z)) >= abs(vec4<f32>(x_1593.x, x_1593.y, x_1593.x, x_1593.x)));
        let x_1598 : vec3<bool> = vec3<bool>(x_1596.x, x_1596.y, x_1596.z);
        let x_1599 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
        let x_1602 : bool = u_xlatb11.y;
        let x_1604 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1602 & x_1604);
        let x_1606 : vec4<f32> = u_xlat10;
        let x_1609 : vec4<bool> = (-(vec4<f32>(x_1606.z, x_1606.y, x_1606.z, x_1606.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1610 : vec3<bool> = vec3<bool>(x_1609.x, x_1609.y, x_1609.w);
        let x_1611 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1610.x, x_1610.y, x_1611.z, x_1610.z);
        let x_1614 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1614);
        let x_1619 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1619);
        let x_1624 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1624);
        let x_1627 : bool = u_xlatb11.z;
        if (x_1627) {
          let x_1632 : f32 = u_xlat11.y;
          x_1628 = x_1632;
        } else {
          let x_1634 : f32 = u_xlat52;
          x_1628 = x_1634;
        }
        let x_1635 : f32 = x_1628;
        u_xlat52 = x_1635;
        let x_1637 : bool = u_xlatb51;
        if (x_1637) {
          let x_1642 : f32 = u_xlat11.x;
          x_1638 = x_1642;
        } else {
          let x_1644 : f32 = u_xlat52;
          x_1638 = x_1644;
        }
        let x_1645 : f32 = x_1638;
        u_xlat51 = x_1645;
        let x_1646 : i32 = u_xlati48;
        let x_1648 : f32 = x_587.x_AdditionalShadowParams[x_1646].w;
        u_xlat52 = trunc(x_1648);
        let x_1650 : f32 = u_xlat51;
        let x_1651 : f32 = u_xlat52;
        u_xlat51 = (x_1650 + x_1651);
        let x_1653 : f32 = u_xlat51;
        u_xlati50 = i32(x_1653);
      }
      let x_1655 : i32 = u_xlati50;
      u_xlati50 = (x_1655 << bitcast<u32>(2i));
      let x_1657 : vec3<f32> = vs_TEXCOORD7;
      let x_1659 : i32 = u_xlati50;
      let x_1662 : i32 = u_xlati50;
      let x_1666 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_1659 + 1i) / 4i)][((x_1662 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1657.y, x_1657.y, x_1657.y, x_1657.y) * x_1666);
      let x_1668 : i32 = u_xlati50;
      let x_1670 : i32 = u_xlati50;
      let x_1673 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[(x_1668 / 4i)][(x_1670 % 4i)];
      let x_1674 : vec3<f32> = vs_TEXCOORD7;
      let x_1677 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1673 * vec4<f32>(x_1674.x, x_1674.x, x_1674.x, x_1674.x)) + x_1677);
      let x_1679 : i32 = u_xlati50;
      let x_1682 : i32 = u_xlati50;
      let x_1686 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_1679 + 2i) / 4i)][((x_1682 + 2i) % 4i)];
      let x_1687 : vec3<f32> = vs_TEXCOORD7;
      let x_1690 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1686 * vec4<f32>(x_1687.z, x_1687.z, x_1687.z, x_1687.z)) + x_1690);
      let x_1692 : vec4<f32> = u_xlat11;
      let x_1693 : i32 = u_xlati50;
      let x_1696 : i32 = u_xlati50;
      let x_1700 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_1693 + 3i) / 4i)][((x_1696 + 3i) % 4i)];
      u_xlat11 = (x_1692 + x_1700);
      let x_1702 : vec4<f32> = u_xlat11;
      let x_1704 : vec4<f32> = u_xlat11;
      let x_1706 : vec3<f32> = (vec3<f32>(x_1702.x, x_1702.y, x_1702.z) / vec3<f32>(x_1704.w, x_1704.w, x_1704.w));
      let x_1707 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
      let x_1710 : vec4<f32> = u_xlat11;
      let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
      let x_1713 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
      let x_1721 : vec3<f32> = txVec1;
      let x_1723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1721.xy, x_1721.z);
      u_xlat50 = x_1723;
      let x_1724 : i32 = u_xlati48;
      let x_1726 : f32 = x_587.x_AdditionalShadowParams[x_1724].x;
      u_xlat51 = (1.0f + -(x_1726));
      let x_1729 : f32 = u_xlat50;
      let x_1730 : i32 = u_xlati48;
      let x_1732 : f32 = x_587.x_AdditionalShadowParams[x_1730].x;
      let x_1734 : f32 = u_xlat51;
      u_xlat50 = ((x_1729 * x_1732) + x_1734);
      let x_1737 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1737);
      let x_1741 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1741 >= 1.0f);
      let x_1743 : bool = u_xlatb51;
      let x_1744 : bool = u_xlatb52;
      u_xlatb51 = (x_1743 | x_1744);
      let x_1746 : bool = u_xlatb51;
      let x_1747 : f32 = u_xlat50;
      u_xlat50 = select(x_1747, 1.0f, x_1746);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1750 : f32 = u_xlat50;
    u_xlat51 = (-(x_1750) + 1.0f);
    let x_1753 : f32 = u_xlat17;
    let x_1754 : f32 = u_xlat51;
    let x_1756 : f32 = u_xlat50;
    u_xlat50 = ((x_1753 * x_1754) + x_1756);
    let x_1759 : i32 = u_xlati48;
    u_xlati51 = (1i << bitcast<u32>((x_1759 & 31i)));
    let x_1762 : i32 = u_xlati51;
    let x_1765 : f32 = x_1012.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1762) & bitcast<u32>(x_1765)));
    let x_1769 : i32 = u_xlati51;
    if ((x_1769 != 0i)) {
      let x_1773 : i32 = u_xlati48;
      let x_1775 : f32 = x_1012.x_AdditionalLightsLightTypes[x_1773].el;
      u_xlati51 = i32(x_1775);
      let x_1778 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1778 != 0i));
      let x_1782 : i32 = u_xlati48;
      u_xlati11 = (x_1782 << bitcast<u32>(2i));
      let x_1784 : i32 = u_xlati52;
      if ((x_1784 != 0i)) {
        let x_1789 : vec3<f32> = vs_TEXCOORD7;
        let x_1791 : i32 = u_xlati11;
        let x_1794 : i32 = u_xlati11;
        let x_1798 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1791 + 1i) / 4i)][((x_1794 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1789.y, x_1789.y, x_1789.y) * vec3<f32>(x_1798.x, x_1798.y, x_1798.w));
        let x_1801 : i32 = u_xlati11;
        let x_1803 : i32 = u_xlati11;
        let x_1806 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[(x_1801 / 4i)][(x_1803 % 4i)];
        let x_1808 : vec3<f32> = vs_TEXCOORD7;
        let x_1811 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1806.x, x_1806.y, x_1806.w) * vec3<f32>(x_1808.x, x_1808.x, x_1808.x)) + x_1811);
        let x_1813 : i32 = u_xlati11;
        let x_1816 : i32 = u_xlati11;
        let x_1820 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1813 + 2i) / 4i)][((x_1816 + 2i) % 4i)];
        let x_1822 : vec3<f32> = vs_TEXCOORD7;
        let x_1825 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1820.x, x_1820.y, x_1820.w) * vec3<f32>(x_1822.z, x_1822.z, x_1822.z)) + x_1825);
        let x_1827 : vec3<f32> = u_xlat25;
        let x_1828 : i32 = u_xlati11;
        let x_1831 : i32 = u_xlati11;
        let x_1835 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1828 + 3i) / 4i)][((x_1831 + 3i) % 4i)];
        u_xlat25 = (x_1827 + vec3<f32>(x_1835.x, x_1835.y, x_1835.w));
        let x_1838 : vec3<f32> = u_xlat25;
        let x_1840 : vec3<f32> = u_xlat25;
        let x_1842 : vec2<f32> = (vec2<f32>(x_1838.x, x_1838.y) / vec2<f32>(x_1840.z, x_1840.z));
        let x_1843 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1842.x, x_1842.y, x_1843.z);
        let x_1845 : vec3<f32> = u_xlat25;
        let x_1848 : vec2<f32> = ((vec2<f32>(x_1845.x, x_1845.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1849 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1848.x, x_1848.y, x_1849.z);
        let x_1851 : vec3<f32> = u_xlat25;
        let x_1855 : vec2<f32> = clamp(vec2<f32>(x_1851.x, x_1851.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1856 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1855.x, x_1855.y, x_1856.z);
        let x_1858 : i32 = u_xlati48;
        let x_1860 : vec4<f32> = x_1012.x_AdditionalLightsCookieAtlasUVRects[x_1858];
        let x_1862 : vec3<f32> = u_xlat25;
        let x_1865 : i32 = u_xlati48;
        let x_1867 : vec4<f32> = x_1012.x_AdditionalLightsCookieAtlasUVRects[x_1865];
        let x_1869 : vec2<f32> = ((vec2<f32>(x_1860.x, x_1860.y) * vec2<f32>(x_1862.x, x_1862.y)) + vec2<f32>(x_1867.z, x_1867.w));
        let x_1870 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1869.x, x_1869.y, x_1870.z);
      } else {
        let x_1873 : i32 = u_xlati51;
        u_xlatb51 = (x_1873 == 1i);
        let x_1875 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1875);
        let x_1877 : i32 = u_xlati51;
        if ((x_1877 != 0i)) {
          let x_1881 : vec3<f32> = vs_TEXCOORD7;
          let x_1883 : i32 = u_xlati11;
          let x_1886 : i32 = u_xlati11;
          let x_1890 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1883 + 1i) / 4i)][((x_1886 + 1i) % 4i)];
          let x_1892 : vec2<f32> = (vec2<f32>(x_1881.y, x_1881.y) * vec2<f32>(x_1890.x, x_1890.y));
          let x_1893 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1892.x, x_1892.y, x_1893.z, x_1893.w);
          let x_1895 : i32 = u_xlati11;
          let x_1897 : i32 = u_xlati11;
          let x_1900 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[(x_1895 / 4i)][(x_1897 % 4i)];
          let x_1902 : vec3<f32> = vs_TEXCOORD7;
          let x_1905 : vec4<f32> = u_xlat12;
          let x_1907 : vec2<f32> = ((vec2<f32>(x_1900.x, x_1900.y) * vec2<f32>(x_1902.x, x_1902.x)) + vec2<f32>(x_1905.x, x_1905.y));
          let x_1908 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1907.x, x_1907.y, x_1908.z, x_1908.w);
          let x_1910 : i32 = u_xlati11;
          let x_1913 : i32 = u_xlati11;
          let x_1917 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1910 + 2i) / 4i)][((x_1913 + 2i) % 4i)];
          let x_1919 : vec3<f32> = vs_TEXCOORD7;
          let x_1922 : vec4<f32> = u_xlat12;
          let x_1924 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * vec2<f32>(x_1919.z, x_1919.z)) + vec2<f32>(x_1922.x, x_1922.y));
          let x_1925 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1924.x, x_1924.y, x_1925.z, x_1925.w);
          let x_1927 : vec4<f32> = u_xlat12;
          let x_1929 : i32 = u_xlati11;
          let x_1932 : i32 = u_xlati11;
          let x_1936 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1929 + 3i) / 4i)][((x_1932 + 3i) % 4i)];
          let x_1938 : vec2<f32> = (vec2<f32>(x_1927.x, x_1927.y) + vec2<f32>(x_1936.x, x_1936.y));
          let x_1939 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1938.x, x_1938.y, x_1939.z, x_1939.w);
          let x_1941 : vec4<f32> = u_xlat12;
          let x_1944 : vec2<f32> = ((vec2<f32>(x_1941.x, x_1941.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1945 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
          let x_1947 : vec4<f32> = u_xlat12;
          let x_1949 : vec2<f32> = fract(vec2<f32>(x_1947.x, x_1947.y));
          let x_1950 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1949.x, x_1949.y, x_1950.z, x_1950.w);
          let x_1952 : i32 = u_xlati48;
          let x_1954 : vec4<f32> = x_1012.x_AdditionalLightsCookieAtlasUVRects[x_1952];
          let x_1956 : vec4<f32> = u_xlat12;
          let x_1959 : i32 = u_xlati48;
          let x_1961 : vec4<f32> = x_1012.x_AdditionalLightsCookieAtlasUVRects[x_1959];
          let x_1963 : vec2<f32> = ((vec2<f32>(x_1954.x, x_1954.y) * vec2<f32>(x_1956.x, x_1956.y)) + vec2<f32>(x_1961.z, x_1961.w));
          let x_1964 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1963.x, x_1963.y, x_1964.z);
        } else {
          let x_1967 : vec3<f32> = vs_TEXCOORD7;
          let x_1969 : i32 = u_xlati11;
          let x_1972 : i32 = u_xlati11;
          let x_1976 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1969 + 1i) / 4i)][((x_1972 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1967.y, x_1967.y, x_1967.y, x_1967.y) * x_1976);
          let x_1978 : i32 = u_xlati11;
          let x_1980 : i32 = u_xlati11;
          let x_1983 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[(x_1978 / 4i)][(x_1980 % 4i)];
          let x_1984 : vec3<f32> = vs_TEXCOORD7;
          let x_1987 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1983 * vec4<f32>(x_1984.x, x_1984.x, x_1984.x, x_1984.x)) + x_1987);
          let x_1989 : i32 = u_xlati11;
          let x_1992 : i32 = u_xlati11;
          let x_1996 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_1989 + 2i) / 4i)][((x_1992 + 2i) % 4i)];
          let x_1997 : vec3<f32> = vs_TEXCOORD7;
          let x_2000 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1996 * vec4<f32>(x_1997.z, x_1997.z, x_1997.z, x_1997.z)) + x_2000);
          let x_2002 : vec4<f32> = u_xlat12;
          let x_2003 : i32 = u_xlati11;
          let x_2006 : i32 = u_xlati11;
          let x_2010 : vec4<f32> = x_1012.x_AdditionalLightsWorldToLights[((x_2003 + 3i) / 4i)][((x_2006 + 3i) % 4i)];
          u_xlat12 = (x_2002 + x_2010);
          let x_2012 : vec4<f32> = u_xlat12;
          let x_2014 : vec4<f32> = u_xlat12;
          let x_2016 : vec3<f32> = (vec3<f32>(x_2012.x, x_2012.y, x_2012.z) / vec3<f32>(x_2014.w, x_2014.w, x_2014.w));
          let x_2017 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
          let x_2019 : vec4<f32> = u_xlat12;
          let x_2021 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2019.x, x_2019.y, x_2019.z), vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
          let x_2024 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2024);
          let x_2026 : f32 = u_xlat51;
          let x_2028 : vec4<f32> = u_xlat12;
          let x_2030 : vec3<f32> = (vec3<f32>(x_2026, x_2026, x_2026) * vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
          let x_2031 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
          let x_2033 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2033.x, x_2033.y, x_2033.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2038 : f32 = u_xlat51;
          u_xlat51 = max(x_2038, 0.00000099999999747524f);
          let x_2041 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2041);
          let x_2043 : f32 = u_xlat51;
          let x_2045 : vec4<f32> = u_xlat12;
          let x_2047 : vec3<f32> = (vec3<f32>(x_2043, x_2043, x_2043) * vec3<f32>(x_2045.z, x_2045.x, x_2045.y));
          let x_2048 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
          let x_2051 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2051);
          let x_2055 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2055, 0.0f, 1.0f);
          let x_2058 : vec4<f32> = u_xlat13;
          let x_2060 : vec4<bool> = (vec4<f32>(x_2058.y, x_2058.y, x_2058.y, x_2058.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2061 : vec2<bool> = vec2<bool>(x_2060.x, x_2060.w);
          let x_2062 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2061.x, x_2062.y, x_2062.z, x_2061.y);
          let x_2065 : bool = u_xlatb11.x;
          if (x_2065) {
            let x_2070 : f32 = u_xlat13.x;
            x_2066 = x_2070;
          } else {
            let x_2073 : f32 = u_xlat13.x;
            x_2066 = -(x_2073);
          }
          let x_2075 : f32 = x_2066;
          u_xlat11.x = x_2075;
          let x_2078 : bool = u_xlatb11.w;
          if (x_2078) {
            let x_2083 : f32 = u_xlat13.x;
            x_2079 = x_2083;
          } else {
            let x_2086 : f32 = u_xlat13.x;
            x_2079 = -(x_2086);
          }
          let x_2088 : f32 = x_2079;
          u_xlat11.w = x_2088;
          let x_2090 : vec4<f32> = u_xlat12;
          let x_2092 : f32 = u_xlat51;
          let x_2095 : vec4<f32> = u_xlat11;
          let x_2097 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(x_2092, x_2092)) + vec2<f32>(x_2095.x, x_2095.w));
          let x_2098 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2097.x, x_2098.y, x_2098.z, x_2097.y);
          let x_2100 : vec4<f32> = u_xlat11;
          let x_2103 : vec2<f32> = ((vec2<f32>(x_2100.x, x_2100.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2104 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2103.x, x_2104.y, x_2104.z, x_2103.y);
          let x_2106 : vec4<f32> = u_xlat11;
          let x_2110 : vec2<f32> = clamp(vec2<f32>(x_2106.x, x_2106.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2111 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2110.x, x_2111.y, x_2111.z, x_2110.y);
          let x_2113 : i32 = u_xlati48;
          let x_2115 : vec4<f32> = x_1012.x_AdditionalLightsCookieAtlasUVRects[x_2113];
          let x_2117 : vec4<f32> = u_xlat11;
          let x_2120 : i32 = u_xlati48;
          let x_2122 : vec4<f32> = x_1012.x_AdditionalLightsCookieAtlasUVRects[x_2120];
          let x_2124 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.y) * vec2<f32>(x_2117.x, x_2117.w)) + vec2<f32>(x_2122.z, x_2122.w));
          let x_2125 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2124.x, x_2124.y, x_2125.z);
        }
      }
      let x_2132 : vec3<f32> = u_xlat25;
      let x_2134 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2132.x, x_2132.y), 0.0f);
      u_xlat11 = x_2134;
      let x_2136 : bool = u_xlatb7.y;
      if (x_2136) {
        let x_2141 : f32 = u_xlat11.w;
        x_2137 = x_2141;
      } else {
        let x_2144 : f32 = u_xlat11.x;
        x_2137 = x_2144;
      }
      let x_2145 : f32 = x_2137;
      u_xlat51 = x_2145;
      let x_2147 : bool = u_xlatb7.x;
      if (x_2147) {
        let x_2151 : vec4<f32> = u_xlat11;
        x_2148 = vec3<f32>(x_2151.x, x_2151.y, x_2151.z);
      } else {
        let x_2154 : f32 = u_xlat51;
        x_2148 = vec3<f32>(x_2154, x_2154, x_2154);
      }
      let x_2156 : vec3<f32> = x_2148;
      let x_2157 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2163 : vec4<f32> = u_xlat11;
    let x_2165 : i32 = u_xlati48;
    let x_2167 : vec4<f32> = x_1492.x_AdditionalLightsColor[x_2165];
    let x_2169 : vec3<f32> = (vec3<f32>(x_2163.x, x_2163.y, x_2163.z) * vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
    let x_2170 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
    let x_2172 : f32 = u_xlat35;
    let x_2173 : f32 = u_xlat50;
    u_xlat48 = (x_2172 * x_2173);
    let x_2175 : vec3<f32> = u_xlat2;
    let x_2176 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(x_2175, vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
    let x_2179 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2179, 0.0f, 1.0f);
    let x_2181 : f32 = u_xlat48;
    let x_2182 : f32 = u_xlat35;
    u_xlat48 = (x_2181 * x_2182);
    let x_2184 : f32 = u_xlat48;
    let x_2186 : vec4<f32> = u_xlat11;
    let x_2188 : vec3<f32> = (vec3<f32>(x_2184, x_2184, x_2184) * vec3<f32>(x_2186.x, x_2186.y, x_2186.z));
    let x_2189 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
    let x_2191 : vec4<f32> = u_xlat9;
    let x_2193 : f32 = u_xlat49;
    let x_2196 : vec4<f32> = u_xlat1;
    let x_2198 : vec3<f32> = ((vec3<f32>(x_2191.x, x_2191.y, x_2191.z) * vec3<f32>(x_2193, x_2193, x_2193)) + vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
    let x_2199 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
    let x_2201 : vec4<f32> = u_xlat9;
    let x_2203 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2201.x, x_2201.y, x_2201.z), vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
    let x_2206 : f32 = u_xlat48;
    u_xlat48 = max(x_2206, 1.17549435e-38f);
    let x_2208 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2208);
    let x_2210 : f32 = u_xlat48;
    let x_2212 : vec4<f32> = u_xlat9;
    let x_2214 : vec3<f32> = (vec3<f32>(x_2210, x_2210, x_2210) * vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
    let x_2217 : vec3<f32> = u_xlat2;
    let x_2218 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(x_2217, vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
    let x_2221 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2221, 0.0f, 1.0f);
    let x_2223 : vec4<f32> = u_xlat10;
    let x_2225 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2223.x, x_2223.y, x_2223.z), vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
    let x_2228 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2228, 0.0f, 1.0f);
    let x_2230 : f32 = u_xlat48;
    let x_2231 : f32 = u_xlat48;
    u_xlat48 = (x_2230 * x_2231);
    let x_2233 : f32 = u_xlat48;
    let x_2235 : f32 = u_xlat0.x;
    u_xlat48 = ((x_2233 * x_2235) + 1.00001001358032226562f);
    let x_2238 : f32 = u_xlat35;
    let x_2239 : f32 = u_xlat35;
    u_xlat35 = (x_2238 * x_2239);
    let x_2241 : f32 = u_xlat48;
    let x_2242 : f32 = u_xlat48;
    u_xlat48 = (x_2241 * x_2242);
    let x_2244 : f32 = u_xlat35;
    u_xlat35 = max(x_2244, 0.10000000149011611938f);
    let x_2246 : f32 = u_xlat48;
    let x_2247 : f32 = u_xlat35;
    u_xlat48 = (x_2246 * x_2247);
    let x_2249 : f32 = u_xlat46;
    let x_2250 : f32 = u_xlat48;
    u_xlat48 = (x_2249 * x_2250);
    let x_2252 : f32 = u_xlat44;
    let x_2253 : f32 = u_xlat48;
    u_xlat48 = (x_2252 / x_2253);
    let x_2255 : vec4<f32> = u_xlat5;
    let x_2257 : f32 = u_xlat48;
    let x_2260 : vec4<f32> = u_xlat6;
    let x_2262 : vec3<f32> = ((vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * vec3<f32>(x_2257, x_2257, x_2257)) + vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
    let x_2263 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
    let x_2265 : vec4<f32> = u_xlat9;
    let x_2267 : vec4<f32> = u_xlat11;
    let x_2270 : vec4<f32> = u_xlat8;
    let x_2272 : vec3<f32> = ((vec3<f32>(x_2265.x, x_2265.y, x_2265.z) * vec3<f32>(x_2267.x, x_2267.y, x_2267.z)) + vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
    let x_2273 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);

    continuing {
      let x_2275 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2275 + bitcast<u32>(1i));
    }
  }
  let x_2277 : vec4<f32> = u_xlat4;
  let x_2279 : f32 = u_xlat14;
  let x_2282 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2277.x, x_2277.y, x_2277.z) * vec3<f32>(x_2279, x_2279, x_2279)) + vec3<f32>(x_2282.x, x_2282.z, x_2282.w));
  let x_2285 : vec4<f32> = u_xlat8;
  let x_2287 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2285.x, x_2285.y, x_2285.z) + x_2287);
  let x_2289 : f32 = u_xlat42;
  let x_2291 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2289, x_2289, x_2289) * x_2291);
  let x_2293 : f32 = u_xlat43;
  let x_2294 : f32 = u_xlat43;
  u_xlat42 = (x_2293 * -(x_2294));
  let x_2297 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2297);
  let x_2301 : vec3<f32> = u_xlat0;
  let x_2302 : f32 = u_xlat42;
  let x_2304 : vec3<f32> = (x_2301 * vec3<f32>(x_2302, x_2302, x_2302));
  let x_2305 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
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


