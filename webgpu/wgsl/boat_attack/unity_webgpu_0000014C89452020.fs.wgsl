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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_983 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1171 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1460 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var txVec0 : vec3<f32>;
  var x_936 : f32;
  var x_1066 : f32;
  var x_1077 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1596 : f32;
  var x_1606 : f32;
  var txVec1 : vec3<f32>;
  var x_2027 : f32;
  var x_2040 : f32;
  var x_2088 : f32;
  var x_2099 : vec3<f32>;
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
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat15;
  let x_524 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat15;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_541 : f32 = u_xlat15.x;
    x_537 = x_541;
  } else {
    let x_544 : f32 = x_111.unity_MatrixV[0i].z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat2.x = x_545;
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat15.y;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_111.unity_MatrixV[1i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.y = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat15.z;
    x_560 = x_564;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[2i].z;
    x_560 = x_568;
  }
  let x_569 : f32 = x_560;
  u_xlat2.z = x_569;
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_577);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582);
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_596 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres0;
  let x_599 : vec3<f32> = (x_586 + -(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres1;
  let x_607 : vec3<f32> = (x_602 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_613 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres2;
  let x_616 : vec3<f32> = (x_610 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres3;
  let x_624 : vec3<f32> = (x_619 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = x_594.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_653 < x_655);
  let x_658 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_658);
  let x_662 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_662);
  let x_666 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_674);
  let x_679 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_679);
  let x_683 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.y, x_688.z, x_688.w));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_696.z);
  let x_699 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_699, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_704 : f32 = u_xlat43;
  u_xlat43 = (-(x_704) + 4.0f);
  let x_709 : f32 = u_xlat43;
  u_xlatu43 = u32(x_709);
  let x_713 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_713) << bitcast<u32>(2i));
  let x_716 : vec3<f32> = vs_TEXCOORD7;
  let x_718 : i32 = u_xlati43;
  let x_721 : i32 = u_xlati43;
  let x_725 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_718 + 1i) / 4i)][((x_721 + 1i) % 4i)];
  let x_727 : vec3<f32> = (vec3<f32>(x_716.y, x_716.y, x_716.y) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : i32 = u_xlati43;
  let x_732 : i32 = u_xlati43;
  let x_735 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_730 / 4i)][(x_732 % 4i)];
  let x_737 : vec3<f32> = vs_TEXCOORD7;
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec3<f32> = ((vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737.x, x_737.x, x_737.x)) + vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : i32 = u_xlati43;
  let x_748 : i32 = u_xlati43;
  let x_752 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_745 + 2i) / 4i)][((x_748 + 2i) % 4i)];
  let x_754 : vec3<f32> = vs_TEXCOORD7;
  let x_757 : vec4<f32> = u_xlat3;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754.z, x_754.z, x_754.z)) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat3;
  let x_764 : i32 = u_xlati43;
  let x_767 : i32 = u_xlati43;
  let x_771 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_764 + 3i) / 4i)][((x_767 + 3i) % 4i)];
  let x_773 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_781 : vec4<f32> = vs_TEXCOORD0;
  let x_784 : f32 = x_111.x_GlobalMipBias.x;
  let x_785 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_781.z, x_781.w), x_784);
  u_xlat4 = x_785;
  let x_790 : vec4<f32> = vs_TEXCOORD0;
  let x_793 : f32 = x_111.x_GlobalMipBias.x;
  let x_794 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_790.z, x_790.w), x_793);
  let x_795 : vec3<f32> = vec3<f32>(x_794.x, x_794.y, x_794.z);
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat4;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : f32 = u_xlat43;
  u_xlat43 = (x_810 + 0.5f);
  let x_812 : f32 = u_xlat43;
  let x_814 : vec4<f32> = u_xlat6;
  let x_816 : vec3<f32> = (vec3<f32>(x_812, x_812, x_812) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : f32 = u_xlat4.w;
  u_xlat43 = max(x_820, 0.00009999999747378752f);
  let x_823 : vec4<f32> = u_xlat4;
  let x_825 : f32 = u_xlat43;
  let x_827 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) / vec3<f32>(x_825, x_825, x_825));
  let x_828 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_831 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_831) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_837 : f32 = u_xlat28;
  let x_838 : f32 = u_xlat43;
  u_xlat44 = (x_837 + -(x_838));
  let x_841 : f32 = u_xlat43;
  let x_843 : vec4<f32> = u_xlat5;
  let x_845 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat5;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_853 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat0;
  let x_857 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.x, x_855.x) * vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_863 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : f32 = u_xlat28;
  u_xlat0.x = (-(x_865) + 1.0f);
  let x_870 : f32 = u_xlat0.x;
  let x_872 : f32 = u_xlat0.x;
  u_xlat28 = (x_870 * x_872);
  let x_874 : f32 = u_xlat28;
  u_xlat28 = max(x_874, 0.0078125f);
  let x_877 : f32 = u_xlat28;
  let x_878 : f32 = u_xlat28;
  u_xlat43 = (x_877 * x_878);
  let x_880 : f32 = u_xlat44;
  u_xlat44 = (x_880 + 1.0f);
  let x_882 : f32 = u_xlat44;
  u_xlat44 = clamp(x_882, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat28;
  u_xlat45 = ((x_885 * 4.0f) + 2.0f);
  let x_888 : f32 = u_xlat14;
  u_xlat14 = min(x_888, 1.0f);
  let x_892 : vec4<f32> = u_xlat3;
  let x_893 : vec2<f32> = vec2<f32>(x_892.x, x_892.y);
  let x_895 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_893.x, x_893.y, x_895);
  let x_907 : vec3<f32> = txVec0;
  let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
  u_xlat3.x = x_909;
  let x_913 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_913) + 1.0f);
  let x_917 : f32 = u_xlat3.x;
  let x_919 : f32 = x_594.x_MainLightShadowParams.x;
  let x_921 : f32 = u_xlat17;
  u_xlat3.x = ((x_917 * x_919) + x_921);
  let x_926 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_926);
  let x_930 : f32 = u_xlat3.z;
  u_xlatb31 = (x_930 >= 1.0f);
  let x_932 : bool = u_xlatb31;
  let x_933 : bool = u_xlatb17;
  u_xlatb17 = (x_932 | x_933);
  let x_935 : bool = u_xlatb17;
  if (x_935) {
    x_936 = 1.0f;
  } else {
    let x_941 : f32 = u_xlat3.x;
    x_936 = x_941;
  }
  let x_942 : f32 = x_936;
  u_xlat3.x = x_942;
  let x_944 : vec3<f32> = vs_TEXCOORD7;
  let x_946 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_948 : vec3<f32> = (x_944 + -(x_946));
  let x_949 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat7;
  let x_953 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_957 : f32 = u_xlat17;
  let x_959 : f32 = x_594.x_MainLightShadowParams.z;
  let x_962 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat31 = ((x_957 * x_959) + x_962);
  let x_964 : f32 = u_xlat31;
  u_xlat31 = clamp(x_964, 0.0f, 1.0f);
  let x_968 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_968) + 1.0f);
  let x_971 : f32 = u_xlat31;
  let x_972 : f32 = u_xlat46;
  let x_975 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_971 * x_972) + x_975);
  let x_985 : f32 = x_983.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_985 == -1.0f));
  let x_987 : bool = u_xlatb31;
  if (x_987) {
    let x_990 : vec3<f32> = vs_TEXCOORD7;
    let x_993 : vec4<f32> = x_983.x_MainLightWorldToLight[1i];
    let x_995 : vec2<f32> = (vec2<f32>(x_990.y, x_990.y) * vec2<f32>(x_993.x, x_993.y));
    let x_996 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
    let x_999 : vec4<f32> = x_983.x_MainLightWorldToLight[0i];
    let x_1001 : vec3<f32> = vs_TEXCOORD7;
    let x_1004 : vec4<f32> = u_xlat7;
    let x_1006 : vec2<f32> = ((vec2<f32>(x_999.x, x_999.y) * vec2<f32>(x_1001.x, x_1001.x)) + vec2<f32>(x_1004.x, x_1004.y));
    let x_1007 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
    let x_1010 : vec4<f32> = x_983.x_MainLightWorldToLight[2i];
    let x_1012 : vec3<f32> = vs_TEXCOORD7;
    let x_1015 : vec4<f32> = u_xlat7;
    let x_1017 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.y) * vec2<f32>(x_1012.z, x_1012.z)) + vec2<f32>(x_1015.x, x_1015.y));
    let x_1018 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
    let x_1020 : vec4<f32> = u_xlat7;
    let x_1023 : vec4<f32> = x_983.x_MainLightWorldToLight[3i];
    let x_1025 : vec2<f32> = (vec2<f32>(x_1020.x, x_1020.y) + vec2<f32>(x_1023.x, x_1023.y));
    let x_1026 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
    let x_1028 : vec4<f32> = u_xlat7;
    let x_1031 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1032 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
    let x_1039 : vec4<f32> = u_xlat7;
    let x_1042 : f32 = x_111.x_GlobalMipBias.x;
    let x_1043 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1039.x, x_1039.y), x_1042);
    u_xlat7 = x_1043;
    let x_1048 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1050 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1052 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1054 : f32 = x_983.x_MainLightCookieTextureFormat;
    let x_1055 : vec4<f32> = vec4<f32>(x_1048, x_1050, x_1052, x_1054);
    let x_1062 : vec4<bool> = (vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1062.x, x_1062.y);
    let x_1065 : bool = u_xlatb8.y;
    if (x_1065) {
      let x_1070 : f32 = u_xlat7.w;
      x_1066 = x_1070;
    } else {
      let x_1073 : f32 = u_xlat7.x;
      x_1066 = x_1073;
    }
    let x_1074 : f32 = x_1066;
    u_xlat31 = x_1074;
    let x_1076 : bool = u_xlatb8.x;
    if (x_1076) {
      let x_1080 : vec4<f32> = u_xlat7;
      x_1077 = vec3<f32>(x_1080.x, x_1080.y, x_1080.z);
    } else {
      let x_1083 : f32 = u_xlat31;
      x_1077 = vec3<f32>(x_1083, x_1083, x_1083);
    }
    let x_1085 : vec3<f32> = x_1077;
    let x_1086 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1092 : vec4<f32> = u_xlat7;
  let x_1095 : vec4<f32> = x_111.x_MainLightColor;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec3<f32> = u_xlat2;
  let x_1102 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1100), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : f32 = u_xlat31;
  let x_1106 : f32 = u_xlat31;
  u_xlat31 = (x_1105 + x_1106);
  let x_1108 : vec4<f32> = u_xlat1;
  let x_1110 : f32 = u_xlat31;
  let x_1114 : vec3<f32> = u_xlat2;
  let x_1116 : vec3<f32> = ((vec3<f32>(x_1108.x, x_1108.y, x_1108.z) * -(vec3<f32>(x_1110, x_1110, x_1110))) + -(x_1114));
  let x_1117 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec4<f32> = u_xlat1;
  let x_1121 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), x_1121);
  let x_1123 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1123, 0.0f, 1.0f);
  let x_1125 : f32 = u_xlat31;
  u_xlat31 = (-(x_1125) + 1.0f);
  let x_1128 : f32 = u_xlat31;
  let x_1129 : f32 = u_xlat31;
  u_xlat31 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat31;
  let x_1132 : f32 = u_xlat31;
  u_xlat31 = (x_1131 * x_1132);
  let x_1135 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1135) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1142 : f32 = u_xlat0.x;
  let x_1143 : f32 = u_xlat46;
  u_xlat0.x = (x_1142 * x_1143);
  let x_1147 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1147 * 6.0f);
  let x_1159 : vec4<f32> = u_xlat8;
  let x_1162 : f32 = u_xlat0.x;
  let x_1163 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1159.x, x_1159.y, x_1159.z), x_1162);
  u_xlat8 = x_1163;
  let x_1165 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1165 + -1.0f);
  let x_1173 : f32 = x_1171.unity_SpecCube0_HDR.w;
  let x_1175 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1173 * x_1175) + 1.0f);
  let x_1180 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1180, 0.0f);
  let x_1184 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1184);
  let x_1188 : f32 = u_xlat0.x;
  let x_1190 : f32 = x_1171.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1188 * x_1190);
  let x_1194 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1194);
  let x_1198 : f32 = u_xlat0.x;
  let x_1200 : f32 = x_1171.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1198 * x_1200);
  let x_1203 : vec4<f32> = u_xlat8;
  let x_1205 : vec3<f32> = u_xlat0;
  let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205.x, x_1205.x, x_1205.x));
  let x_1208 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : f32 = u_xlat28;
  let x_1212 : f32 = u_xlat28;
  let x_1216 : vec2<f32> = ((vec2<f32>(x_1210, x_1210) * vec2<f32>(x_1212, x_1212)) + vec2<f32>(-1.0f, 1.0f));
  let x_1217 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1216.x, x_1217.y, x_1216.y);
  let x_1220 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1220);
  let x_1222 : vec4<f32> = u_xlat5;
  let x_1225 : f32 = u_xlat44;
  let x_1227 : vec3<f32> = (-(vec3<f32>(x_1222.x, x_1222.y, x_1222.z)) + vec3<f32>(x_1225, x_1225, x_1225));
  let x_1228 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : f32 = u_xlat31;
  let x_1232 : vec4<f32> = u_xlat9;
  let x_1235 : vec4<f32> = u_xlat5;
  let x_1237 : vec3<f32> = ((vec3<f32>(x_1230, x_1230, x_1230) * vec3<f32>(x_1232.x, x_1232.y, x_1232.z)) + vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1240 : f32 = u_xlat28;
  let x_1242 : vec4<f32> = u_xlat9;
  let x_1244 : vec3<f32> = (vec3<f32>(x_1240, x_1240, x_1240) * vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1245 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat8;
  let x_1249 : vec4<f32> = u_xlat9;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat4;
  let x_1256 : vec4<f32> = u_xlat6;
  let x_1259 : vec4<f32> = u_xlat8;
  let x_1261 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * vec3<f32>(x_1256.x, x_1256.y, x_1256.z)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1265 : f32 = u_xlat3.x;
  let x_1267 : f32 = x_1171.unity_LightData.z;
  u_xlat28 = (x_1265 * x_1267);
  let x_1269 : vec4<f32> = u_xlat1;
  let x_1272 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1269.x, x_1269.y, x_1269.z), vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1275, 0.0f, 1.0f);
  let x_1277 : f32 = u_xlat28;
  let x_1278 : f32 = u_xlat44;
  u_xlat28 = (x_1277 * x_1278);
  let x_1280 : f32 = u_xlat28;
  let x_1282 : vec4<f32> = u_xlat7;
  let x_1284 : vec3<f32> = (vec3<f32>(x_1280, x_1280, x_1280) * vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : vec3<f32> = u_xlat2;
  let x_1289 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1291 : vec3<f32> = (x_1287 + vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat8;
  let x_1296 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : f32 = u_xlat28;
  u_xlat28 = max(x_1299, 1.17549435e-38f);
  let x_1302 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1302);
  let x_1304 : f32 = u_xlat28;
  let x_1306 : vec4<f32> = u_xlat8;
  let x_1308 : vec3<f32> = (vec3<f32>(x_1304, x_1304, x_1304) * vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : vec4<f32> = u_xlat1;
  let x_1313 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1311.x, x_1311.y, x_1311.z), vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1316, 0.0f, 1.0f);
  let x_1319 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1321 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1319.x, x_1319.y, x_1319.z), vec3<f32>(x_1321.x, x_1321.y, x_1321.z));
  let x_1324 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1324, 0.0f, 1.0f);
  let x_1326 : f32 = u_xlat28;
  let x_1327 : f32 = u_xlat28;
  u_xlat28 = (x_1326 * x_1327);
  let x_1329 : f32 = u_xlat28;
  let x_1331 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1329 * x_1331) + 1.00001001358032226562f);
  let x_1335 : f32 = u_xlat44;
  let x_1336 : f32 = u_xlat44;
  u_xlat44 = (x_1335 * x_1336);
  let x_1338 : f32 = u_xlat28;
  let x_1339 : f32 = u_xlat28;
  u_xlat28 = (x_1338 * x_1339);
  let x_1341 : f32 = u_xlat44;
  u_xlat44 = max(x_1341, 0.10000000149011611938f);
  let x_1344 : f32 = u_xlat28;
  let x_1345 : f32 = u_xlat44;
  u_xlat28 = (x_1344 * x_1345);
  let x_1347 : f32 = u_xlat45;
  let x_1348 : f32 = u_xlat28;
  u_xlat28 = (x_1347 * x_1348);
  let x_1350 : f32 = u_xlat43;
  let x_1351 : f32 = u_xlat28;
  u_xlat28 = (x_1350 / x_1351);
  let x_1353 : vec4<f32> = u_xlat5;
  let x_1355 : f32 = u_xlat28;
  let x_1358 : vec4<f32> = u_xlat6;
  let x_1360 : vec3<f32> = ((vec3<f32>(x_1353.x, x_1353.y, x_1353.z) * vec3<f32>(x_1355, x_1355, x_1355)) + vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : vec4<f32> = u_xlat7;
  let x_1365 : vec4<f32> = u_xlat8;
  let x_1367 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1371 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1373 : f32 = x_1171.unity_LightData.y;
  u_xlat28 = min(x_1371, x_1373);
  let x_1376 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1376));
  let x_1379 : f32 = u_xlat17;
  let x_1381 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_1384 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1379 * x_1381) + x_1384);
  let x_1386 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1386, 0.0f, 1.0f);
  let x_1389 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1391 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1393 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1395 : f32 = x_983.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1396 : vec4<f32> = vec4<f32>(x_1389, x_1391, x_1393, x_1395);
  let x_1402 : vec4<bool> = (vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1396.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1403 : vec2<bool> = vec2<bool>(x_1402.x, x_1402.y);
  let x_1404 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1416 : u32 = u_xlatu_loop_1;
    let x_1417 : u32 = u_xlatu28;
    if ((x_1416 < x_1417)) {
    } else {
      break;
    }
    let x_1420 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1420 >> 2u);
    let x_1423 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1423 & 3u));
    let x_1426 : u32 = u_xlatu46;
    let x_1429 : vec4<f32> = x_1171.unity_LightIndices[bitcast<i32>(x_1426)];
    let x_1439 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1444 : vec4<u32> = indexable[x_1439];
    u_xlat46 = dot(x_1429, bitcast<vec4<f32>>(x_1444));
    let x_1448 : f32 = u_xlat46;
    u_xlati46 = i32(x_1448);
    let x_1450 : vec3<f32> = vs_TEXCOORD7;
    let x_1461 : i32 = u_xlati46;
    let x_1463 : vec4<f32> = x_1460.x_AdditionalLightsPosition[x_1461];
    let x_1466 : i32 = u_xlati46;
    let x_1468 : vec4<f32> = x_1460.x_AdditionalLightsPosition[x_1466];
    let x_1470 : vec3<f32> = ((-(x_1450) * vec3<f32>(x_1463.w, x_1463.w, x_1463.w)) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
    let x_1471 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
    let x_1474 : vec4<f32> = u_xlat9;
    let x_1476 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1474.x, x_1474.y, x_1474.z), vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
    let x_1479 : f32 = u_xlat47;
    u_xlat47 = max(x_1479, 0.00006103515625f);
    let x_1482 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1482);
    let x_1484 : f32 = u_xlat48;
    let x_1486 : vec4<f32> = u_xlat9;
    let x_1488 : vec3<f32> = (vec3<f32>(x_1484, x_1484, x_1484) * vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
    let x_1489 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
    let x_1492 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1492);
    let x_1494 : f32 = u_xlat47;
    let x_1495 : i32 = u_xlati46;
    let x_1497 : f32 = x_1460.x_AdditionalLightsAttenuation[x_1495].x;
    u_xlat47 = (x_1494 * x_1497);
    let x_1499 : f32 = u_xlat47;
    let x_1501 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1499) * x_1501) + 1.0f);
    let x_1504 : f32 = u_xlat47;
    u_xlat47 = max(x_1504, 0.0f);
    let x_1506 : f32 = u_xlat47;
    let x_1507 : f32 = u_xlat47;
    u_xlat47 = (x_1506 * x_1507);
    let x_1509 : f32 = u_xlat47;
    let x_1510 : f32 = u_xlat49;
    u_xlat47 = (x_1509 * x_1510);
    let x_1512 : i32 = u_xlati46;
    let x_1514 : vec4<f32> = x_1460.x_AdditionalLightsSpotDir[x_1512];
    let x_1516 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1514.x, x_1514.y, x_1514.z), vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : f32 = u_xlat49;
    let x_1520 : i32 = u_xlati46;
    let x_1522 : f32 = x_1460.x_AdditionalLightsAttenuation[x_1520].z;
    let x_1524 : i32 = u_xlati46;
    let x_1526 : f32 = x_1460.x_AdditionalLightsAttenuation[x_1524].w;
    u_xlat49 = ((x_1519 * x_1522) + x_1526);
    let x_1528 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1528, 0.0f, 1.0f);
    let x_1530 : f32 = u_xlat49;
    let x_1531 : f32 = u_xlat49;
    u_xlat49 = (x_1530 * x_1531);
    let x_1533 : f32 = u_xlat47;
    let x_1534 : f32 = u_xlat49;
    u_xlat47 = (x_1533 * x_1534);
    let x_1537 : i32 = u_xlati46;
    let x_1539 : f32 = x_594.x_AdditionalShadowParams[x_1537].w;
    u_xlati49 = i32(x_1539);
    let x_1542 : i32 = u_xlati49;
    u_xlatb50 = (x_1542 >= 0i);
    let x_1544 : bool = u_xlatb50;
    if (x_1544) {
      let x_1548 : i32 = u_xlati46;
      let x_1550 : f32 = x_594.x_AdditionalShadowParams[x_1548].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1550, x_1550, x_1550, x_1550))));
      let x_1554 : bool = u_xlatb50;
      if (x_1554) {
        let x_1558 : vec4<f32> = u_xlat10;
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1564 : vec4<bool> = (abs(vec4<f32>(x_1558.z, x_1558.z, x_1558.y, x_1558.z)) >= abs(vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.x)));
        let x_1566 : vec3<bool> = vec3<bool>(x_1564.x, x_1564.y, x_1564.z);
        let x_1567 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
        let x_1570 : bool = u_xlatb11.y;
        let x_1572 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1570 & x_1572);
        let x_1574 : vec4<f32> = u_xlat10;
        let x_1577 : vec4<bool> = (-(vec4<f32>(x_1574.z, x_1574.y, x_1574.z, x_1574.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1578 : vec3<bool> = vec3<bool>(x_1577.x, x_1577.y, x_1577.w);
        let x_1579 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1578.x, x_1578.y, x_1579.z, x_1578.z);
        let x_1582 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1582);
        let x_1587 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1587);
        let x_1592 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1592);
        let x_1595 : bool = u_xlatb11.z;
        if (x_1595) {
          let x_1600 : f32 = u_xlat11.y;
          x_1596 = x_1600;
        } else {
          let x_1602 : f32 = u_xlat51;
          x_1596 = x_1602;
        }
        let x_1603 : f32 = x_1596;
        u_xlat51 = x_1603;
        let x_1605 : bool = u_xlatb50;
        if (x_1605) {
          let x_1610 : f32 = u_xlat11.x;
          x_1606 = x_1610;
        } else {
          let x_1612 : f32 = u_xlat51;
          x_1606 = x_1612;
        }
        let x_1613 : f32 = x_1606;
        u_xlat50 = x_1613;
        let x_1614 : i32 = u_xlati46;
        let x_1616 : f32 = x_594.x_AdditionalShadowParams[x_1614].w;
        u_xlat51 = trunc(x_1616);
        let x_1618 : f32 = u_xlat50;
        let x_1619 : f32 = u_xlat51;
        u_xlat50 = (x_1618 + x_1619);
        let x_1621 : f32 = u_xlat50;
        u_xlati49 = i32(x_1621);
      }
      let x_1623 : i32 = u_xlati49;
      u_xlati49 = (x_1623 << bitcast<u32>(2i));
      let x_1625 : vec3<f32> = vs_TEXCOORD7;
      let x_1627 : i32 = u_xlati49;
      let x_1630 : i32 = u_xlati49;
      let x_1634 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1627 + 1i) / 4i)][((x_1630 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1625.y, x_1625.y, x_1625.y, x_1625.y) * x_1634);
      let x_1636 : i32 = u_xlati49;
      let x_1638 : i32 = u_xlati49;
      let x_1641 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_1636 / 4i)][(x_1638 % 4i)];
      let x_1642 : vec3<f32> = vs_TEXCOORD7;
      let x_1645 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1641 * vec4<f32>(x_1642.x, x_1642.x, x_1642.x, x_1642.x)) + x_1645);
      let x_1647 : i32 = u_xlati49;
      let x_1650 : i32 = u_xlati49;
      let x_1654 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1647 + 2i) / 4i)][((x_1650 + 2i) % 4i)];
      let x_1655 : vec3<f32> = vs_TEXCOORD7;
      let x_1658 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1654 * vec4<f32>(x_1655.z, x_1655.z, x_1655.z, x_1655.z)) + x_1658);
      let x_1660 : vec4<f32> = u_xlat11;
      let x_1661 : i32 = u_xlati49;
      let x_1664 : i32 = u_xlati49;
      let x_1668 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1661 + 3i) / 4i)][((x_1664 + 3i) % 4i)];
      u_xlat11 = (x_1660 + x_1668);
      let x_1670 : vec4<f32> = u_xlat11;
      let x_1672 : vec4<f32> = u_xlat11;
      let x_1674 : vec3<f32> = (vec3<f32>(x_1670.x, x_1670.y, x_1670.z) / vec3<f32>(x_1672.w, x_1672.w, x_1672.w));
      let x_1675 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
      let x_1678 : vec4<f32> = u_xlat11;
      let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
      let x_1681 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
      let x_1689 : vec3<f32> = txVec1;
      let x_1691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
      u_xlat49 = x_1691;
      let x_1692 : i32 = u_xlati46;
      let x_1694 : f32 = x_594.x_AdditionalShadowParams[x_1692].x;
      u_xlat50 = (1.0f + -(x_1694));
      let x_1697 : f32 = u_xlat49;
      let x_1698 : i32 = u_xlati46;
      let x_1700 : f32 = x_594.x_AdditionalShadowParams[x_1698].x;
      let x_1702 : f32 = u_xlat50;
      u_xlat49 = ((x_1697 * x_1700) + x_1702);
      let x_1705 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1705);
      let x_1709 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1709 >= 1.0f);
      let x_1711 : bool = u_xlatb50;
      let x_1712 : bool = u_xlatb51;
      u_xlatb50 = (x_1711 | x_1712);
      let x_1714 : bool = u_xlatb50;
      let x_1715 : f32 = u_xlat49;
      u_xlat49 = select(x_1715, 1.0f, x_1714);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1718 : f32 = u_xlat49;
    u_xlat50 = (-(x_1718) + 1.0f);
    let x_1721 : f32 = u_xlat44;
    let x_1722 : f32 = u_xlat50;
    let x_1724 : f32 = u_xlat49;
    u_xlat49 = ((x_1721 * x_1722) + x_1724);
    let x_1727 : i32 = u_xlati46;
    u_xlati50 = (1i << bitcast<u32>((x_1727 & 31i)));
    let x_1730 : i32 = u_xlati50;
    let x_1733 : f32 = x_983.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1730) & bitcast<u32>(x_1733)));
    let x_1737 : i32 = u_xlati50;
    if ((x_1737 != 0i)) {
      let x_1741 : i32 = u_xlati46;
      let x_1743 : f32 = x_983.x_AdditionalLightsLightTypes[x_1741].el;
      u_xlati50 = i32(x_1743);
      let x_1746 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1746 != 0i));
      let x_1750 : i32 = u_xlati46;
      u_xlati52 = (x_1750 << bitcast<u32>(2i));
      let x_1752 : i32 = u_xlati51;
      if ((x_1752 != 0i)) {
        let x_1756 : vec3<f32> = vs_TEXCOORD7;
        let x_1758 : i32 = u_xlati52;
        let x_1761 : i32 = u_xlati52;
        let x_1765 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1758 + 1i) / 4i)][((x_1761 + 1i) % 4i)];
        let x_1767 : vec3<f32> = (vec3<f32>(x_1756.y, x_1756.y, x_1756.y) * vec3<f32>(x_1765.x, x_1765.y, x_1765.w));
        let x_1768 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1768.w);
        let x_1770 : i32 = u_xlati52;
        let x_1772 : i32 = u_xlati52;
        let x_1775 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[(x_1770 / 4i)][(x_1772 % 4i)];
        let x_1777 : vec3<f32> = vs_TEXCOORD7;
        let x_1780 : vec4<f32> = u_xlat11;
        let x_1782 : vec3<f32> = ((vec3<f32>(x_1775.x, x_1775.y, x_1775.w) * vec3<f32>(x_1777.x, x_1777.x, x_1777.x)) + vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
        let x_1783 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
        let x_1785 : i32 = u_xlati52;
        let x_1788 : i32 = u_xlati52;
        let x_1792 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1785 + 2i) / 4i)][((x_1788 + 2i) % 4i)];
        let x_1794 : vec3<f32> = vs_TEXCOORD7;
        let x_1797 : vec4<f32> = u_xlat11;
        let x_1799 : vec3<f32> = ((vec3<f32>(x_1792.x, x_1792.y, x_1792.w) * vec3<f32>(x_1794.z, x_1794.z, x_1794.z)) + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
        let x_1802 : vec4<f32> = u_xlat11;
        let x_1804 : i32 = u_xlati52;
        let x_1807 : i32 = u_xlati52;
        let x_1811 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1804 + 3i) / 4i)][((x_1807 + 3i) % 4i)];
        let x_1813 : vec3<f32> = (vec3<f32>(x_1802.x, x_1802.y, x_1802.z) + vec3<f32>(x_1811.x, x_1811.y, x_1811.w));
        let x_1814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
        let x_1816 : vec4<f32> = u_xlat11;
        let x_1818 : vec4<f32> = u_xlat11;
        let x_1820 : vec2<f32> = (vec2<f32>(x_1816.x, x_1816.y) / vec2<f32>(x_1818.z, x_1818.z));
        let x_1821 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1820.x, x_1820.y, x_1821.z, x_1821.w);
        let x_1823 : vec4<f32> = u_xlat11;
        let x_1826 : vec2<f32> = ((vec2<f32>(x_1823.x, x_1823.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1826.x, x_1826.y, x_1827.z, x_1827.w);
        let x_1829 : vec4<f32> = u_xlat11;
        let x_1833 : vec2<f32> = clamp(vec2<f32>(x_1829.x, x_1829.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
        let x_1836 : i32 = u_xlati46;
        let x_1838 : vec4<f32> = x_983.x_AdditionalLightsCookieAtlasUVRects[x_1836];
        let x_1840 : vec4<f32> = u_xlat11;
        let x_1843 : i32 = u_xlati46;
        let x_1845 : vec4<f32> = x_983.x_AdditionalLightsCookieAtlasUVRects[x_1843];
        let x_1847 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1840.x, x_1840.y)) + vec2<f32>(x_1845.z, x_1845.w));
        let x_1848 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
      } else {
        let x_1851 : i32 = u_xlati50;
        u_xlatb50 = (x_1851 == 1i);
        let x_1853 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1853);
        let x_1855 : i32 = u_xlati50;
        if ((x_1855 != 0i)) {
          let x_1861 : vec3<f32> = vs_TEXCOORD7;
          let x_1863 : i32 = u_xlati52;
          let x_1866 : i32 = u_xlati52;
          let x_1870 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1863 + 1i) / 4i)][((x_1866 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1861.y, x_1861.y) * vec2<f32>(x_1870.x, x_1870.y));
          let x_1873 : i32 = u_xlati52;
          let x_1875 : i32 = u_xlati52;
          let x_1878 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[(x_1873 / 4i)][(x_1875 % 4i)];
          let x_1880 : vec3<f32> = vs_TEXCOORD7;
          let x_1883 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(x_1880.x, x_1880.x)) + x_1883);
          let x_1885 : i32 = u_xlati52;
          let x_1888 : i32 = u_xlati52;
          let x_1892 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1885 + 2i) / 4i)][((x_1888 + 2i) % 4i)];
          let x_1894 : vec3<f32> = vs_TEXCOORD7;
          let x_1897 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1892.x, x_1892.y) * vec2<f32>(x_1894.z, x_1894.z)) + x_1897);
          let x_1899 : vec2<f32> = u_xlat39;
          let x_1900 : i32 = u_xlati52;
          let x_1903 : i32 = u_xlati52;
          let x_1907 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1900 + 3i) / 4i)][((x_1903 + 3i) % 4i)];
          u_xlat39 = (x_1899 + vec2<f32>(x_1907.x, x_1907.y));
          let x_1910 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1910 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1913 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1913);
          let x_1915 : i32 = u_xlati46;
          let x_1917 : vec4<f32> = x_983.x_AdditionalLightsCookieAtlasUVRects[x_1915];
          let x_1919 : vec2<f32> = u_xlat39;
          let x_1921 : i32 = u_xlati46;
          let x_1923 : vec4<f32> = x_983.x_AdditionalLightsCookieAtlasUVRects[x_1921];
          let x_1925 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * x_1919) + vec2<f32>(x_1923.z, x_1923.w));
          let x_1926 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1925.x, x_1925.y, x_1926.z, x_1926.w);
        } else {
          let x_1929 : vec3<f32> = vs_TEXCOORD7;
          let x_1931 : i32 = u_xlati52;
          let x_1934 : i32 = u_xlati52;
          let x_1938 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1931 + 1i) / 4i)][((x_1934 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1929.y, x_1929.y, x_1929.y, x_1929.y) * x_1938);
          let x_1940 : i32 = u_xlati52;
          let x_1942 : i32 = u_xlati52;
          let x_1945 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[(x_1940 / 4i)][(x_1942 % 4i)];
          let x_1946 : vec3<f32> = vs_TEXCOORD7;
          let x_1949 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1945 * vec4<f32>(x_1946.x, x_1946.x, x_1946.x, x_1946.x)) + x_1949);
          let x_1951 : i32 = u_xlati52;
          let x_1954 : i32 = u_xlati52;
          let x_1958 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1951 + 2i) / 4i)][((x_1954 + 2i) % 4i)];
          let x_1959 : vec3<f32> = vs_TEXCOORD7;
          let x_1962 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1958 * vec4<f32>(x_1959.z, x_1959.z, x_1959.z, x_1959.z)) + x_1962);
          let x_1964 : vec4<f32> = u_xlat12;
          let x_1965 : i32 = u_xlati52;
          let x_1968 : i32 = u_xlati52;
          let x_1972 : vec4<f32> = x_983.x_AdditionalLightsWorldToLights[((x_1965 + 3i) / 4i)][((x_1968 + 3i) % 4i)];
          u_xlat12 = (x_1964 + x_1972);
          let x_1974 : vec4<f32> = u_xlat12;
          let x_1976 : vec4<f32> = u_xlat12;
          let x_1978 : vec3<f32> = (vec3<f32>(x_1974.x, x_1974.y, x_1974.z) / vec3<f32>(x_1976.w, x_1976.w, x_1976.w));
          let x_1979 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
          let x_1981 : vec4<f32> = u_xlat12;
          let x_1983 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1981.x, x_1981.y, x_1981.z), vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
          let x_1986 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1986);
          let x_1988 : f32 = u_xlat50;
          let x_1990 : vec4<f32> = u_xlat12;
          let x_1992 : vec3<f32> = (vec3<f32>(x_1988, x_1988, x_1988) * vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
          let x_1993 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
          let x_1995 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1995.x, x_1995.y, x_1995.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2000 : f32 = u_xlat50;
          u_xlat50 = max(x_2000, 0.00000099999999747524f);
          let x_2003 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2003);
          let x_2005 : f32 = u_xlat50;
          let x_2007 : vec4<f32> = u_xlat12;
          let x_2009 : vec3<f32> = (vec3<f32>(x_2005, x_2005, x_2005) * vec3<f32>(x_2007.z, x_2007.x, x_2007.y));
          let x_2010 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
          let x_2013 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2013);
          let x_2017 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2017, 0.0f, 1.0f);
          let x_2021 : vec4<f32> = u_xlat13;
          let x_2023 : vec4<bool> = (vec4<f32>(x_2021.y, x_2021.z, x_2021.y, x_2021.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2023.x, x_2023.y);
          let x_2026 : bool = u_xlatb39.x;
          if (x_2026) {
            let x_2031 : f32 = u_xlat13.x;
            x_2027 = x_2031;
          } else {
            let x_2034 : f32 = u_xlat13.x;
            x_2027 = -(x_2034);
          }
          let x_2036 : f32 = x_2027;
          u_xlat39.x = x_2036;
          let x_2039 : bool = u_xlatb39.y;
          if (x_2039) {
            let x_2044 : f32 = u_xlat13.x;
            x_2040 = x_2044;
          } else {
            let x_2047 : f32 = u_xlat13.x;
            x_2040 = -(x_2047);
          }
          let x_2049 : f32 = x_2040;
          u_xlat39.y = x_2049;
          let x_2051 : vec4<f32> = u_xlat12;
          let x_2053 : f32 = u_xlat50;
          let x_2056 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2051.x, x_2051.y) * vec2<f32>(x_2053, x_2053)) + x_2056);
          let x_2058 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2058 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2061 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2061, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2065 : i32 = u_xlati46;
          let x_2067 : vec4<f32> = x_983.x_AdditionalLightsCookieAtlasUVRects[x_2065];
          let x_2069 : vec2<f32> = u_xlat39;
          let x_2071 : i32 = u_xlati46;
          let x_2073 : vec4<f32> = x_983.x_AdditionalLightsCookieAtlasUVRects[x_2071];
          let x_2075 : vec2<f32> = ((vec2<f32>(x_2067.x, x_2067.y) * x_2069) + vec2<f32>(x_2073.z, x_2073.w));
          let x_2076 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2075.x, x_2075.y, x_2076.z, x_2076.w);
        }
      }
      let x_2083 : vec4<f32> = u_xlat11;
      let x_2085 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2083.x, x_2083.y), 0.0f);
      u_xlat11 = x_2085;
      let x_2087 : bool = u_xlatb3.y;
      if (x_2087) {
        let x_2092 : f32 = u_xlat11.w;
        x_2088 = x_2092;
      } else {
        let x_2095 : f32 = u_xlat11.x;
        x_2088 = x_2095;
      }
      let x_2096 : f32 = x_2088;
      u_xlat50 = x_2096;
      let x_2098 : bool = u_xlatb3.x;
      if (x_2098) {
        let x_2102 : vec4<f32> = u_xlat11;
        x_2099 = vec3<f32>(x_2102.x, x_2102.y, x_2102.z);
      } else {
        let x_2105 : f32 = u_xlat50;
        x_2099 = vec3<f32>(x_2105, x_2105, x_2105);
      }
      let x_2107 : vec3<f32> = x_2099;
      let x_2108 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2114 : vec4<f32> = u_xlat11;
    let x_2116 : i32 = u_xlati46;
    let x_2118 : vec4<f32> = x_1460.x_AdditionalLightsColor[x_2116];
    let x_2120 : vec3<f32> = (vec3<f32>(x_2114.x, x_2114.y, x_2114.z) * vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
    let x_2123 : f32 = u_xlat47;
    let x_2124 : f32 = u_xlat49;
    u_xlat46 = (x_2123 * x_2124);
    let x_2126 : vec4<f32> = u_xlat1;
    let x_2128 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
    let x_2131 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2131, 0.0f, 1.0f);
    let x_2133 : f32 = u_xlat46;
    let x_2134 : f32 = u_xlat47;
    u_xlat46 = (x_2133 * x_2134);
    let x_2136 : f32 = u_xlat46;
    let x_2138 : vec4<f32> = u_xlat11;
    let x_2140 : vec3<f32> = (vec3<f32>(x_2136, x_2136, x_2136) * vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
    let x_2143 : vec4<f32> = u_xlat9;
    let x_2145 : f32 = u_xlat48;
    let x_2148 : vec3<f32> = u_xlat2;
    let x_2149 : vec3<f32> = ((vec3<f32>(x_2143.x, x_2143.y, x_2143.z) * vec3<f32>(x_2145, x_2145, x_2145)) + x_2148);
    let x_2150 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
    let x_2152 : vec4<f32> = u_xlat9;
    let x_2154 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2152.x, x_2152.y, x_2152.z), vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
    let x_2157 : f32 = u_xlat46;
    u_xlat46 = max(x_2157, 1.17549435e-38f);
    let x_2159 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2159);
    let x_2161 : f32 = u_xlat46;
    let x_2163 : vec4<f32> = u_xlat9;
    let x_2165 : vec3<f32> = (vec3<f32>(x_2161, x_2161, x_2161) * vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
    let x_2166 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
    let x_2168 : vec4<f32> = u_xlat1;
    let x_2170 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2168.x, x_2168.y, x_2168.z), vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
    let x_2173 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2173, 0.0f, 1.0f);
    let x_2175 : vec4<f32> = u_xlat10;
    let x_2177 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2175.x, x_2175.y, x_2175.z), vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
    let x_2180 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2180, 0.0f, 1.0f);
    let x_2182 : f32 = u_xlat46;
    let x_2183 : f32 = u_xlat46;
    u_xlat46 = (x_2182 * x_2183);
    let x_2185 : f32 = u_xlat46;
    let x_2187 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2185 * x_2187) + 1.00001001358032226562f);
    let x_2190 : f32 = u_xlat47;
    let x_2191 : f32 = u_xlat47;
    u_xlat47 = (x_2190 * x_2191);
    let x_2193 : f32 = u_xlat46;
    let x_2194 : f32 = u_xlat46;
    u_xlat46 = (x_2193 * x_2194);
    let x_2196 : f32 = u_xlat47;
    u_xlat47 = max(x_2196, 0.10000000149011611938f);
    let x_2198 : f32 = u_xlat46;
    let x_2199 : f32 = u_xlat47;
    u_xlat46 = (x_2198 * x_2199);
    let x_2201 : f32 = u_xlat45;
    let x_2202 : f32 = u_xlat46;
    u_xlat46 = (x_2201 * x_2202);
    let x_2204 : f32 = u_xlat43;
    let x_2205 : f32 = u_xlat46;
    u_xlat46 = (x_2204 / x_2205);
    let x_2207 : vec4<f32> = u_xlat5;
    let x_2209 : f32 = u_xlat46;
    let x_2212 : vec4<f32> = u_xlat6;
    let x_2214 : vec3<f32> = ((vec3<f32>(x_2207.x, x_2207.y, x_2207.z) * vec3<f32>(x_2209, x_2209, x_2209)) + vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
    let x_2217 : vec4<f32> = u_xlat9;
    let x_2219 : vec4<f32> = u_xlat11;
    let x_2222 : vec4<f32> = u_xlat8;
    let x_2224 : vec3<f32> = ((vec3<f32>(x_2217.x, x_2217.y, x_2217.z) * vec3<f32>(x_2219.x, x_2219.y, x_2219.z)) + vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
    let x_2225 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);

    continuing {
      let x_2227 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2227 + bitcast<u32>(1i));
    }
  }
  let x_2229 : vec4<f32> = u_xlat4;
  let x_2231 : f32 = u_xlat14;
  let x_2234 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2229.x, x_2229.y, x_2229.z) * vec3<f32>(x_2231, x_2231, x_2231)) + vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2237 : vec4<f32> = u_xlat8;
  let x_2239 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2237.x, x_2237.y, x_2237.z) + x_2239);
  let x_2243 : f32 = u_xlat42;
  let x_2245 : vec3<f32> = u_xlat0;
  let x_2246 : vec3<f32> = (vec3<f32>(x_2243, x_2243, x_2243) * x_2245);
  let x_2247 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
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


