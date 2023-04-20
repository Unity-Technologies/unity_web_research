diagnostic(off, derivative_uniformity);

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

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

@group(1) @binding(2) var<uniform> x_625 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_791 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_855 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1330 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var x_940 : f32;
  var x_951 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1466 : f32;
  var x_1476 : f32;
  var txVec1 : vec3<f32>;
  var x_1897 : f32;
  var x_1910 : f32;
  var x_1958 : f32;
  var x_1969 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_101 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_106 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.w, x_101.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_106.x, x_106.w, x_106.y));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_114 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_118 : vec2<f32> = (vec2<f32>(x_114.z, x_114.w) + vec2<f32>(-1.0f, -1.0f));
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = u_xlat4;
  let x_127 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(0.5f, 0.5f));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_135 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(x_133.x, x_133.y));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_146 : f32 = x_29.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_143.x, x_143.y), x_146);
  u_xlat4 = x_147;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_149, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_160 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : f32 = x_29.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat5 = x_164;
  let x_170 : vec4<f32> = vs_TEXCOORD1;
  let x_173 : f32 = x_29.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_170.z, x_170.w), x_173);
  u_xlat6 = x_174;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_181.x, x_181.y), x_184);
  u_xlat7 = x_185;
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : f32 = x_29.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_191.z, x_191.w), x_194);
  u_xlat8 = x_195;
  let x_199 : f32 = u_xlat5.w;
  u_xlat9.x = x_199;
  let x_202 : f32 = u_xlat6.w;
  u_xlat9.y = x_202;
  let x_206 : f32 = u_xlat7.w;
  u_xlat9.z = x_206;
  let x_210 : f32 = u_xlat8.w;
  u_xlat9.w = x_210;
  let x_213 : vec4<f32> = u_xlat9;
  let x_216 : f32 = x_59.x_Smoothness0;
  let x_219 : f32 = x_59.x_Smoothness1;
  let x_222 : f32 = x_59.x_Smoothness2;
  let x_225 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_213 * vec4<f32>(x_216, x_219, x_222, x_225));
  let x_232 : f32 = x_59.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_232);
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_235) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat9;
  let x_239 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_238 + -(x_239));
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_242 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_250 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_257 + -(x_258));
  let x_263 : f32 = u_xlat12.x;
  let x_266 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.y;
  let x_273 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_270 * x_273);
  let x_277 : f32 = u_xlat12.z;
  let x_280 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_277 * x_280);
  let x_284 : f32 = u_xlat12.w;
  let x_287 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_284 * x_287);
  let x_290 : vec4<f32> = u_xlat11;
  let x_291 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_290 + x_291);
  let x_293 : bool = u_xlatb43;
  let x_294 : vec4<f32> = u_xlat11;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_295, x_294, vec4<bool>(x_293, x_293, x_293, x_293));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_300, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_304 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_304);
  let x_306 : bool = u_xlatb44;
  if (((select(0i, 1i, x_306) * -1i) != 0i)) {
    discard;
  }
  let x_313 : f32 = u_xlat43;
  u_xlat43 = (x_313 + 0.00006103515625f);
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : f32 = u_xlat43;
  u_xlat4 = (x_316 / vec4<f32>(x_317, x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec4<f32> = u_xlat12;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat11;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.z, x_353.z, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_376 : vec3<f32> = (vec3<f32>(x_371.w, x_371.w, x_371.w) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_390;
  let x_393 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_393;
  let x_396 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_396;
  let x_399 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_399;
  let x_402 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_402;
  let x_405 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_405;
  let x_408 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_408;
  let x_411 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_411;
  let x_413 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_413 + x_414);
  let x_417 : f32 = u_xlat0.z;
  u_xlat7.x = x_417;
  let x_420 : f32 = u_xlat1.z;
  u_xlat7.y = x_420;
  let x_423 : f32 = u_xlat2.z;
  u_xlat7.z = x_423;
  let x_426 : f32 = u_xlat3.y;
  u_xlat7.w = x_426;
  let x_428 : vec4<f32> = u_xlat9;
  let x_431 : f32 = x_59.x_Smoothness0;
  let x_433 : f32 = x_59.x_Smoothness1;
  let x_435 : f32 = x_59.x_Smoothness2;
  let x_437 : f32 = x_59.x_Smoothness3;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_428) * vec4<f32>(x_431, x_433, x_435, x_437)) + x_440);
  let x_444 : f32 = x_59.x_LayerHasMask0;
  let x_447 : f32 = x_59.x_LayerHasMask1;
  let x_450 : f32 = x_59.x_LayerHasMask2;
  let x_453 : f32 = x_59.x_LayerHasMask3;
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_444, x_447, x_450, x_453) * x_455) + x_457);
  let x_460 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat0.x;
  u_xlat7.x = x_464;
  let x_467 : f32 = u_xlat1.x;
  u_xlat7.y = x_467;
  let x_470 : f32 = u_xlat2.x;
  u_xlat7.z = x_470;
  let x_473 : f32 = u_xlat3.x;
  u_xlat7.w = x_473;
  let x_475 : vec4<f32> = u_xlat7;
  let x_478 : f32 = x_59.x_Metallic0;
  let x_481 : f32 = x_59.x_Metallic1;
  let x_484 : f32 = x_59.x_Metallic2;
  let x_487 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_475 + -(vec4<f32>(x_478, x_481, x_484, x_487)));
  let x_492 : f32 = x_59.x_LayerHasMask0;
  let x_494 : f32 = x_59.x_LayerHasMask1;
  let x_496 : f32 = x_59.x_LayerHasMask2;
  let x_498 : f32 = x_59.x_LayerHasMask3;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : f32 = x_59.x_Metallic0;
  let x_505 : f32 = x_59.x_Metallic1;
  let x_507 : f32 = x_59.x_Metallic2;
  let x_509 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_492, x_494, x_496, x_498) * x_500) + vec4<f32>(x_503, x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_512, x_513);
  let x_517 : f32 = u_xlat0.y;
  u_xlat3.x = x_517;
  let x_520 : f32 = u_xlat1.y;
  u_xlat3.y = x_520;
  let x_523 : f32 = u_xlat2.y;
  u_xlat3.z = x_523;
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_525) + x_527);
  let x_530 : f32 = x_59.x_LayerHasMask0;
  let x_532 : f32 = x_59.x_LayerHasMask1;
  let x_534 : f32 = x_59.x_LayerHasMask2;
  let x_536 : f32 = x_59.x_LayerHasMask3;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_530, x_532, x_534, x_536) * x_538) + x_540);
  let x_543 : vec4<f32> = u_xlat4;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_543, x_544);
  let x_548 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_548 == 0.0f);
  let x_553 : vec3<f32> = vs_TEXCOORD7;
  let x_557 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_553) + x_557);
  let x_559 : vec3<f32> = u_xlat15;
  let x_560 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat15;
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_577 : f32 = u_xlat15.x;
    x_573 = x_577;
  } else {
    let x_580 : f32 = x_29.unity_MatrixV[0i].z;
    x_573 = x_580;
  }
  let x_581 : f32 = x_573;
  u_xlat2.x = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : f32 = u_xlat15.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = x_29.unity_MatrixV[1i].z;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat2.y = x_592;
  let x_594 : bool = u_xlatb1;
  if (x_594) {
    let x_599 : f32 = u_xlat15.z;
    x_595 = x_599;
  } else {
    let x_603 : f32 = x_29.unity_MatrixV[2i].z;
    x_595 = x_603;
  }
  let x_604 : f32 = x_595;
  u_xlat2.z = x_604;
  let x_607 : vec3<f32> = vs_TEXCOORD3;
  let x_608 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_607, x_608);
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_612);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = vs_TEXCOORD3;
  let x_618 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  u_xlat1.w = 1.0f;
  let x_627 : vec4<f32> = x_625.unity_SHAr;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_625.unity_SHAg;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_632, x_633);
  let x_637 : vec4<f32> = x_625.unity_SHAb;
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_637, x_638);
  let x_641 : vec4<f32> = u_xlat1;
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_641.y, x_641.z, x_641.z, x_641.x) * vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.z));
  let x_647 : vec4<f32> = x_625.unity_SHBr;
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_625.unity_SHBg;
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_625.unity_SHBb;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_657, x_658);
  let x_662 : f32 = u_xlat1.y;
  let x_664 : f32 = u_xlat1.y;
  u_xlat43 = (x_662 * x_664);
  let x_667 : f32 = u_xlat1.x;
  let x_669 : f32 = u_xlat1.x;
  let x_671 : f32 = u_xlat43;
  u_xlat43 = ((x_667 * x_669) + -(x_671));
  let x_676 : vec4<f32> = x_625.unity_SHC;
  let x_678 : f32 = u_xlat43;
  let x_681 : vec4<f32> = u_xlat6;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_700 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_700) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_706 : f32 = u_xlat28;
  let x_707 : f32 = u_xlat43;
  u_xlat44 = (x_706 + -(x_707));
  let x_710 : f32 = u_xlat43;
  let x_712 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat5;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_722 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat0;
  let x_726 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.x, x_724.x) * vec3<f32>(x_726.x, x_726.y, x_726.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : f32 = u_xlat28;
  u_xlat0.x = (-(x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.x;
  let x_741 : f32 = u_xlat0.x;
  u_xlat28 = (x_739 * x_741);
  let x_743 : f32 = u_xlat28;
  u_xlat28 = max(x_743, 0.0078125f);
  let x_746 : f32 = u_xlat28;
  let x_747 : f32 = u_xlat28;
  u_xlat43 = (x_746 * x_747);
  let x_749 : f32 = u_xlat44;
  u_xlat44 = (x_749 + 1.0f);
  let x_751 : f32 = u_xlat44;
  u_xlat44 = clamp(x_751, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat28;
  u_xlat45 = ((x_754 * 4.0f) + 2.0f);
  let x_758 : f32 = u_xlat14;
  u_xlat14 = min(x_758, 1.0f);
  let x_763 : vec4<f32> = vs_TEXCOORD8;
  let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
  let x_767 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_764.x, x_764.y, x_767);
  let x_780 : vec3<f32> = txVec0;
  let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_780.xy, x_780.z);
  u_xlat46 = x_782;
  let x_793 : f32 = x_791.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_793) + 1.0f);
  let x_796 : f32 = u_xlat46;
  let x_798 : f32 = x_791.x_MainLightShadowParams.x;
  let x_800 : f32 = u_xlat47;
  u_xlat46 = ((x_796 * x_798) + x_800);
  let x_804 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_804);
  let x_808 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_808 >= 1.0f);
  let x_810 : bool = u_xlatb47;
  let x_811 : bool = u_xlatb6;
  u_xlatb47 = (x_810 | x_811);
  let x_813 : bool = u_xlatb47;
  let x_814 : f32 = u_xlat46;
  u_xlat46 = select(x_814, 1.0f, x_813);
  let x_816 : vec3<f32> = vs_TEXCOORD7;
  let x_818 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_820 : vec3<f32> = (x_816 + -(x_818));
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_823.x, x_823.y, x_823.z), vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : f32 = u_xlat47;
  let x_830 : f32 = x_791.x_MainLightShadowParams.z;
  let x_833 : f32 = x_791.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_828 * x_830) + x_833);
  let x_837 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_837, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat46;
  u_xlat20 = (-(x_841) + 1.0f);
  let x_845 : f32 = u_xlat6.x;
  let x_846 : f32 = u_xlat20;
  let x_848 : f32 = u_xlat46;
  u_xlat46 = ((x_845 * x_846) + x_848);
  let x_857 : f32 = x_855.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_857 == -1.0f));
  let x_859 : bool = u_xlatb6;
  if (x_859) {
    let x_862 : vec3<f32> = vs_TEXCOORD7;
    let x_865 : vec4<f32> = x_855.x_MainLightWorldToLight[1i];
    let x_867 : vec2<f32> = (vec2<f32>(x_862.y, x_862.y) * vec2<f32>(x_865.x, x_865.y));
    let x_868 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
    let x_871 : vec4<f32> = x_855.x_MainLightWorldToLight[0i];
    let x_873 : vec3<f32> = vs_TEXCOORD7;
    let x_876 : vec4<f32> = u_xlat6;
    let x_878 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(x_873.x, x_873.x)) + vec2<f32>(x_876.x, x_876.y));
    let x_879 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
    let x_882 : vec4<f32> = x_855.x_MainLightWorldToLight[2i];
    let x_884 : vec3<f32> = vs_TEXCOORD7;
    let x_887 : vec4<f32> = u_xlat6;
    let x_889 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.y) * vec2<f32>(x_884.z, x_884.z)) + vec2<f32>(x_887.x, x_887.y));
    let x_890 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
    let x_892 : vec4<f32> = u_xlat6;
    let x_896 : vec4<f32> = x_855.x_MainLightWorldToLight[3i];
    let x_898 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) + vec2<f32>(x_896.x, x_896.y));
    let x_899 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
    let x_901 : vec4<f32> = u_xlat6;
    let x_904 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_905 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
    let x_912 : vec4<f32> = u_xlat6;
    let x_915 : f32 = x_29.x_GlobalMipBias.x;
    let x_916 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_912.x, x_912.y), x_915);
    u_xlat6 = x_916;
    let x_921 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_923 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_925 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_927 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_928 : vec4<f32> = vec4<f32>(x_921, x_923, x_925, x_927);
    let x_935 : vec4<bool> = (vec4<f32>(x_928.x, x_928.y, x_928.z, x_928.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_935.x, x_935.y);
    let x_939 : bool = u_xlatb7.y;
    if (x_939) {
      let x_944 : f32 = u_xlat6.w;
      x_940 = x_944;
    } else {
      let x_947 : f32 = u_xlat6.x;
      x_940 = x_947;
    }
    let x_948 : f32 = x_940;
    u_xlat48 = x_948;
    let x_950 : bool = u_xlatb7.x;
    if (x_950) {
      let x_954 : vec4<f32> = u_xlat6;
      x_951 = vec3<f32>(x_954.x, x_954.y, x_954.z);
    } else {
      let x_957 : f32 = u_xlat48;
      x_951 = vec3<f32>(x_957, x_957, x_957);
    }
    let x_959 : vec3<f32> = x_951;
    let x_960 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_966 : vec4<f32> = u_xlat6;
  let x_969 : vec4<f32> = x_29.x_MainLightColor;
  let x_971 : vec3<f32> = (vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec3<f32> = u_xlat2;
  let x_976 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(x_974), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : f32 = u_xlat48;
  let x_980 : f32 = u_xlat48;
  u_xlat48 = (x_979 + x_980);
  let x_982 : vec4<f32> = u_xlat1;
  let x_984 : f32 = u_xlat48;
  let x_988 : vec3<f32> = u_xlat2;
  let x_990 : vec3<f32> = ((vec3<f32>(x_982.x, x_982.y, x_982.z) * -(vec3<f32>(x_984, x_984, x_984))) + -(x_988));
  let x_991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec4<f32> = u_xlat1;
  let x_995 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), x_995);
  let x_997 : f32 = u_xlat48;
  u_xlat48 = clamp(x_997, 0.0f, 1.0f);
  let x_999 : f32 = u_xlat48;
  u_xlat48 = (-(x_999) + 1.0f);
  let x_1002 : f32 = u_xlat48;
  let x_1003 : f32 = u_xlat48;
  u_xlat48 = (x_1002 * x_1003);
  let x_1005 : f32 = u_xlat48;
  let x_1006 : f32 = u_xlat48;
  u_xlat48 = (x_1005 * x_1006);
  let x_1010 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1010) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1017 : f32 = u_xlat0.x;
  let x_1018 : f32 = u_xlat49;
  u_xlat0.x = (x_1017 * x_1018);
  let x_1022 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1022 * 6.0f);
  let x_1034 : vec4<f32> = u_xlat7;
  let x_1037 : f32 = u_xlat0.x;
  let x_1038 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1034.x, x_1034.y, x_1034.z), x_1037);
  u_xlat7 = x_1038;
  let x_1040 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1040 + -1.0f);
  let x_1044 : f32 = x_625.unity_SpecCube0_HDR.w;
  let x_1046 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1044 * x_1046) + 1.0f);
  let x_1051 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1051, 0.0f);
  let x_1055 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1055);
  let x_1059 : f32 = u_xlat0.x;
  let x_1061 : f32 = x_625.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1059 * x_1061);
  let x_1065 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1065);
  let x_1069 : f32 = u_xlat0.x;
  let x_1071 : f32 = x_625.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1069 * x_1071);
  let x_1074 : vec4<f32> = u_xlat7;
  let x_1076 : vec3<f32> = u_xlat0;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1076.x, x_1076.x, x_1076.x));
  let x_1079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : f32 = u_xlat28;
  let x_1083 : f32 = u_xlat28;
  let x_1087 : vec2<f32> = ((vec2<f32>(x_1081, x_1081) * vec2<f32>(x_1083, x_1083)) + vec2<f32>(-1.0f, 1.0f));
  let x_1088 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1087.x, x_1088.y, x_1087.y);
  let x_1091 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1091);
  let x_1093 : vec4<f32> = u_xlat5;
  let x_1096 : f32 = u_xlat44;
  let x_1098 : vec3<f32> = (-(vec3<f32>(x_1093.x, x_1093.y, x_1093.z)) + vec3<f32>(x_1096, x_1096, x_1096));
  let x_1099 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : f32 = u_xlat48;
  let x_1103 : vec4<f32> = u_xlat8;
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101, x_1101, x_1101) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : f32 = u_xlat28;
  let x_1113 : vec4<f32> = u_xlat8;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111, x_1111, x_1111) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat7;
  let x_1120 : vec4<f32> = u_xlat8;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec4<f32> = u_xlat3;
  let x_1127 : vec4<f32> = u_xlat4;
  let x_1130 : vec4<f32> = u_xlat7;
  let x_1132 : vec3<f32> = ((vec3<f32>(x_1125.x, x_1125.y, x_1125.z) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z)) + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : f32 = u_xlat46;
  let x_1137 : f32 = x_625.unity_LightData.z;
  u_xlat28 = (x_1135 * x_1137);
  let x_1139 : vec4<f32> = u_xlat1;
  let x_1142 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1139.x, x_1139.y, x_1139.z), vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1145, 0.0f, 1.0f);
  let x_1147 : f32 = u_xlat28;
  let x_1148 : f32 = u_xlat44;
  u_xlat28 = (x_1147 * x_1148);
  let x_1150 : f32 = u_xlat28;
  let x_1152 : vec4<f32> = u_xlat6;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec3<f32> = u_xlat2;
  let x_1159 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1161 : vec3<f32> = (x_1157 + vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat7;
  let x_1166 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : f32 = u_xlat28;
  u_xlat28 = max(x_1169, 1.17549435e-38f);
  let x_1172 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1172);
  let x_1174 : f32 = u_xlat28;
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat1;
  let x_1183 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1181.x, x_1181.y, x_1181.z), vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1186, 0.0f, 1.0f);
  let x_1189 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1191 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1194, 0.0f, 1.0f);
  let x_1196 : f32 = u_xlat28;
  let x_1197 : f32 = u_xlat28;
  u_xlat28 = (x_1196 * x_1197);
  let x_1199 : f32 = u_xlat28;
  let x_1201 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1199 * x_1201) + 1.00001001358032226562f);
  let x_1205 : f32 = u_xlat44;
  let x_1206 : f32 = u_xlat44;
  u_xlat44 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat28;
  let x_1209 : f32 = u_xlat28;
  u_xlat28 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat44;
  u_xlat44 = max(x_1211, 0.10000000149011611938f);
  let x_1214 : f32 = u_xlat28;
  let x_1215 : f32 = u_xlat44;
  u_xlat28 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat45;
  let x_1218 : f32 = u_xlat28;
  u_xlat28 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat43;
  let x_1221 : f32 = u_xlat28;
  u_xlat28 = (x_1220 / x_1221);
  let x_1223 : vec4<f32> = u_xlat5;
  let x_1225 : f32 = u_xlat28;
  let x_1228 : vec4<f32> = u_xlat4;
  let x_1230 : vec3<f32> = ((vec3<f32>(x_1223.x, x_1223.y, x_1223.z) * vec3<f32>(x_1225, x_1225, x_1225)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec4<f32> = u_xlat6;
  let x_1235 : vec4<f32> = u_xlat7;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1241 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1243 : f32 = x_625.unity_LightData.y;
  u_xlat28 = min(x_1241, x_1243);
  let x_1247 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1247));
  let x_1250 : f32 = u_xlat47;
  let x_1252 : f32 = x_791.x_AdditionalShadowFadeParams.x;
  let x_1255 : f32 = x_791.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1250 * x_1252) + x_1255);
  let x_1257 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1257, 0.0f, 1.0f);
  let x_1260 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1262 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1264 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1266 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1267 : vec4<f32> = vec4<f32>(x_1260, x_1262, x_1264, x_1266);
  let x_1273 : vec4<bool> = (vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1273.x, x_1273.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1285 : u32 = u_xlatu_loop_1;
    let x_1286 : u32 = u_xlatu28;
    if ((x_1285 < x_1286)) {
    } else {
      break;
    }
    let x_1289 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1289 >> 2u);
    let x_1293 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1293 & 3u));
    let x_1296 : u32 = u_xlatu47;
    let x_1299 : vec4<f32> = x_625.unity_LightIndices[bitcast<i32>(x_1296)];
    let x_1309 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1314 : vec4<u32> = indexable[x_1309];
    u_xlat47 = dot(x_1299, bitcast<vec4<f32>>(x_1314));
    let x_1318 : f32 = u_xlat47;
    u_xlati47 = i32(x_1318);
    let x_1320 : vec3<f32> = vs_TEXCOORD7;
    let x_1331 : i32 = u_xlati47;
    let x_1333 : vec4<f32> = x_1330.x_AdditionalLightsPosition[x_1331];
    let x_1336 : i32 = u_xlati47;
    let x_1338 : vec4<f32> = x_1330.x_AdditionalLightsPosition[x_1336];
    let x_1340 : vec3<f32> = ((-(x_1320) * vec3<f32>(x_1333.w, x_1333.w, x_1333.w)) + vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
    let x_1341 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
    let x_1343 : vec4<f32> = u_xlat9;
    let x_1345 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1343.x, x_1343.y, x_1343.z), vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
    let x_1348 : f32 = u_xlat48;
    u_xlat48 = max(x_1348, 0.00006103515625f);
    let x_1351 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1351);
    let x_1353 : f32 = u_xlat35;
    let x_1355 : vec4<f32> = u_xlat9;
    let x_1357 : vec3<f32> = (vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1360);
    let x_1362 : f32 = u_xlat48;
    let x_1363 : i32 = u_xlati47;
    let x_1365 : f32 = x_1330.x_AdditionalLightsAttenuation[x_1363].x;
    u_xlat48 = (x_1362 * x_1365);
    let x_1367 : f32 = u_xlat48;
    let x_1369 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1367) * x_1369) + 1.0f);
    let x_1372 : f32 = u_xlat48;
    u_xlat48 = max(x_1372, 0.0f);
    let x_1374 : f32 = u_xlat48;
    let x_1375 : f32 = u_xlat48;
    u_xlat48 = (x_1374 * x_1375);
    let x_1377 : f32 = u_xlat48;
    let x_1378 : f32 = u_xlat49;
    u_xlat48 = (x_1377 * x_1378);
    let x_1380 : i32 = u_xlati47;
    let x_1382 : vec4<f32> = x_1330.x_AdditionalLightsSpotDir[x_1380];
    let x_1384 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : f32 = u_xlat49;
    let x_1388 : i32 = u_xlati47;
    let x_1390 : f32 = x_1330.x_AdditionalLightsAttenuation[x_1388].z;
    let x_1392 : i32 = u_xlati47;
    let x_1394 : f32 = x_1330.x_AdditionalLightsAttenuation[x_1392].w;
    u_xlat49 = ((x_1387 * x_1390) + x_1394);
    let x_1396 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1396, 0.0f, 1.0f);
    let x_1398 : f32 = u_xlat49;
    let x_1399 : f32 = u_xlat49;
    u_xlat49 = (x_1398 * x_1399);
    let x_1401 : f32 = u_xlat48;
    let x_1402 : f32 = u_xlat49;
    u_xlat48 = (x_1401 * x_1402);
    let x_1405 : i32 = u_xlati47;
    let x_1407 : f32 = x_791.x_AdditionalShadowParams[x_1405].w;
    u_xlati49 = i32(x_1407);
    let x_1410 : i32 = u_xlati49;
    u_xlatb50 = (x_1410 >= 0i);
    let x_1412 : bool = u_xlatb50;
    if (x_1412) {
      let x_1416 : i32 = u_xlati47;
      let x_1418 : f32 = x_791.x_AdditionalShadowParams[x_1416].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1418, x_1418, x_1418, x_1418))));
      let x_1422 : bool = u_xlatb50;
      if (x_1422) {
        let x_1427 : vec4<f32> = u_xlat10;
        let x_1430 : vec4<f32> = u_xlat10;
        let x_1433 : vec4<bool> = (abs(vec4<f32>(x_1427.z, x_1427.z, x_1427.y, x_1427.z)) >= abs(vec4<f32>(x_1430.x, x_1430.y, x_1430.x, x_1430.x)));
        let x_1435 : vec3<bool> = vec3<bool>(x_1433.x, x_1433.y, x_1433.z);
        let x_1436 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
        let x_1439 : bool = u_xlatb11.y;
        let x_1441 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1439 & x_1441);
        let x_1443 : vec4<f32> = u_xlat10;
        let x_1446 : vec4<bool> = (-(vec4<f32>(x_1443.z, x_1443.y, x_1443.z, x_1443.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1447 : vec3<bool> = vec3<bool>(x_1446.x, x_1446.y, x_1446.w);
        let x_1448 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1447.x, x_1447.y, x_1448.z, x_1447.z);
        let x_1451 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1451);
        let x_1456 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1456);
        let x_1462 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1462);
        let x_1465 : bool = u_xlatb11.z;
        if (x_1465) {
          let x_1470 : f32 = u_xlat11.y;
          x_1466 = x_1470;
        } else {
          let x_1472 : f32 = u_xlat51;
          x_1466 = x_1472;
        }
        let x_1473 : f32 = x_1466;
        u_xlat51 = x_1473;
        let x_1475 : bool = u_xlatb50;
        if (x_1475) {
          let x_1480 : f32 = u_xlat11.x;
          x_1476 = x_1480;
        } else {
          let x_1482 : f32 = u_xlat51;
          x_1476 = x_1482;
        }
        let x_1483 : f32 = x_1476;
        u_xlat50 = x_1483;
        let x_1484 : i32 = u_xlati47;
        let x_1486 : f32 = x_791.x_AdditionalShadowParams[x_1484].w;
        u_xlat51 = trunc(x_1486);
        let x_1488 : f32 = u_xlat50;
        let x_1489 : f32 = u_xlat51;
        u_xlat50 = (x_1488 + x_1489);
        let x_1491 : f32 = u_xlat50;
        u_xlati49 = i32(x_1491);
      }
      let x_1493 : i32 = u_xlati49;
      u_xlati49 = (x_1493 << bitcast<u32>(2i));
      let x_1495 : vec3<f32> = vs_TEXCOORD7;
      let x_1497 : i32 = u_xlati49;
      let x_1500 : i32 = u_xlati49;
      let x_1504 : vec4<f32> = x_791.x_AdditionalLightsWorldToShadow[((x_1497 + 1i) / 4i)][((x_1500 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1495.y, x_1495.y, x_1495.y, x_1495.y) * x_1504);
      let x_1506 : i32 = u_xlati49;
      let x_1508 : i32 = u_xlati49;
      let x_1511 : vec4<f32> = x_791.x_AdditionalLightsWorldToShadow[(x_1506 / 4i)][(x_1508 % 4i)];
      let x_1512 : vec3<f32> = vs_TEXCOORD7;
      let x_1515 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1511 * vec4<f32>(x_1512.x, x_1512.x, x_1512.x, x_1512.x)) + x_1515);
      let x_1517 : i32 = u_xlati49;
      let x_1520 : i32 = u_xlati49;
      let x_1524 : vec4<f32> = x_791.x_AdditionalLightsWorldToShadow[((x_1517 + 2i) / 4i)][((x_1520 + 2i) % 4i)];
      let x_1525 : vec3<f32> = vs_TEXCOORD7;
      let x_1528 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1524 * vec4<f32>(x_1525.z, x_1525.z, x_1525.z, x_1525.z)) + x_1528);
      let x_1530 : vec4<f32> = u_xlat11;
      let x_1531 : i32 = u_xlati49;
      let x_1534 : i32 = u_xlati49;
      let x_1538 : vec4<f32> = x_791.x_AdditionalLightsWorldToShadow[((x_1531 + 3i) / 4i)][((x_1534 + 3i) % 4i)];
      u_xlat11 = (x_1530 + x_1538);
      let x_1540 : vec4<f32> = u_xlat11;
      let x_1542 : vec4<f32> = u_xlat11;
      let x_1544 : vec3<f32> = (vec3<f32>(x_1540.x, x_1540.y, x_1540.z) / vec3<f32>(x_1542.w, x_1542.w, x_1542.w));
      let x_1545 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
      let x_1548 : vec4<f32> = u_xlat11;
      let x_1549 : vec2<f32> = vec2<f32>(x_1548.x, x_1548.y);
      let x_1551 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
      let x_1559 : vec3<f32> = txVec1;
      let x_1561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
      u_xlat49 = x_1561;
      let x_1562 : i32 = u_xlati47;
      let x_1564 : f32 = x_791.x_AdditionalShadowParams[x_1562].x;
      u_xlat50 = (1.0f + -(x_1564));
      let x_1567 : f32 = u_xlat49;
      let x_1568 : i32 = u_xlati47;
      let x_1570 : f32 = x_791.x_AdditionalShadowParams[x_1568].x;
      let x_1572 : f32 = u_xlat50;
      u_xlat49 = ((x_1567 * x_1570) + x_1572);
      let x_1575 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1575);
      let x_1579 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1579 >= 1.0f);
      let x_1581 : bool = u_xlatb50;
      let x_1582 : bool = u_xlatb51;
      u_xlatb50 = (x_1581 | x_1582);
      let x_1584 : bool = u_xlatb50;
      let x_1585 : f32 = u_xlat49;
      u_xlat49 = select(x_1585, 1.0f, x_1584);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1588 : f32 = u_xlat49;
    u_xlat50 = (-(x_1588) + 1.0f);
    let x_1591 : f32 = u_xlat44;
    let x_1592 : f32 = u_xlat50;
    let x_1594 : f32 = u_xlat49;
    u_xlat49 = ((x_1591 * x_1592) + x_1594);
    let x_1597 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1597 & 31i)));
    let x_1600 : i32 = u_xlati50;
    let x_1603 : f32 = x_855.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1600) & bitcast<u32>(x_1603)));
    let x_1607 : i32 = u_xlati50;
    if ((x_1607 != 0i)) {
      let x_1611 : i32 = u_xlati47;
      let x_1613 : f32 = x_855.x_AdditionalLightsLightTypes[x_1611].el;
      u_xlati50 = i32(x_1613);
      let x_1616 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1616 != 0i));
      let x_1620 : i32 = u_xlati47;
      u_xlati52 = (x_1620 << bitcast<u32>(2i));
      let x_1622 : i32 = u_xlati51;
      if ((x_1622 != 0i)) {
        let x_1626 : vec3<f32> = vs_TEXCOORD7;
        let x_1628 : i32 = u_xlati52;
        let x_1631 : i32 = u_xlati52;
        let x_1635 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1628 + 1i) / 4i)][((x_1631 + 1i) % 4i)];
        let x_1637 : vec3<f32> = (vec3<f32>(x_1626.y, x_1626.y, x_1626.y) * vec3<f32>(x_1635.x, x_1635.y, x_1635.w));
        let x_1638 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
        let x_1640 : i32 = u_xlati52;
        let x_1642 : i32 = u_xlati52;
        let x_1645 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[(x_1640 / 4i)][(x_1642 % 4i)];
        let x_1647 : vec3<f32> = vs_TEXCOORD7;
        let x_1650 : vec4<f32> = u_xlat11;
        let x_1652 : vec3<f32> = ((vec3<f32>(x_1645.x, x_1645.y, x_1645.w) * vec3<f32>(x_1647.x, x_1647.x, x_1647.x)) + vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
        let x_1653 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
        let x_1655 : i32 = u_xlati52;
        let x_1658 : i32 = u_xlati52;
        let x_1662 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1655 + 2i) / 4i)][((x_1658 + 2i) % 4i)];
        let x_1664 : vec3<f32> = vs_TEXCOORD7;
        let x_1667 : vec4<f32> = u_xlat11;
        let x_1669 : vec3<f32> = ((vec3<f32>(x_1662.x, x_1662.y, x_1662.w) * vec3<f32>(x_1664.z, x_1664.z, x_1664.z)) + vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
        let x_1670 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
        let x_1672 : vec4<f32> = u_xlat11;
        let x_1674 : i32 = u_xlati52;
        let x_1677 : i32 = u_xlati52;
        let x_1681 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1674 + 3i) / 4i)][((x_1677 + 3i) % 4i)];
        let x_1683 : vec3<f32> = (vec3<f32>(x_1672.x, x_1672.y, x_1672.z) + vec3<f32>(x_1681.x, x_1681.y, x_1681.w));
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
        let x_1686 : vec4<f32> = u_xlat11;
        let x_1688 : vec4<f32> = u_xlat11;
        let x_1690 : vec2<f32> = (vec2<f32>(x_1686.x, x_1686.y) / vec2<f32>(x_1688.z, x_1688.z));
        let x_1691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
        let x_1693 : vec4<f32> = u_xlat11;
        let x_1696 : vec2<f32> = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1697 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
        let x_1699 : vec4<f32> = u_xlat11;
        let x_1703 : vec2<f32> = clamp(vec2<f32>(x_1699.x, x_1699.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1704 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1703.x, x_1703.y, x_1704.z, x_1704.w);
        let x_1706 : i32 = u_xlati47;
        let x_1708 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1706];
        let x_1710 : vec4<f32> = u_xlat11;
        let x_1713 : i32 = u_xlati47;
        let x_1715 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1713];
        let x_1717 : vec2<f32> = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1710.x, x_1710.y)) + vec2<f32>(x_1715.z, x_1715.w));
        let x_1718 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1717.x, x_1717.y, x_1718.z, x_1718.w);
      } else {
        let x_1721 : i32 = u_xlati50;
        u_xlatb50 = (x_1721 == 1i);
        let x_1723 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1723);
        let x_1725 : i32 = u_xlati50;
        if ((x_1725 != 0i)) {
          let x_1731 : vec3<f32> = vs_TEXCOORD7;
          let x_1733 : i32 = u_xlati52;
          let x_1736 : i32 = u_xlati52;
          let x_1740 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1733 + 1i) / 4i)][((x_1736 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1731.y, x_1731.y) * vec2<f32>(x_1740.x, x_1740.y));
          let x_1743 : i32 = u_xlati52;
          let x_1745 : i32 = u_xlati52;
          let x_1748 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[(x_1743 / 4i)][(x_1745 % 4i)];
          let x_1750 : vec3<f32> = vs_TEXCOORD7;
          let x_1753 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1748.x, x_1748.y) * vec2<f32>(x_1750.x, x_1750.x)) + x_1753);
          let x_1755 : i32 = u_xlati52;
          let x_1758 : i32 = u_xlati52;
          let x_1762 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1755 + 2i) / 4i)][((x_1758 + 2i) % 4i)];
          let x_1764 : vec3<f32> = vs_TEXCOORD7;
          let x_1767 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1764.z, x_1764.z)) + x_1767);
          let x_1769 : vec2<f32> = u_xlat39;
          let x_1770 : i32 = u_xlati52;
          let x_1773 : i32 = u_xlati52;
          let x_1777 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1770 + 3i) / 4i)][((x_1773 + 3i) % 4i)];
          u_xlat39 = (x_1769 + vec2<f32>(x_1777.x, x_1777.y));
          let x_1780 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1780 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1783 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1783);
          let x_1785 : i32 = u_xlati47;
          let x_1787 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1785];
          let x_1789 : vec2<f32> = u_xlat39;
          let x_1791 : i32 = u_xlati47;
          let x_1793 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1791];
          let x_1795 : vec2<f32> = ((vec2<f32>(x_1787.x, x_1787.y) * x_1789) + vec2<f32>(x_1793.z, x_1793.w));
          let x_1796 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1796.z, x_1796.w);
        } else {
          let x_1799 : vec3<f32> = vs_TEXCOORD7;
          let x_1801 : i32 = u_xlati52;
          let x_1804 : i32 = u_xlati52;
          let x_1808 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1801 + 1i) / 4i)][((x_1804 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1799.y, x_1799.y, x_1799.y, x_1799.y) * x_1808);
          let x_1810 : i32 = u_xlati52;
          let x_1812 : i32 = u_xlati52;
          let x_1815 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[(x_1810 / 4i)][(x_1812 % 4i)];
          let x_1816 : vec3<f32> = vs_TEXCOORD7;
          let x_1819 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1815 * vec4<f32>(x_1816.x, x_1816.x, x_1816.x, x_1816.x)) + x_1819);
          let x_1821 : i32 = u_xlati52;
          let x_1824 : i32 = u_xlati52;
          let x_1828 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1821 + 2i) / 4i)][((x_1824 + 2i) % 4i)];
          let x_1829 : vec3<f32> = vs_TEXCOORD7;
          let x_1832 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1828 * vec4<f32>(x_1829.z, x_1829.z, x_1829.z, x_1829.z)) + x_1832);
          let x_1834 : vec4<f32> = u_xlat12;
          let x_1835 : i32 = u_xlati52;
          let x_1838 : i32 = u_xlati52;
          let x_1842 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1835 + 3i) / 4i)][((x_1838 + 3i) % 4i)];
          u_xlat12 = (x_1834 + x_1842);
          let x_1844 : vec4<f32> = u_xlat12;
          let x_1846 : vec4<f32> = u_xlat12;
          let x_1848 : vec3<f32> = (vec3<f32>(x_1844.x, x_1844.y, x_1844.z) / vec3<f32>(x_1846.w, x_1846.w, x_1846.w));
          let x_1849 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1853 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1851.x, x_1851.y, x_1851.z), vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
          let x_1856 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1856);
          let x_1858 : f32 = u_xlat50;
          let x_1860 : vec4<f32> = u_xlat12;
          let x_1862 : vec3<f32> = (vec3<f32>(x_1858, x_1858, x_1858) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
          let x_1863 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
          let x_1865 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1865.x, x_1865.y, x_1865.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1870 : f32 = u_xlat50;
          u_xlat50 = max(x_1870, 0.00000099999999747524f);
          let x_1873 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1873);
          let x_1875 : f32 = u_xlat50;
          let x_1877 : vec4<f32> = u_xlat12;
          let x_1879 : vec3<f32> = (vec3<f32>(x_1875, x_1875, x_1875) * vec3<f32>(x_1877.z, x_1877.x, x_1877.y));
          let x_1880 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
          let x_1883 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1883);
          let x_1887 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1887, 0.0f, 1.0f);
          let x_1891 : vec4<f32> = u_xlat13;
          let x_1893 : vec4<bool> = (vec4<f32>(x_1891.y, x_1891.z, x_1891.y, x_1891.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1893.x, x_1893.y);
          let x_1896 : bool = u_xlatb39.x;
          if (x_1896) {
            let x_1901 : f32 = u_xlat13.x;
            x_1897 = x_1901;
          } else {
            let x_1904 : f32 = u_xlat13.x;
            x_1897 = -(x_1904);
          }
          let x_1906 : f32 = x_1897;
          u_xlat39.x = x_1906;
          let x_1909 : bool = u_xlatb39.y;
          if (x_1909) {
            let x_1914 : f32 = u_xlat13.x;
            x_1910 = x_1914;
          } else {
            let x_1917 : f32 = u_xlat13.x;
            x_1910 = -(x_1917);
          }
          let x_1919 : f32 = x_1910;
          u_xlat39.y = x_1919;
          let x_1921 : vec4<f32> = u_xlat12;
          let x_1923 : f32 = u_xlat50;
          let x_1926 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1921.x, x_1921.y) * vec2<f32>(x_1923, x_1923)) + x_1926);
          let x_1928 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1928 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1931 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1931, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1935 : i32 = u_xlati47;
          let x_1937 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1935];
          let x_1939 : vec2<f32> = u_xlat39;
          let x_1941 : i32 = u_xlati47;
          let x_1943 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1941];
          let x_1945 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * x_1939) + vec2<f32>(x_1943.z, x_1943.w));
          let x_1946 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1945.x, x_1945.y, x_1946.z, x_1946.w);
        }
      }
      let x_1953 : vec4<f32> = u_xlat11;
      let x_1955 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1953.x, x_1953.y), 0.0f);
      u_xlat11 = x_1955;
      let x_1957 : bool = u_xlatb7.y;
      if (x_1957) {
        let x_1962 : f32 = u_xlat11.w;
        x_1958 = x_1962;
      } else {
        let x_1965 : f32 = u_xlat11.x;
        x_1958 = x_1965;
      }
      let x_1966 : f32 = x_1958;
      u_xlat50 = x_1966;
      let x_1968 : bool = u_xlatb7.x;
      if (x_1968) {
        let x_1972 : vec4<f32> = u_xlat11;
        x_1969 = vec3<f32>(x_1972.x, x_1972.y, x_1972.z);
      } else {
        let x_1975 : f32 = u_xlat50;
        x_1969 = vec3<f32>(x_1975, x_1975, x_1975);
      }
      let x_1977 : vec3<f32> = x_1969;
      let x_1978 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1984 : vec4<f32> = u_xlat11;
    let x_1986 : i32 = u_xlati47;
    let x_1988 : vec4<f32> = x_1330.x_AdditionalLightsColor[x_1986];
    let x_1990 : vec3<f32> = (vec3<f32>(x_1984.x, x_1984.y, x_1984.z) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
    let x_1993 : f32 = u_xlat48;
    let x_1994 : f32 = u_xlat49;
    u_xlat47 = (x_1993 * x_1994);
    let x_1996 : vec4<f32> = u_xlat1;
    let x_1998 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1996.x, x_1996.y, x_1996.z), vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
    let x_2001 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2001, 0.0f, 1.0f);
    let x_2003 : f32 = u_xlat47;
    let x_2004 : f32 = u_xlat48;
    u_xlat47 = (x_2003 * x_2004);
    let x_2006 : f32 = u_xlat47;
    let x_2008 : vec4<f32> = u_xlat11;
    let x_2010 : vec3<f32> = (vec3<f32>(x_2006, x_2006, x_2006) * vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
    let x_2011 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
    let x_2013 : vec4<f32> = u_xlat9;
    let x_2015 : f32 = u_xlat35;
    let x_2018 : vec3<f32> = u_xlat2;
    let x_2019 : vec3<f32> = ((vec3<f32>(x_2013.x, x_2013.y, x_2013.z) * vec3<f32>(x_2015, x_2015, x_2015)) + x_2018);
    let x_2020 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
    let x_2022 : vec4<f32> = u_xlat9;
    let x_2024 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2022.x, x_2022.y, x_2022.z), vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : f32 = u_xlat47;
    u_xlat47 = max(x_2027, 1.17549435e-38f);
    let x_2029 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2029);
    let x_2031 : f32 = u_xlat47;
    let x_2033 : vec4<f32> = u_xlat9;
    let x_2035 : vec3<f32> = (vec3<f32>(x_2031, x_2031, x_2031) * vec3<f32>(x_2033.x, x_2033.y, x_2033.z));
    let x_2036 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
    let x_2038 : vec4<f32> = u_xlat1;
    let x_2040 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2038.x, x_2038.y, x_2038.z), vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2043, 0.0f, 1.0f);
    let x_2045 : vec4<f32> = u_xlat10;
    let x_2047 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.z), vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
    let x_2050 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2050, 0.0f, 1.0f);
    let x_2052 : f32 = u_xlat47;
    let x_2053 : f32 = u_xlat47;
    u_xlat47 = (x_2052 * x_2053);
    let x_2055 : f32 = u_xlat47;
    let x_2057 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2055 * x_2057) + 1.00001001358032226562f);
    let x_2060 : f32 = u_xlat48;
    let x_2061 : f32 = u_xlat48;
    u_xlat48 = (x_2060 * x_2061);
    let x_2063 : f32 = u_xlat47;
    let x_2064 : f32 = u_xlat47;
    u_xlat47 = (x_2063 * x_2064);
    let x_2066 : f32 = u_xlat48;
    u_xlat48 = max(x_2066, 0.10000000149011611938f);
    let x_2068 : f32 = u_xlat47;
    let x_2069 : f32 = u_xlat48;
    u_xlat47 = (x_2068 * x_2069);
    let x_2071 : f32 = u_xlat45;
    let x_2072 : f32 = u_xlat47;
    u_xlat47 = (x_2071 * x_2072);
    let x_2074 : f32 = u_xlat43;
    let x_2075 : f32 = u_xlat47;
    u_xlat47 = (x_2074 / x_2075);
    let x_2077 : vec4<f32> = u_xlat5;
    let x_2079 : f32 = u_xlat47;
    let x_2082 : vec4<f32> = u_xlat4;
    let x_2084 : vec3<f32> = ((vec3<f32>(x_2077.x, x_2077.y, x_2077.z) * vec3<f32>(x_2079, x_2079, x_2079)) + vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
    let x_2085 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
    let x_2087 : vec4<f32> = u_xlat9;
    let x_2089 : vec4<f32> = u_xlat11;
    let x_2092 : vec4<f32> = u_xlat8;
    let x_2094 : vec3<f32> = ((vec3<f32>(x_2087.x, x_2087.y, x_2087.z) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z)) + vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
    let x_2095 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);

    continuing {
      let x_2097 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2097 + bitcast<u32>(1i));
    }
  }
  let x_2099 : vec4<f32> = u_xlat3;
  let x_2101 : f32 = u_xlat14;
  let x_2104 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * vec3<f32>(x_2101, x_2101, x_2101)) + vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2107 : vec4<f32> = u_xlat8;
  let x_2109 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) + x_2109);
  let x_2113 : f32 = u_xlat42;
  let x_2115 : vec3<f32> = u_xlat0;
  let x_2116 : vec3<f32> = (vec3<f32>(x_2113, x_2113, x_2113) * x_2115);
  let x_2117 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2116.x, x_2116.y, x_2116.z, x_2117.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


