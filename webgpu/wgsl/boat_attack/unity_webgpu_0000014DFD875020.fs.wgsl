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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_767 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_831 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1022 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1310 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var x_916 : f32;
  var x_927 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1446 : f32;
  var x_1456 : f32;
  var txVec1 : vec3<f32>;
  var x_1877 : f32;
  var x_1890 : f32;
  var x_1938 : f32;
  var x_1949 : vec3<f32>;
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
  let x_626 : vec4<f32> = vs_TEXCOORD0;
  let x_629 : f32 = x_29.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_626.z, x_626.w), x_629);
  u_xlat3 = x_630;
  let x_635 : vec4<f32> = vs_TEXCOORD0;
  let x_638 : f32 = x_29.x_GlobalMipBias.x;
  let x_639 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_635.z, x_635.w), x_638);
  let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : f32 = u_xlat43;
  u_xlat43 = (x_655 + 0.5f);
  let x_657 : f32 = u_xlat43;
  let x_659 : vec4<f32> = u_xlat4;
  let x_661 : vec3<f32> = (vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat3.w;
  u_xlat43 = max(x_665, 0.00009999999747378752f);
  let x_668 : vec4<f32> = u_xlat3;
  let x_670 : f32 = u_xlat43;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) / vec3<f32>(x_670, x_670, x_670));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_676 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_676) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_682 : f32 = u_xlat28;
  let x_683 : f32 = u_xlat43;
  u_xlat44 = (x_682 + -(x_683));
  let x_686 : f32 = u_xlat43;
  let x_688 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = (vec3<f32>(x_686, x_686, x_686) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat5;
  let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec3<f32> = u_xlat0;
  let x_702 : vec4<f32> = u_xlat5;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.x, x_700.x) * vec3<f32>(x_702.x, x_702.y, x_702.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_708 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : f32 = u_xlat28;
  u_xlat0.x = (-(x_710) + 1.0f);
  let x_715 : f32 = u_xlat0.x;
  let x_717 : f32 = u_xlat0.x;
  u_xlat28 = (x_715 * x_717);
  let x_719 : f32 = u_xlat28;
  u_xlat28 = max(x_719, 0.0078125f);
  let x_722 : f32 = u_xlat28;
  let x_723 : f32 = u_xlat28;
  u_xlat43 = (x_722 * x_723);
  let x_725 : f32 = u_xlat44;
  u_xlat44 = (x_725 + 1.0f);
  let x_727 : f32 = u_xlat44;
  u_xlat44 = clamp(x_727, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat28;
  u_xlat45 = ((x_730 * 4.0f) + 2.0f);
  let x_734 : f32 = u_xlat14;
  u_xlat14 = min(x_734, 1.0f);
  let x_739 : vec4<f32> = vs_TEXCOORD8;
  let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
  let x_743 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_740.x, x_740.y, x_743);
  let x_756 : vec3<f32> = txVec0;
  let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_756.xy, x_756.z);
  u_xlat46 = x_758;
  let x_769 : f32 = x_767.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_769) + 1.0f);
  let x_772 : f32 = u_xlat46;
  let x_774 : f32 = x_767.x_MainLightShadowParams.x;
  let x_776 : f32 = u_xlat47;
  u_xlat46 = ((x_772 * x_774) + x_776);
  let x_780 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_780);
  let x_784 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_784 >= 1.0f);
  let x_786 : bool = u_xlatb47;
  let x_787 : bool = u_xlatb6;
  u_xlatb47 = (x_786 | x_787);
  let x_789 : bool = u_xlatb47;
  let x_790 : f32 = u_xlat46;
  u_xlat46 = select(x_790, 1.0f, x_789);
  let x_792 : vec3<f32> = vs_TEXCOORD7;
  let x_794 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_796 : vec3<f32> = (x_792 + -(x_794));
  let x_797 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_799.x, x_799.y, x_799.z), vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : f32 = u_xlat47;
  let x_806 : f32 = x_767.x_MainLightShadowParams.z;
  let x_809 : f32 = x_767.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_804 * x_806) + x_809);
  let x_813 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_813, 0.0f, 1.0f);
  let x_817 : f32 = u_xlat46;
  u_xlat20 = (-(x_817) + 1.0f);
  let x_821 : f32 = u_xlat6.x;
  let x_822 : f32 = u_xlat20;
  let x_824 : f32 = u_xlat46;
  u_xlat46 = ((x_821 * x_822) + x_824);
  let x_833 : f32 = x_831.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_833 == -1.0f));
  let x_835 : bool = u_xlatb6;
  if (x_835) {
    let x_838 : vec3<f32> = vs_TEXCOORD7;
    let x_841 : vec4<f32> = x_831.x_MainLightWorldToLight[1i];
    let x_843 : vec2<f32> = (vec2<f32>(x_838.y, x_838.y) * vec2<f32>(x_841.x, x_841.y));
    let x_844 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
    let x_847 : vec4<f32> = x_831.x_MainLightWorldToLight[0i];
    let x_849 : vec3<f32> = vs_TEXCOORD7;
    let x_852 : vec4<f32> = u_xlat6;
    let x_854 : vec2<f32> = ((vec2<f32>(x_847.x, x_847.y) * vec2<f32>(x_849.x, x_849.x)) + vec2<f32>(x_852.x, x_852.y));
    let x_855 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
    let x_858 : vec4<f32> = x_831.x_MainLightWorldToLight[2i];
    let x_860 : vec3<f32> = vs_TEXCOORD7;
    let x_863 : vec4<f32> = u_xlat6;
    let x_865 : vec2<f32> = ((vec2<f32>(x_858.x, x_858.y) * vec2<f32>(x_860.z, x_860.z)) + vec2<f32>(x_863.x, x_863.y));
    let x_866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
    let x_868 : vec4<f32> = u_xlat6;
    let x_872 : vec4<f32> = x_831.x_MainLightWorldToLight[3i];
    let x_874 : vec2<f32> = (vec2<f32>(x_868.x, x_868.y) + vec2<f32>(x_872.x, x_872.y));
    let x_875 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
    let x_877 : vec4<f32> = u_xlat6;
    let x_880 : vec2<f32> = ((vec2<f32>(x_877.x, x_877.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_881 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
    let x_888 : vec4<f32> = u_xlat6;
    let x_891 : f32 = x_29.x_GlobalMipBias.x;
    let x_892 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_888.x, x_888.y), x_891);
    u_xlat6 = x_892;
    let x_897 : f32 = x_831.x_MainLightCookieTextureFormat;
    let x_899 : f32 = x_831.x_MainLightCookieTextureFormat;
    let x_901 : f32 = x_831.x_MainLightCookieTextureFormat;
    let x_903 : f32 = x_831.x_MainLightCookieTextureFormat;
    let x_904 : vec4<f32> = vec4<f32>(x_897, x_899, x_901, x_903);
    let x_911 : vec4<bool> = (vec4<f32>(x_904.x, x_904.y, x_904.z, x_904.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_911.x, x_911.y);
    let x_915 : bool = u_xlatb7.y;
    if (x_915) {
      let x_920 : f32 = u_xlat6.w;
      x_916 = x_920;
    } else {
      let x_923 : f32 = u_xlat6.x;
      x_916 = x_923;
    }
    let x_924 : f32 = x_916;
    u_xlat48 = x_924;
    let x_926 : bool = u_xlatb7.x;
    if (x_926) {
      let x_930 : vec4<f32> = u_xlat6;
      x_927 = vec3<f32>(x_930.x, x_930.y, x_930.z);
    } else {
      let x_933 : f32 = u_xlat48;
      x_927 = vec3<f32>(x_933, x_933, x_933);
    }
    let x_935 : vec3<f32> = x_927;
    let x_936 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_942 : vec4<f32> = u_xlat6;
  let x_945 : vec4<f32> = x_29.x_MainLightColor;
  let x_947 : vec3<f32> = (vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec3<f32> = u_xlat2;
  let x_952 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(x_950), vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : f32 = u_xlat48;
  let x_956 : f32 = u_xlat48;
  u_xlat48 = (x_955 + x_956);
  let x_958 : vec4<f32> = u_xlat1;
  let x_960 : f32 = u_xlat48;
  let x_964 : vec3<f32> = u_xlat2;
  let x_966 : vec3<f32> = ((vec3<f32>(x_958.x, x_958.y, x_958.z) * -(vec3<f32>(x_960, x_960, x_960))) + -(x_964));
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat1;
  let x_971 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_969.x, x_969.y, x_969.z), x_971);
  let x_973 : f32 = u_xlat48;
  u_xlat48 = clamp(x_973, 0.0f, 1.0f);
  let x_975 : f32 = u_xlat48;
  u_xlat48 = (-(x_975) + 1.0f);
  let x_978 : f32 = u_xlat48;
  let x_979 : f32 = u_xlat48;
  u_xlat48 = (x_978 * x_979);
  let x_981 : f32 = u_xlat48;
  let x_982 : f32 = u_xlat48;
  u_xlat48 = (x_981 * x_982);
  let x_986 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_986) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_993 : f32 = u_xlat0.x;
  let x_994 : f32 = u_xlat49;
  u_xlat0.x = (x_993 * x_994);
  let x_998 : f32 = u_xlat0.x;
  u_xlat0.x = (x_998 * 6.0f);
  let x_1010 : vec4<f32> = u_xlat7;
  let x_1013 : f32 = u_xlat0.x;
  let x_1014 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1010.x, x_1010.y, x_1010.z), x_1013);
  u_xlat7 = x_1014;
  let x_1016 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1016 + -1.0f);
  let x_1024 : f32 = x_1022.unity_SpecCube0_HDR.w;
  let x_1026 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1024 * x_1026) + 1.0f);
  let x_1031 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1031, 0.0f);
  let x_1035 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1035);
  let x_1039 : f32 = u_xlat0.x;
  let x_1041 : f32 = x_1022.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1039 * x_1041);
  let x_1045 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1045);
  let x_1049 : f32 = u_xlat0.x;
  let x_1051 : f32 = x_1022.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1049 * x_1051);
  let x_1054 : vec4<f32> = u_xlat7;
  let x_1056 : vec3<f32> = u_xlat0;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(x_1056.x, x_1056.x, x_1056.x));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat28;
  let x_1067 : vec2<f32> = ((vec2<f32>(x_1061, x_1061) * vec2<f32>(x_1063, x_1063)) + vec2<f32>(-1.0f, 1.0f));
  let x_1068 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1067.x, x_1068.y, x_1067.y);
  let x_1071 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1071);
  let x_1073 : vec4<f32> = u_xlat5;
  let x_1076 : f32 = u_xlat44;
  let x_1078 : vec3<f32> = (-(vec3<f32>(x_1073.x, x_1073.y, x_1073.z)) + vec3<f32>(x_1076, x_1076, x_1076));
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : f32 = u_xlat48;
  let x_1083 : vec4<f32> = u_xlat8;
  let x_1086 : vec4<f32> = u_xlat5;
  let x_1088 : vec3<f32> = ((vec3<f32>(x_1081, x_1081, x_1081) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z)) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : f32 = u_xlat28;
  let x_1093 : vec4<f32> = u_xlat8;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat7;
  let x_1100 : vec4<f32> = u_xlat8;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat3;
  let x_1107 : vec4<f32> = u_xlat4;
  let x_1110 : vec4<f32> = u_xlat7;
  let x_1112 : vec3<f32> = ((vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z)) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : f32 = u_xlat46;
  let x_1117 : f32 = x_1022.unity_LightData.z;
  u_xlat28 = (x_1115 * x_1117);
  let x_1119 : vec4<f32> = u_xlat1;
  let x_1122 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1125, 0.0f, 1.0f);
  let x_1127 : f32 = u_xlat28;
  let x_1128 : f32 = u_xlat44;
  u_xlat28 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat28;
  let x_1132 : vec4<f32> = u_xlat6;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1130, x_1130, x_1130) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec3<f32> = u_xlat2;
  let x_1139 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1141 : vec3<f32> = (x_1137 + vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
  let x_1142 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
  let x_1144 : vec4<f32> = u_xlat7;
  let x_1146 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1144.x, x_1144.y, x_1144.z), vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : f32 = u_xlat28;
  u_xlat28 = max(x_1149, 1.17549435e-38f);
  let x_1152 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1152);
  let x_1154 : f32 = u_xlat28;
  let x_1156 : vec4<f32> = u_xlat7;
  let x_1158 : vec3<f32> = (vec3<f32>(x_1154, x_1154, x_1154) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec4<f32> = u_xlat1;
  let x_1163 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1161.x, x_1161.y, x_1161.z), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1166, 0.0f, 1.0f);
  let x_1169 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1171 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1169.x, x_1169.y, x_1169.z), vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
  let x_1174 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1174, 0.0f, 1.0f);
  let x_1176 : f32 = u_xlat28;
  let x_1177 : f32 = u_xlat28;
  u_xlat28 = (x_1176 * x_1177);
  let x_1179 : f32 = u_xlat28;
  let x_1181 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1179 * x_1181) + 1.00001001358032226562f);
  let x_1185 : f32 = u_xlat44;
  let x_1186 : f32 = u_xlat44;
  u_xlat44 = (x_1185 * x_1186);
  let x_1188 : f32 = u_xlat28;
  let x_1189 : f32 = u_xlat28;
  u_xlat28 = (x_1188 * x_1189);
  let x_1191 : f32 = u_xlat44;
  u_xlat44 = max(x_1191, 0.10000000149011611938f);
  let x_1194 : f32 = u_xlat28;
  let x_1195 : f32 = u_xlat44;
  u_xlat28 = (x_1194 * x_1195);
  let x_1197 : f32 = u_xlat45;
  let x_1198 : f32 = u_xlat28;
  u_xlat28 = (x_1197 * x_1198);
  let x_1200 : f32 = u_xlat43;
  let x_1201 : f32 = u_xlat28;
  u_xlat28 = (x_1200 / x_1201);
  let x_1203 : vec4<f32> = u_xlat5;
  let x_1205 : f32 = u_xlat28;
  let x_1208 : vec4<f32> = u_xlat4;
  let x_1210 : vec3<f32> = ((vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205, x_1205, x_1205)) + vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec4<f32> = u_xlat6;
  let x_1215 : vec4<f32> = u_xlat7;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1221 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1223 : f32 = x_1022.unity_LightData.y;
  u_xlat28 = min(x_1221, x_1223);
  let x_1227 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1227));
  let x_1230 : f32 = u_xlat47;
  let x_1232 : f32 = x_767.x_AdditionalShadowFadeParams.x;
  let x_1235 : f32 = x_767.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1230 * x_1232) + x_1235);
  let x_1237 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1237, 0.0f, 1.0f);
  let x_1240 : f32 = x_831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1242 : f32 = x_831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1244 : f32 = x_831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1246 : f32 = x_831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1247 : vec4<f32> = vec4<f32>(x_1240, x_1242, x_1244, x_1246);
  let x_1253 : vec4<bool> = (vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1253.x, x_1253.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1265 : u32 = u_xlatu_loop_1;
    let x_1266 : u32 = u_xlatu28;
    if ((x_1265 < x_1266)) {
    } else {
      break;
    }
    let x_1269 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1269 >> 2u);
    let x_1273 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1273 & 3u));
    let x_1276 : u32 = u_xlatu47;
    let x_1279 : vec4<f32> = x_1022.unity_LightIndices[bitcast<i32>(x_1276)];
    let x_1289 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1294 : vec4<u32> = indexable[x_1289];
    u_xlat47 = dot(x_1279, bitcast<vec4<f32>>(x_1294));
    let x_1298 : f32 = u_xlat47;
    u_xlati47 = i32(x_1298);
    let x_1300 : vec3<f32> = vs_TEXCOORD7;
    let x_1311 : i32 = u_xlati47;
    let x_1313 : vec4<f32> = x_1310.x_AdditionalLightsPosition[x_1311];
    let x_1316 : i32 = u_xlati47;
    let x_1318 : vec4<f32> = x_1310.x_AdditionalLightsPosition[x_1316];
    let x_1320 : vec3<f32> = ((-(x_1300) * vec3<f32>(x_1313.w, x_1313.w, x_1313.w)) + vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
    let x_1321 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
    let x_1323 : vec4<f32> = u_xlat9;
    let x_1325 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1323.x, x_1323.y, x_1323.z), vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
    let x_1328 : f32 = u_xlat48;
    u_xlat48 = max(x_1328, 0.00006103515625f);
    let x_1331 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1331);
    let x_1333 : f32 = u_xlat35;
    let x_1335 : vec4<f32> = u_xlat9;
    let x_1337 : vec3<f32> = (vec3<f32>(x_1333, x_1333, x_1333) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
    let x_1338 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
    let x_1340 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1340);
    let x_1342 : f32 = u_xlat48;
    let x_1343 : i32 = u_xlati47;
    let x_1345 : f32 = x_1310.x_AdditionalLightsAttenuation[x_1343].x;
    u_xlat48 = (x_1342 * x_1345);
    let x_1347 : f32 = u_xlat48;
    let x_1349 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1347) * x_1349) + 1.0f);
    let x_1352 : f32 = u_xlat48;
    u_xlat48 = max(x_1352, 0.0f);
    let x_1354 : f32 = u_xlat48;
    let x_1355 : f32 = u_xlat48;
    u_xlat48 = (x_1354 * x_1355);
    let x_1357 : f32 = u_xlat48;
    let x_1358 : f32 = u_xlat49;
    u_xlat48 = (x_1357 * x_1358);
    let x_1360 : i32 = u_xlati47;
    let x_1362 : vec4<f32> = x_1310.x_AdditionalLightsSpotDir[x_1360];
    let x_1364 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1362.x, x_1362.y, x_1362.z), vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
    let x_1367 : f32 = u_xlat49;
    let x_1368 : i32 = u_xlati47;
    let x_1370 : f32 = x_1310.x_AdditionalLightsAttenuation[x_1368].z;
    let x_1372 : i32 = u_xlati47;
    let x_1374 : f32 = x_1310.x_AdditionalLightsAttenuation[x_1372].w;
    u_xlat49 = ((x_1367 * x_1370) + x_1374);
    let x_1376 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1376, 0.0f, 1.0f);
    let x_1378 : f32 = u_xlat49;
    let x_1379 : f32 = u_xlat49;
    u_xlat49 = (x_1378 * x_1379);
    let x_1381 : f32 = u_xlat48;
    let x_1382 : f32 = u_xlat49;
    u_xlat48 = (x_1381 * x_1382);
    let x_1385 : i32 = u_xlati47;
    let x_1387 : f32 = x_767.x_AdditionalShadowParams[x_1385].w;
    u_xlati49 = i32(x_1387);
    let x_1390 : i32 = u_xlati49;
    u_xlatb50 = (x_1390 >= 0i);
    let x_1392 : bool = u_xlatb50;
    if (x_1392) {
      let x_1396 : i32 = u_xlati47;
      let x_1398 : f32 = x_767.x_AdditionalShadowParams[x_1396].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1398, x_1398, x_1398, x_1398))));
      let x_1402 : bool = u_xlatb50;
      if (x_1402) {
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1410 : vec4<f32> = u_xlat10;
        let x_1413 : vec4<bool> = (abs(vec4<f32>(x_1407.z, x_1407.z, x_1407.y, x_1407.z)) >= abs(vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.x)));
        let x_1415 : vec3<bool> = vec3<bool>(x_1413.x, x_1413.y, x_1413.z);
        let x_1416 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
        let x_1419 : bool = u_xlatb11.y;
        let x_1421 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1419 & x_1421);
        let x_1423 : vec4<f32> = u_xlat10;
        let x_1426 : vec4<bool> = (-(vec4<f32>(x_1423.z, x_1423.y, x_1423.z, x_1423.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1427 : vec3<bool> = vec3<bool>(x_1426.x, x_1426.y, x_1426.w);
        let x_1428 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1427.x, x_1427.y, x_1428.z, x_1427.z);
        let x_1431 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1431);
        let x_1436 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1436);
        let x_1442 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1442);
        let x_1445 : bool = u_xlatb11.z;
        if (x_1445) {
          let x_1450 : f32 = u_xlat11.y;
          x_1446 = x_1450;
        } else {
          let x_1452 : f32 = u_xlat51;
          x_1446 = x_1452;
        }
        let x_1453 : f32 = x_1446;
        u_xlat51 = x_1453;
        let x_1455 : bool = u_xlatb50;
        if (x_1455) {
          let x_1460 : f32 = u_xlat11.x;
          x_1456 = x_1460;
        } else {
          let x_1462 : f32 = u_xlat51;
          x_1456 = x_1462;
        }
        let x_1463 : f32 = x_1456;
        u_xlat50 = x_1463;
        let x_1464 : i32 = u_xlati47;
        let x_1466 : f32 = x_767.x_AdditionalShadowParams[x_1464].w;
        u_xlat51 = trunc(x_1466);
        let x_1468 : f32 = u_xlat50;
        let x_1469 : f32 = u_xlat51;
        u_xlat50 = (x_1468 + x_1469);
        let x_1471 : f32 = u_xlat50;
        u_xlati49 = i32(x_1471);
      }
      let x_1473 : i32 = u_xlati49;
      u_xlati49 = (x_1473 << bitcast<u32>(2i));
      let x_1475 : vec3<f32> = vs_TEXCOORD7;
      let x_1477 : i32 = u_xlati49;
      let x_1480 : i32 = u_xlati49;
      let x_1484 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[((x_1477 + 1i) / 4i)][((x_1480 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1475.y, x_1475.y, x_1475.y, x_1475.y) * x_1484);
      let x_1486 : i32 = u_xlati49;
      let x_1488 : i32 = u_xlati49;
      let x_1491 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[(x_1486 / 4i)][(x_1488 % 4i)];
      let x_1492 : vec3<f32> = vs_TEXCOORD7;
      let x_1495 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1491 * vec4<f32>(x_1492.x, x_1492.x, x_1492.x, x_1492.x)) + x_1495);
      let x_1497 : i32 = u_xlati49;
      let x_1500 : i32 = u_xlati49;
      let x_1504 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[((x_1497 + 2i) / 4i)][((x_1500 + 2i) % 4i)];
      let x_1505 : vec3<f32> = vs_TEXCOORD7;
      let x_1508 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1504 * vec4<f32>(x_1505.z, x_1505.z, x_1505.z, x_1505.z)) + x_1508);
      let x_1510 : vec4<f32> = u_xlat11;
      let x_1511 : i32 = u_xlati49;
      let x_1514 : i32 = u_xlati49;
      let x_1518 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[((x_1511 + 3i) / 4i)][((x_1514 + 3i) % 4i)];
      u_xlat11 = (x_1510 + x_1518);
      let x_1520 : vec4<f32> = u_xlat11;
      let x_1522 : vec4<f32> = u_xlat11;
      let x_1524 : vec3<f32> = (vec3<f32>(x_1520.x, x_1520.y, x_1520.z) / vec3<f32>(x_1522.w, x_1522.w, x_1522.w));
      let x_1525 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
      let x_1528 : vec4<f32> = u_xlat11;
      let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
      let x_1531 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
      let x_1539 : vec3<f32> = txVec1;
      let x_1541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
      u_xlat49 = x_1541;
      let x_1542 : i32 = u_xlati47;
      let x_1544 : f32 = x_767.x_AdditionalShadowParams[x_1542].x;
      u_xlat50 = (1.0f + -(x_1544));
      let x_1547 : f32 = u_xlat49;
      let x_1548 : i32 = u_xlati47;
      let x_1550 : f32 = x_767.x_AdditionalShadowParams[x_1548].x;
      let x_1552 : f32 = u_xlat50;
      u_xlat49 = ((x_1547 * x_1550) + x_1552);
      let x_1555 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1555);
      let x_1559 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1559 >= 1.0f);
      let x_1561 : bool = u_xlatb50;
      let x_1562 : bool = u_xlatb51;
      u_xlatb50 = (x_1561 | x_1562);
      let x_1564 : bool = u_xlatb50;
      let x_1565 : f32 = u_xlat49;
      u_xlat49 = select(x_1565, 1.0f, x_1564);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1568 : f32 = u_xlat49;
    u_xlat50 = (-(x_1568) + 1.0f);
    let x_1571 : f32 = u_xlat44;
    let x_1572 : f32 = u_xlat50;
    let x_1574 : f32 = u_xlat49;
    u_xlat49 = ((x_1571 * x_1572) + x_1574);
    let x_1577 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1577 & 31i)));
    let x_1580 : i32 = u_xlati50;
    let x_1583 : f32 = x_831.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1580) & bitcast<u32>(x_1583)));
    let x_1587 : i32 = u_xlati50;
    if ((x_1587 != 0i)) {
      let x_1591 : i32 = u_xlati47;
      let x_1593 : f32 = x_831.x_AdditionalLightsLightTypes[x_1591].el;
      u_xlati50 = i32(x_1593);
      let x_1596 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1596 != 0i));
      let x_1600 : i32 = u_xlati47;
      u_xlati52 = (x_1600 << bitcast<u32>(2i));
      let x_1602 : i32 = u_xlati51;
      if ((x_1602 != 0i)) {
        let x_1606 : vec3<f32> = vs_TEXCOORD7;
        let x_1608 : i32 = u_xlati52;
        let x_1611 : i32 = u_xlati52;
        let x_1615 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1608 + 1i) / 4i)][((x_1611 + 1i) % 4i)];
        let x_1617 : vec3<f32> = (vec3<f32>(x_1606.y, x_1606.y, x_1606.y) * vec3<f32>(x_1615.x, x_1615.y, x_1615.w));
        let x_1618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
        let x_1620 : i32 = u_xlati52;
        let x_1622 : i32 = u_xlati52;
        let x_1625 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[(x_1620 / 4i)][(x_1622 % 4i)];
        let x_1627 : vec3<f32> = vs_TEXCOORD7;
        let x_1630 : vec4<f32> = u_xlat11;
        let x_1632 : vec3<f32> = ((vec3<f32>(x_1625.x, x_1625.y, x_1625.w) * vec3<f32>(x_1627.x, x_1627.x, x_1627.x)) + vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
        let x_1633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
        let x_1635 : i32 = u_xlati52;
        let x_1638 : i32 = u_xlati52;
        let x_1642 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1635 + 2i) / 4i)][((x_1638 + 2i) % 4i)];
        let x_1644 : vec3<f32> = vs_TEXCOORD7;
        let x_1647 : vec4<f32> = u_xlat11;
        let x_1649 : vec3<f32> = ((vec3<f32>(x_1642.x, x_1642.y, x_1642.w) * vec3<f32>(x_1644.z, x_1644.z, x_1644.z)) + vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
        let x_1650 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
        let x_1652 : vec4<f32> = u_xlat11;
        let x_1654 : i32 = u_xlati52;
        let x_1657 : i32 = u_xlati52;
        let x_1661 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1654 + 3i) / 4i)][((x_1657 + 3i) % 4i)];
        let x_1663 : vec3<f32> = (vec3<f32>(x_1652.x, x_1652.y, x_1652.z) + vec3<f32>(x_1661.x, x_1661.y, x_1661.w));
        let x_1664 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
        let x_1666 : vec4<f32> = u_xlat11;
        let x_1668 : vec4<f32> = u_xlat11;
        let x_1670 : vec2<f32> = (vec2<f32>(x_1666.x, x_1666.y) / vec2<f32>(x_1668.z, x_1668.z));
        let x_1671 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1670.x, x_1670.y, x_1671.z, x_1671.w);
        let x_1673 : vec4<f32> = u_xlat11;
        let x_1676 : vec2<f32> = ((vec2<f32>(x_1673.x, x_1673.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1677 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1676.x, x_1676.y, x_1677.z, x_1677.w);
        let x_1679 : vec4<f32> = u_xlat11;
        let x_1683 : vec2<f32> = clamp(vec2<f32>(x_1679.x, x_1679.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1683.x, x_1683.y, x_1684.z, x_1684.w);
        let x_1686 : i32 = u_xlati47;
        let x_1688 : vec4<f32> = x_831.x_AdditionalLightsCookieAtlasUVRects[x_1686];
        let x_1690 : vec4<f32> = u_xlat11;
        let x_1693 : i32 = u_xlati47;
        let x_1695 : vec4<f32> = x_831.x_AdditionalLightsCookieAtlasUVRects[x_1693];
        let x_1697 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1690.x, x_1690.y)) + vec2<f32>(x_1695.z, x_1695.w));
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
      } else {
        let x_1701 : i32 = u_xlati50;
        u_xlatb50 = (x_1701 == 1i);
        let x_1703 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1703);
        let x_1705 : i32 = u_xlati50;
        if ((x_1705 != 0i)) {
          let x_1711 : vec3<f32> = vs_TEXCOORD7;
          let x_1713 : i32 = u_xlati52;
          let x_1716 : i32 = u_xlati52;
          let x_1720 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1713 + 1i) / 4i)][((x_1716 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1711.y, x_1711.y) * vec2<f32>(x_1720.x, x_1720.y));
          let x_1723 : i32 = u_xlati52;
          let x_1725 : i32 = u_xlati52;
          let x_1728 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[(x_1723 / 4i)][(x_1725 % 4i)];
          let x_1730 : vec3<f32> = vs_TEXCOORD7;
          let x_1733 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1730.x, x_1730.x)) + x_1733);
          let x_1735 : i32 = u_xlati52;
          let x_1738 : i32 = u_xlati52;
          let x_1742 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1735 + 2i) / 4i)][((x_1738 + 2i) % 4i)];
          let x_1744 : vec3<f32> = vs_TEXCOORD7;
          let x_1747 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1744.z, x_1744.z)) + x_1747);
          let x_1749 : vec2<f32> = u_xlat39;
          let x_1750 : i32 = u_xlati52;
          let x_1753 : i32 = u_xlati52;
          let x_1757 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1750 + 3i) / 4i)][((x_1753 + 3i) % 4i)];
          u_xlat39 = (x_1749 + vec2<f32>(x_1757.x, x_1757.y));
          let x_1760 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1760 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1763 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1763);
          let x_1765 : i32 = u_xlati47;
          let x_1767 : vec4<f32> = x_831.x_AdditionalLightsCookieAtlasUVRects[x_1765];
          let x_1769 : vec2<f32> = u_xlat39;
          let x_1771 : i32 = u_xlati47;
          let x_1773 : vec4<f32> = x_831.x_AdditionalLightsCookieAtlasUVRects[x_1771];
          let x_1775 : vec2<f32> = ((vec2<f32>(x_1767.x, x_1767.y) * x_1769) + vec2<f32>(x_1773.z, x_1773.w));
          let x_1776 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1775.x, x_1775.y, x_1776.z, x_1776.w);
        } else {
          let x_1779 : vec3<f32> = vs_TEXCOORD7;
          let x_1781 : i32 = u_xlati52;
          let x_1784 : i32 = u_xlati52;
          let x_1788 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1781 + 1i) / 4i)][((x_1784 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1779.y, x_1779.y, x_1779.y, x_1779.y) * x_1788);
          let x_1790 : i32 = u_xlati52;
          let x_1792 : i32 = u_xlati52;
          let x_1795 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[(x_1790 / 4i)][(x_1792 % 4i)];
          let x_1796 : vec3<f32> = vs_TEXCOORD7;
          let x_1799 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1795 * vec4<f32>(x_1796.x, x_1796.x, x_1796.x, x_1796.x)) + x_1799);
          let x_1801 : i32 = u_xlati52;
          let x_1804 : i32 = u_xlati52;
          let x_1808 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1801 + 2i) / 4i)][((x_1804 + 2i) % 4i)];
          let x_1809 : vec3<f32> = vs_TEXCOORD7;
          let x_1812 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1808 * vec4<f32>(x_1809.z, x_1809.z, x_1809.z, x_1809.z)) + x_1812);
          let x_1814 : vec4<f32> = u_xlat12;
          let x_1815 : i32 = u_xlati52;
          let x_1818 : i32 = u_xlati52;
          let x_1822 : vec4<f32> = x_831.x_AdditionalLightsWorldToLights[((x_1815 + 3i) / 4i)][((x_1818 + 3i) % 4i)];
          u_xlat12 = (x_1814 + x_1822);
          let x_1824 : vec4<f32> = u_xlat12;
          let x_1826 : vec4<f32> = u_xlat12;
          let x_1828 : vec3<f32> = (vec3<f32>(x_1824.x, x_1824.y, x_1824.z) / vec3<f32>(x_1826.w, x_1826.w, x_1826.w));
          let x_1829 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
          let x_1831 : vec4<f32> = u_xlat12;
          let x_1833 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1831.x, x_1831.y, x_1831.z), vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
          let x_1836 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1836);
          let x_1838 : f32 = u_xlat50;
          let x_1840 : vec4<f32> = u_xlat12;
          let x_1842 : vec3<f32> = (vec3<f32>(x_1838, x_1838, x_1838) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
          let x_1843 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
          let x_1845 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1845.x, x_1845.y, x_1845.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1850 : f32 = u_xlat50;
          u_xlat50 = max(x_1850, 0.00000099999999747524f);
          let x_1853 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1853);
          let x_1855 : f32 = u_xlat50;
          let x_1857 : vec4<f32> = u_xlat12;
          let x_1859 : vec3<f32> = (vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.z, x_1857.x, x_1857.y));
          let x_1860 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
          let x_1863 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1863);
          let x_1867 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1867, 0.0f, 1.0f);
          let x_1871 : vec4<f32> = u_xlat13;
          let x_1873 : vec4<bool> = (vec4<f32>(x_1871.y, x_1871.z, x_1871.y, x_1871.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1873.x, x_1873.y);
          let x_1876 : bool = u_xlatb39.x;
          if (x_1876) {
            let x_1881 : f32 = u_xlat13.x;
            x_1877 = x_1881;
          } else {
            let x_1884 : f32 = u_xlat13.x;
            x_1877 = -(x_1884);
          }
          let x_1886 : f32 = x_1877;
          u_xlat39.x = x_1886;
          let x_1889 : bool = u_xlatb39.y;
          if (x_1889) {
            let x_1894 : f32 = u_xlat13.x;
            x_1890 = x_1894;
          } else {
            let x_1897 : f32 = u_xlat13.x;
            x_1890 = -(x_1897);
          }
          let x_1899 : f32 = x_1890;
          u_xlat39.y = x_1899;
          let x_1901 : vec4<f32> = u_xlat12;
          let x_1903 : f32 = u_xlat50;
          let x_1906 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1901.x, x_1901.y) * vec2<f32>(x_1903, x_1903)) + x_1906);
          let x_1908 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1908 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1911 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1911, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1915 : i32 = u_xlati47;
          let x_1917 : vec4<f32> = x_831.x_AdditionalLightsCookieAtlasUVRects[x_1915];
          let x_1919 : vec2<f32> = u_xlat39;
          let x_1921 : i32 = u_xlati47;
          let x_1923 : vec4<f32> = x_831.x_AdditionalLightsCookieAtlasUVRects[x_1921];
          let x_1925 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * x_1919) + vec2<f32>(x_1923.z, x_1923.w));
          let x_1926 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1925.x, x_1925.y, x_1926.z, x_1926.w);
        }
      }
      let x_1933 : vec4<f32> = u_xlat11;
      let x_1935 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1933.x, x_1933.y), 0.0f);
      u_xlat11 = x_1935;
      let x_1937 : bool = u_xlatb7.y;
      if (x_1937) {
        let x_1942 : f32 = u_xlat11.w;
        x_1938 = x_1942;
      } else {
        let x_1945 : f32 = u_xlat11.x;
        x_1938 = x_1945;
      }
      let x_1946 : f32 = x_1938;
      u_xlat50 = x_1946;
      let x_1948 : bool = u_xlatb7.x;
      if (x_1948) {
        let x_1952 : vec4<f32> = u_xlat11;
        x_1949 = vec3<f32>(x_1952.x, x_1952.y, x_1952.z);
      } else {
        let x_1955 : f32 = u_xlat50;
        x_1949 = vec3<f32>(x_1955, x_1955, x_1955);
      }
      let x_1957 : vec3<f32> = x_1949;
      let x_1958 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1964 : vec4<f32> = u_xlat11;
    let x_1966 : i32 = u_xlati47;
    let x_1968 : vec4<f32> = x_1310.x_AdditionalLightsColor[x_1966];
    let x_1970 : vec3<f32> = (vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
    let x_1971 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
    let x_1973 : f32 = u_xlat48;
    let x_1974 : f32 = u_xlat49;
    u_xlat47 = (x_1973 * x_1974);
    let x_1976 : vec4<f32> = u_xlat1;
    let x_1978 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1976.x, x_1976.y, x_1976.z), vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
    let x_1981 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1981, 0.0f, 1.0f);
    let x_1983 : f32 = u_xlat47;
    let x_1984 : f32 = u_xlat48;
    u_xlat47 = (x_1983 * x_1984);
    let x_1986 : f32 = u_xlat47;
    let x_1988 : vec4<f32> = u_xlat11;
    let x_1990 : vec3<f32> = (vec3<f32>(x_1986, x_1986, x_1986) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
    let x_1993 : vec4<f32> = u_xlat9;
    let x_1995 : f32 = u_xlat35;
    let x_1998 : vec3<f32> = u_xlat2;
    let x_1999 : vec3<f32> = ((vec3<f32>(x_1993.x, x_1993.y, x_1993.z) * vec3<f32>(x_1995, x_1995, x_1995)) + x_1998);
    let x_2000 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
    let x_2002 : vec4<f32> = u_xlat9;
    let x_2004 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2002.x, x_2002.y, x_2002.z), vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
    let x_2007 : f32 = u_xlat47;
    u_xlat47 = max(x_2007, 1.17549435e-38f);
    let x_2009 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2009);
    let x_2011 : f32 = u_xlat47;
    let x_2013 : vec4<f32> = u_xlat9;
    let x_2015 : vec3<f32> = (vec3<f32>(x_2011, x_2011, x_2011) * vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
    let x_2016 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
    let x_2018 : vec4<f32> = u_xlat1;
    let x_2020 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2018.x, x_2018.y, x_2018.z), vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
    let x_2023 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2023, 0.0f, 1.0f);
    let x_2025 : vec4<f32> = u_xlat10;
    let x_2027 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2025.x, x_2025.y, x_2025.z), vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2030, 0.0f, 1.0f);
    let x_2032 : f32 = u_xlat47;
    let x_2033 : f32 = u_xlat47;
    u_xlat47 = (x_2032 * x_2033);
    let x_2035 : f32 = u_xlat47;
    let x_2037 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2035 * x_2037) + 1.00001001358032226562f);
    let x_2040 : f32 = u_xlat48;
    let x_2041 : f32 = u_xlat48;
    u_xlat48 = (x_2040 * x_2041);
    let x_2043 : f32 = u_xlat47;
    let x_2044 : f32 = u_xlat47;
    u_xlat47 = (x_2043 * x_2044);
    let x_2046 : f32 = u_xlat48;
    u_xlat48 = max(x_2046, 0.10000000149011611938f);
    let x_2048 : f32 = u_xlat47;
    let x_2049 : f32 = u_xlat48;
    u_xlat47 = (x_2048 * x_2049);
    let x_2051 : f32 = u_xlat45;
    let x_2052 : f32 = u_xlat47;
    u_xlat47 = (x_2051 * x_2052);
    let x_2054 : f32 = u_xlat43;
    let x_2055 : f32 = u_xlat47;
    u_xlat47 = (x_2054 / x_2055);
    let x_2057 : vec4<f32> = u_xlat5;
    let x_2059 : f32 = u_xlat47;
    let x_2062 : vec4<f32> = u_xlat4;
    let x_2064 : vec3<f32> = ((vec3<f32>(x_2057.x, x_2057.y, x_2057.z) * vec3<f32>(x_2059, x_2059, x_2059)) + vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
    let x_2065 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
    let x_2067 : vec4<f32> = u_xlat9;
    let x_2069 : vec4<f32> = u_xlat11;
    let x_2072 : vec4<f32> = u_xlat8;
    let x_2074 : vec3<f32> = ((vec3<f32>(x_2067.x, x_2067.y, x_2067.z) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);

    continuing {
      let x_2077 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2077 + bitcast<u32>(1i));
    }
  }
  let x_2079 : vec4<f32> = u_xlat3;
  let x_2081 : f32 = u_xlat14;
  let x_2084 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2079.x, x_2079.y, x_2079.z) * vec3<f32>(x_2081, x_2081, x_2081)) + vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
  let x_2087 : vec4<f32> = u_xlat8;
  let x_2089 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2087.x, x_2087.y, x_2087.z) + x_2089);
  let x_2093 : f32 = u_xlat42;
  let x_2095 : vec3<f32> = u_xlat0;
  let x_2096 : vec3<f32> = (vec3<f32>(x_2093, x_2093, x_2093) * x_2095);
  let x_2097 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
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


