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

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat44 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlati44 : i32;

@group(1) @binding(2) var<uniform> x_816 : UnityPerDraw;

var<private> u_xlat45 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1041 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_1536 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var x_994 : f32;
  var x_1124 : f32;
  var x_1135 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1666 : f32;
  var x_1676 : f32;
  var txVec1 : vec3<f32>;
  var x_2097 : f32;
  var x_2110 : f32;
  var x_2158 : f32;
  var x_2169 : vec3<f32>;
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
  let x_621 : vec3<f32> = vs_TEXCOORD7;
  let x_631 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres0;
  let x_634 : vec3<f32> = (x_621 + -(vec3<f32>(x_631.x, x_631.y, x_631.z)));
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = vs_TEXCOORD7;
  let x_639 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres1;
  let x_642 : vec3<f32> = (x_637 + -(vec3<f32>(x_639.x, x_639.y, x_639.z)));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = vs_TEXCOORD7;
  let x_648 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres2;
  let x_651 : vec3<f32> = (x_645 + -(vec3<f32>(x_648.x, x_648.y, x_648.z)));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = vs_TEXCOORD7;
  let x_656 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres3;
  let x_659 : vec3<f32> = (x_654 + -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
  let x_660 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_674 : vec4<f32> = u_xlat6;
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec4<f32> = x_629.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_688 < x_690);
  let x_693 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_693);
  let x_697 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_697);
  let x_701 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_701);
  let x_705 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_705);
  let x_709 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_709);
  let x_714 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_714);
  let x_718 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_718);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.y, x_723.z, x_723.w));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_731.x, x_731.y, x_731.z);
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_735, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_740 : f32 = u_xlat44;
  u_xlat44 = (-(x_740) + 4.0f);
  let x_745 : f32 = u_xlat44;
  u_xlatu44 = u32(x_745);
  let x_749 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_749) << bitcast<u32>(2i));
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_754 : i32 = u_xlati44;
  let x_757 : i32 = u_xlati44;
  let x_761 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_754 + 1i) / 4i)][((x_757 + 1i) % 4i)];
  let x_763 : vec3<f32> = (vec3<f32>(x_752.y, x_752.y, x_752.y) * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : i32 = u_xlati44;
  let x_768 : i32 = u_xlati44;
  let x_771 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_766 / 4i)][(x_768 % 4i)];
  let x_773 : vec3<f32> = vs_TEXCOORD7;
  let x_776 : vec4<f32> = u_xlat3;
  let x_778 : vec3<f32> = ((vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_773.x, x_773.x, x_773.x)) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : i32 = u_xlati44;
  let x_784 : i32 = u_xlati44;
  let x_788 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_781 + 2i) / 4i)][((x_784 + 2i) % 4i)];
  let x_790 : vec3<f32> = vs_TEXCOORD7;
  let x_793 : vec4<f32> = u_xlat3;
  let x_795 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_790.z, x_790.z, x_790.z)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat3;
  let x_800 : i32 = u_xlati44;
  let x_803 : i32 = u_xlati44;
  let x_807 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_800 + 3i) / 4i)][((x_803 + 3i) % 4i)];
  let x_809 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  u_xlat1.w = 1.0f;
  let x_818 : vec4<f32> = x_816.unity_SHAr;
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_818, x_819);
  let x_823 : vec4<f32> = x_816.unity_SHAg;
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_823, x_824);
  let x_828 : vec4<f32> = x_816.unity_SHAb;
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_828, x_829);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_832.y, x_832.z, x_832.z, x_832.x) * vec4<f32>(x_834.x, x_834.y, x_834.z, x_834.z));
  let x_838 : vec4<f32> = x_816.unity_SHBr;
  let x_839 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_838, x_839);
  let x_843 : vec4<f32> = x_816.unity_SHBg;
  let x_844 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_843, x_844);
  let x_848 : vec4<f32> = x_816.unity_SHBb;
  let x_849 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_848, x_849);
  let x_853 : f32 = u_xlat1.y;
  let x_855 : f32 = u_xlat1.y;
  u_xlat43 = (x_853 * x_855);
  let x_858 : f32 = u_xlat1.x;
  let x_860 : f32 = u_xlat1.x;
  let x_862 : f32 = u_xlat43;
  u_xlat43 = ((x_858 * x_860) + -(x_862));
  let x_867 : vec4<f32> = x_816.unity_SHC;
  let x_869 : f32 = u_xlat43;
  let x_872 : vec4<f32> = u_xlat7;
  let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(x_869, x_869, x_869)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat6;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat4;
  let x_886 : vec3<f32> = max(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_890) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat43;
  u_xlat44 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat43;
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
  u_xlat43 = (x_927 * x_929);
  let x_931 : f32 = u_xlat43;
  u_xlat43 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat43;
  let x_936 : f32 = u_xlat43;
  u_xlat45 = (x_935 * x_936);
  let x_938 : f32 = u_xlat28;
  let x_939 : f32 = u_xlat44;
  u_xlat28 = (x_938 + x_939);
  let x_941 : f32 = u_xlat28;
  u_xlat28 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat43;
  u_xlat44 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat14;
  u_xlat14 = min(x_946, 1.0f);
  let x_950 : vec4<f32> = u_xlat3;
  let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
  let x_953 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_951.x, x_951.y, x_953);
  let x_965 : vec3<f32> = txVec0;
  let x_967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_965.xy, x_965.z);
  u_xlat3.x = x_967;
  let x_971 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_971) + 1.0f);
  let x_975 : f32 = u_xlat3.x;
  let x_977 : f32 = x_629.x_MainLightShadowParams.x;
  let x_979 : f32 = u_xlat17;
  u_xlat3.x = ((x_975 * x_977) + x_979);
  let x_984 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_984);
  let x_988 : f32 = u_xlat3.z;
  u_xlatb31 = (x_988 >= 1.0f);
  let x_990 : bool = u_xlatb31;
  let x_991 : bool = u_xlatb17;
  u_xlatb17 = (x_990 | x_991);
  let x_993 : bool = u_xlatb17;
  if (x_993) {
    x_994 = 1.0f;
  } else {
    let x_999 : f32 = u_xlat3.x;
    x_994 = x_999;
  }
  let x_1000 : f32 = x_994;
  u_xlat3.x = x_1000;
  let x_1002 : vec3<f32> = vs_TEXCOORD7;
  let x_1004 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1006 : vec3<f32> = (x_1002 + -(x_1004));
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1015 : f32 = u_xlat17;
  let x_1017 : f32 = x_629.x_MainLightShadowParams.z;
  let x_1020 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat31 = ((x_1015 * x_1017) + x_1020);
  let x_1022 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1022, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat31;
  let x_1030 : f32 = u_xlat46;
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
    let x_1100 : f32 = x_29.x_GlobalMipBias.x;
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
  let x_1153 : vec4<f32> = x_29.x_MainLightColor;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec3<f32> = u_xlat2;
  let x_1160 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1158), vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
  let x_1163 : f32 = u_xlat31;
  let x_1164 : f32 = u_xlat31;
  u_xlat31 = (x_1163 + x_1164);
  let x_1166 : vec4<f32> = u_xlat1;
  let x_1168 : f32 = u_xlat31;
  let x_1172 : vec3<f32> = u_xlat2;
  let x_1174 : vec3<f32> = ((vec3<f32>(x_1166.x, x_1166.y, x_1166.z) * -(vec3<f32>(x_1168, x_1168, x_1168))) + -(x_1172));
  let x_1175 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1177 : vec4<f32> = u_xlat1;
  let x_1179 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), x_1179);
  let x_1181 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1181, 0.0f, 1.0f);
  let x_1183 : f32 = u_xlat31;
  u_xlat31 = (-(x_1183) + 1.0f);
  let x_1186 : f32 = u_xlat31;
  let x_1187 : f32 = u_xlat31;
  u_xlat31 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat31;
  let x_1190 : f32 = u_xlat31;
  u_xlat31 = (x_1189 * x_1190);
  let x_1193 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1193) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1200 : f32 = u_xlat0.x;
  let x_1201 : f32 = u_xlat46;
  u_xlat0.x = (x_1200 * x_1201);
  let x_1205 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1205 * 6.0f);
  let x_1217 : vec4<f32> = u_xlat8;
  let x_1220 : f32 = u_xlat0.x;
  let x_1221 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1217.x, x_1217.y, x_1217.z), x_1220);
  u_xlat8 = x_1221;
  let x_1223 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1223 + -1.0f);
  let x_1227 : f32 = x_816.unity_SpecCube0_HDR.w;
  let x_1229 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1227 * x_1229) + 1.0f);
  let x_1234 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1234, 0.0f);
  let x_1238 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1238);
  let x_1242 : f32 = u_xlat0.x;
  let x_1244 : f32 = x_816.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1242 * x_1244);
  let x_1248 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1248);
  let x_1252 : f32 = u_xlat0.x;
  let x_1254 : f32 = x_816.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1252 * x_1254);
  let x_1257 : vec4<f32> = u_xlat8;
  let x_1259 : vec3<f32> = u_xlat0;
  let x_1261 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) * vec3<f32>(x_1259.x, x_1259.x, x_1259.x));
  let x_1262 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : f32 = u_xlat43;
  let x_1266 : f32 = u_xlat43;
  let x_1270 : vec2<f32> = ((vec2<f32>(x_1264, x_1264) * vec2<f32>(x_1266, x_1266)) + vec2<f32>(-1.0f, 1.0f));
  let x_1271 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
  let x_1274 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1274);
  let x_1278 : vec4<f32> = u_xlat5;
  let x_1281 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1278.x, x_1278.y, x_1278.z)) + vec3<f32>(x_1281, x_1281, x_1281));
  let x_1284 : f32 = u_xlat31;
  let x_1286 : vec3<f32> = u_xlat23;
  let x_1288 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1284, x_1284, x_1284) * x_1286) + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec3<f32> = u_xlat0;
  let x_1293 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1291.x, x_1291.x, x_1291.x) * x_1293);
  let x_1295 : vec4<f32> = u_xlat8;
  let x_1297 : vec3<f32> = u_xlat23;
  let x_1298 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) * x_1297);
  let x_1299 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec4<f32> = u_xlat4;
  let x_1303 : vec4<f32> = u_xlat6;
  let x_1306 : vec4<f32> = u_xlat8;
  let x_1308 : vec3<f32> = ((vec3<f32>(x_1301.x, x_1301.y, x_1301.z) * vec3<f32>(x_1303.x, x_1303.y, x_1303.z)) + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1312 : f32 = u_xlat3.x;
  let x_1314 : f32 = x_816.unity_LightData.z;
  u_xlat0.x = (x_1312 * x_1314);
  let x_1317 : vec4<f32> = u_xlat1;
  let x_1320 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1317.x, x_1317.y, x_1317.z), vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1323, 0.0f, 1.0f);
  let x_1325 : f32 = u_xlat28;
  let x_1327 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1325 * x_1327);
  let x_1330 : vec3<f32> = u_xlat0;
  let x_1332 : vec4<f32> = u_xlat7;
  let x_1334 : vec3<f32> = (vec3<f32>(x_1330.x, x_1330.x, x_1330.x) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1337 : vec3<f32> = u_xlat2;
  let x_1339 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1341 : vec3<f32> = (x_1337 + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : vec4<f32> = u_xlat8;
  let x_1346 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1351 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1351, 1.17549435e-38f);
  let x_1356 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1356);
  let x_1359 : vec3<f32> = u_xlat0;
  let x_1361 : vec4<f32> = u_xlat8;
  let x_1363 : vec3<f32> = (vec3<f32>(x_1359.x, x_1359.x, x_1359.x) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
  let x_1364 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : vec4<f32> = u_xlat1;
  let x_1368 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1366.x, x_1366.y, x_1366.z), vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1373 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1373, 0.0f, 1.0f);
  let x_1377 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1379 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1384 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1384, 0.0f, 1.0f);
  let x_1387 : vec3<f32> = u_xlat0;
  let x_1389 : vec3<f32> = u_xlat0;
  let x_1391 : vec2<f32> = (vec2<f32>(x_1387.x, x_1387.z) * vec2<f32>(x_1389.x, x_1389.z));
  let x_1392 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1391.x, x_1392.y, x_1391.y);
  let x_1395 : f32 = u_xlat0.x;
  let x_1397 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1395 * x_1397) + 1.00001001358032226562f);
  let x_1403 : f32 = u_xlat0.x;
  let x_1405 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1403 * x_1405);
  let x_1409 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1409, 0.10000000149011611938f);
  let x_1412 : f32 = u_xlat28;
  let x_1414 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1412 * x_1414);
  let x_1417 : f32 = u_xlat44;
  let x_1419 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1417 * x_1419);
  let x_1422 : f32 = u_xlat45;
  let x_1424 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1422 / x_1424);
  let x_1427 : vec4<f32> = u_xlat5;
  let x_1429 : vec3<f32> = u_xlat0;
  let x_1432 : vec4<f32> = u_xlat6;
  let x_1434 : vec3<f32> = ((vec3<f32>(x_1427.x, x_1427.y, x_1427.z) * vec3<f32>(x_1429.x, x_1429.x, x_1429.x)) + vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
  let x_1435 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
  let x_1437 : vec4<f32> = u_xlat7;
  let x_1439 : vec4<f32> = u_xlat8;
  let x_1441 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) * vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
  let x_1442 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
  let x_1445 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1447 : f32 = x_816.unity_LightData.y;
  u_xlat0.x = min(x_1445, x_1447);
  let x_1452 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1452));
  let x_1455 : f32 = u_xlat17;
  let x_1457 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_1460 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1455 * x_1457) + x_1460);
  let x_1462 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1462, 0.0f, 1.0f);
  let x_1465 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1467 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1469 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1471 : f32 = x_1041.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1472 : vec4<f32> = vec4<f32>(x_1465, x_1467, x_1469, x_1471);
  let x_1478 : vec4<bool> = (vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1472.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1479 : vec2<bool> = vec2<bool>(x_1478.x, x_1478.y);
  let x_1480 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1492 : u32 = u_xlatu_loop_1;
    let x_1493 : u32 = u_xlatu0;
    if ((x_1492 < x_1493)) {
    } else {
      break;
    }
    let x_1496 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1496 >> 2u);
    let x_1499 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1499 & 3u));
    let x_1502 : u32 = u_xlatu31;
    let x_1505 : vec4<f32> = x_816.unity_LightIndices[bitcast<i32>(x_1502)];
    let x_1515 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1520 : vec4<u32> = indexable[x_1515];
    u_xlat31 = dot(x_1505, bitcast<vec4<f32>>(x_1520));
    let x_1524 : f32 = u_xlat31;
    u_xlati31 = i32(x_1524);
    let x_1526 : vec3<f32> = vs_TEXCOORD7;
    let x_1537 : i32 = u_xlati31;
    let x_1539 : vec4<f32> = x_1536.x_AdditionalLightsPosition[x_1537];
    let x_1542 : i32 = u_xlati31;
    let x_1544 : vec4<f32> = x_1536.x_AdditionalLightsPosition[x_1542];
    u_xlat23 = ((-(x_1526) * vec3<f32>(x_1539.w, x_1539.w, x_1539.w)) + vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
    let x_1547 : vec3<f32> = u_xlat23;
    let x_1548 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1547, x_1548);
    let x_1550 : f32 = u_xlat46;
    u_xlat46 = max(x_1550, 0.00006103515625f);
    let x_1553 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1553);
    let x_1555 : f32 = u_xlat47;
    let x_1557 : vec3<f32> = u_xlat23;
    let x_1558 : vec3<f32> = (vec3<f32>(x_1555, x_1555, x_1555) * x_1557);
    let x_1559 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
    let x_1562 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1562);
    let x_1564 : f32 = u_xlat46;
    let x_1565 : i32 = u_xlati31;
    let x_1567 : f32 = x_1536.x_AdditionalLightsAttenuation[x_1565].x;
    u_xlat46 = (x_1564 * x_1567);
    let x_1569 : f32 = u_xlat46;
    let x_1571 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1569) * x_1571) + 1.0f);
    let x_1574 : f32 = u_xlat46;
    u_xlat46 = max(x_1574, 0.0f);
    let x_1576 : f32 = u_xlat46;
    let x_1577 : f32 = u_xlat46;
    u_xlat46 = (x_1576 * x_1577);
    let x_1579 : f32 = u_xlat46;
    let x_1580 : f32 = u_xlat48;
    u_xlat46 = (x_1579 * x_1580);
    let x_1582 : i32 = u_xlati31;
    let x_1584 : vec4<f32> = x_1536.x_AdditionalLightsSpotDir[x_1582];
    let x_1586 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1584.x, x_1584.y, x_1584.z), vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
    let x_1589 : f32 = u_xlat48;
    let x_1590 : i32 = u_xlati31;
    let x_1592 : f32 = x_1536.x_AdditionalLightsAttenuation[x_1590].z;
    let x_1594 : i32 = u_xlati31;
    let x_1596 : f32 = x_1536.x_AdditionalLightsAttenuation[x_1594].w;
    u_xlat48 = ((x_1589 * x_1592) + x_1596);
    let x_1598 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1598, 0.0f, 1.0f);
    let x_1600 : f32 = u_xlat48;
    let x_1601 : f32 = u_xlat48;
    u_xlat48 = (x_1600 * x_1601);
    let x_1603 : f32 = u_xlat46;
    let x_1604 : f32 = u_xlat48;
    u_xlat46 = (x_1603 * x_1604);
    let x_1607 : i32 = u_xlati31;
    let x_1609 : f32 = x_629.x_AdditionalShadowParams[x_1607].w;
    u_xlati48 = i32(x_1609);
    let x_1612 : i32 = u_xlati48;
    u_xlatb49 = (x_1612 >= 0i);
    let x_1614 : bool = u_xlatb49;
    if (x_1614) {
      let x_1618 : i32 = u_xlati31;
      let x_1620 : f32 = x_629.x_AdditionalShadowParams[x_1618].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1620, x_1620, x_1620, x_1620))));
      let x_1624 : bool = u_xlatb49;
      if (x_1624) {
        let x_1628 : vec4<f32> = u_xlat10;
        let x_1631 : vec4<f32> = u_xlat10;
        let x_1634 : vec4<bool> = (abs(vec4<f32>(x_1628.z, x_1628.z, x_1628.y, x_1628.z)) >= abs(vec4<f32>(x_1631.x, x_1631.y, x_1631.x, x_1631.x)));
        let x_1636 : vec3<bool> = vec3<bool>(x_1634.x, x_1634.y, x_1634.z);
        let x_1637 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
        let x_1640 : bool = u_xlatb11.y;
        let x_1642 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1640 & x_1642);
        let x_1644 : vec4<f32> = u_xlat10;
        let x_1647 : vec4<bool> = (-(vec4<f32>(x_1644.z, x_1644.y, x_1644.z, x_1644.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1648 : vec3<bool> = vec3<bool>(x_1647.x, x_1647.y, x_1647.w);
        let x_1649 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1648.x, x_1648.y, x_1649.z, x_1648.z);
        let x_1652 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1652);
        let x_1657 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1657);
        let x_1662 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1662);
        let x_1665 : bool = u_xlatb11.z;
        if (x_1665) {
          let x_1670 : f32 = u_xlat11.y;
          x_1666 = x_1670;
        } else {
          let x_1672 : f32 = u_xlat50;
          x_1666 = x_1672;
        }
        let x_1673 : f32 = x_1666;
        u_xlat50 = x_1673;
        let x_1675 : bool = u_xlatb49;
        if (x_1675) {
          let x_1680 : f32 = u_xlat11.x;
          x_1676 = x_1680;
        } else {
          let x_1682 : f32 = u_xlat50;
          x_1676 = x_1682;
        }
        let x_1683 : f32 = x_1676;
        u_xlat49 = x_1683;
        let x_1684 : i32 = u_xlati31;
        let x_1686 : f32 = x_629.x_AdditionalShadowParams[x_1684].w;
        u_xlat50 = trunc(x_1686);
        let x_1688 : f32 = u_xlat49;
        let x_1689 : f32 = u_xlat50;
        u_xlat49 = (x_1688 + x_1689);
        let x_1691 : f32 = u_xlat49;
        u_xlati48 = i32(x_1691);
      }
      let x_1693 : i32 = u_xlati48;
      u_xlati48 = (x_1693 << bitcast<u32>(2i));
      let x_1695 : vec3<f32> = vs_TEXCOORD7;
      let x_1697 : i32 = u_xlati48;
      let x_1700 : i32 = u_xlati48;
      let x_1704 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1697 + 1i) / 4i)][((x_1700 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1695.y, x_1695.y, x_1695.y, x_1695.y) * x_1704);
      let x_1706 : i32 = u_xlati48;
      let x_1708 : i32 = u_xlati48;
      let x_1711 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_1706 / 4i)][(x_1708 % 4i)];
      let x_1712 : vec3<f32> = vs_TEXCOORD7;
      let x_1715 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1711 * vec4<f32>(x_1712.x, x_1712.x, x_1712.x, x_1712.x)) + x_1715);
      let x_1717 : i32 = u_xlati48;
      let x_1720 : i32 = u_xlati48;
      let x_1724 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1717 + 2i) / 4i)][((x_1720 + 2i) % 4i)];
      let x_1725 : vec3<f32> = vs_TEXCOORD7;
      let x_1728 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1724 * vec4<f32>(x_1725.z, x_1725.z, x_1725.z, x_1725.z)) + x_1728);
      let x_1730 : vec4<f32> = u_xlat11;
      let x_1731 : i32 = u_xlati48;
      let x_1734 : i32 = u_xlati48;
      let x_1738 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1731 + 3i) / 4i)][((x_1734 + 3i) % 4i)];
      u_xlat11 = (x_1730 + x_1738);
      let x_1740 : vec4<f32> = u_xlat11;
      let x_1742 : vec4<f32> = u_xlat11;
      let x_1744 : vec3<f32> = (vec3<f32>(x_1740.x, x_1740.y, x_1740.z) / vec3<f32>(x_1742.w, x_1742.w, x_1742.w));
      let x_1745 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
      let x_1748 : vec4<f32> = u_xlat11;
      let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
      let x_1751 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
      let x_1759 : vec3<f32> = txVec1;
      let x_1761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
      u_xlat48 = x_1761;
      let x_1762 : i32 = u_xlati31;
      let x_1764 : f32 = x_629.x_AdditionalShadowParams[x_1762].x;
      u_xlat49 = (1.0f + -(x_1764));
      let x_1767 : f32 = u_xlat48;
      let x_1768 : i32 = u_xlati31;
      let x_1770 : f32 = x_629.x_AdditionalShadowParams[x_1768].x;
      let x_1772 : f32 = u_xlat49;
      u_xlat48 = ((x_1767 * x_1770) + x_1772);
      let x_1775 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1775);
      let x_1779 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1779 >= 1.0f);
      let x_1781 : bool = u_xlatb49;
      let x_1782 : bool = u_xlatb50;
      u_xlatb49 = (x_1781 | x_1782);
      let x_1784 : bool = u_xlatb49;
      let x_1785 : f32 = u_xlat48;
      u_xlat48 = select(x_1785, 1.0f, x_1784);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1788 : f32 = u_xlat48;
    u_xlat49 = (-(x_1788) + 1.0f);
    let x_1791 : f32 = u_xlat28;
    let x_1792 : f32 = u_xlat49;
    let x_1794 : f32 = u_xlat48;
    u_xlat48 = ((x_1791 * x_1792) + x_1794);
    let x_1797 : i32 = u_xlati31;
    u_xlati49 = (1i << bitcast<u32>((x_1797 & 31i)));
    let x_1800 : i32 = u_xlati49;
    let x_1803 : f32 = x_1041.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1800) & bitcast<u32>(x_1803)));
    let x_1807 : i32 = u_xlati49;
    if ((x_1807 != 0i)) {
      let x_1811 : i32 = u_xlati31;
      let x_1813 : f32 = x_1041.x_AdditionalLightsLightTypes[x_1811].el;
      u_xlati49 = i32(x_1813);
      let x_1816 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1816 != 0i));
      let x_1820 : i32 = u_xlati31;
      u_xlati52 = (x_1820 << bitcast<u32>(2i));
      let x_1822 : i32 = u_xlati50;
      if ((x_1822 != 0i)) {
        let x_1826 : vec3<f32> = vs_TEXCOORD7;
        let x_1828 : i32 = u_xlati52;
        let x_1831 : i32 = u_xlati52;
        let x_1835 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1828 + 1i) / 4i)][((x_1831 + 1i) % 4i)];
        let x_1837 : vec3<f32> = (vec3<f32>(x_1826.y, x_1826.y, x_1826.y) * vec3<f32>(x_1835.x, x_1835.y, x_1835.w));
        let x_1838 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
        let x_1840 : i32 = u_xlati52;
        let x_1842 : i32 = u_xlati52;
        let x_1845 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[(x_1840 / 4i)][(x_1842 % 4i)];
        let x_1847 : vec3<f32> = vs_TEXCOORD7;
        let x_1850 : vec4<f32> = u_xlat11;
        let x_1852 : vec3<f32> = ((vec3<f32>(x_1845.x, x_1845.y, x_1845.w) * vec3<f32>(x_1847.x, x_1847.x, x_1847.x)) + vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
        let x_1853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
        let x_1855 : i32 = u_xlati52;
        let x_1858 : i32 = u_xlati52;
        let x_1862 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1855 + 2i) / 4i)][((x_1858 + 2i) % 4i)];
        let x_1864 : vec3<f32> = vs_TEXCOORD7;
        let x_1867 : vec4<f32> = u_xlat11;
        let x_1869 : vec3<f32> = ((vec3<f32>(x_1862.x, x_1862.y, x_1862.w) * vec3<f32>(x_1864.z, x_1864.z, x_1864.z)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
        let x_1870 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
        let x_1872 : vec4<f32> = u_xlat11;
        let x_1874 : i32 = u_xlati52;
        let x_1877 : i32 = u_xlati52;
        let x_1881 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1874 + 3i) / 4i)][((x_1877 + 3i) % 4i)];
        let x_1883 : vec3<f32> = (vec3<f32>(x_1872.x, x_1872.y, x_1872.z) + vec3<f32>(x_1881.x, x_1881.y, x_1881.w));
        let x_1884 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
        let x_1886 : vec4<f32> = u_xlat11;
        let x_1888 : vec4<f32> = u_xlat11;
        let x_1890 : vec2<f32> = (vec2<f32>(x_1886.x, x_1886.y) / vec2<f32>(x_1888.z, x_1888.z));
        let x_1891 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1890.x, x_1890.y, x_1891.z, x_1891.w);
        let x_1893 : vec4<f32> = u_xlat11;
        let x_1896 : vec2<f32> = ((vec2<f32>(x_1893.x, x_1893.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1897 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1896.x, x_1896.y, x_1897.z, x_1897.w);
        let x_1899 : vec4<f32> = u_xlat11;
        let x_1903 : vec2<f32> = clamp(vec2<f32>(x_1899.x, x_1899.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1904 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
        let x_1906 : i32 = u_xlati31;
        let x_1908 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1906];
        let x_1910 : vec4<f32> = u_xlat11;
        let x_1913 : i32 = u_xlati31;
        let x_1915 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1913];
        let x_1917 : vec2<f32> = ((vec2<f32>(x_1908.x, x_1908.y) * vec2<f32>(x_1910.x, x_1910.y)) + vec2<f32>(x_1915.z, x_1915.w));
        let x_1918 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1917.x, x_1917.y, x_1918.z, x_1918.w);
      } else {
        let x_1921 : i32 = u_xlati49;
        u_xlatb49 = (x_1921 == 1i);
        let x_1923 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1923);
        let x_1925 : i32 = u_xlati49;
        if ((x_1925 != 0i)) {
          let x_1931 : vec3<f32> = vs_TEXCOORD7;
          let x_1933 : i32 = u_xlati52;
          let x_1936 : i32 = u_xlati52;
          let x_1940 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1933 + 1i) / 4i)][((x_1936 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1931.y, x_1931.y) * vec2<f32>(x_1940.x, x_1940.y));
          let x_1943 : i32 = u_xlati52;
          let x_1945 : i32 = u_xlati52;
          let x_1948 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[(x_1943 / 4i)][(x_1945 % 4i)];
          let x_1950 : vec3<f32> = vs_TEXCOORD7;
          let x_1953 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1948.x, x_1948.y) * vec2<f32>(x_1950.x, x_1950.x)) + x_1953);
          let x_1955 : i32 = u_xlati52;
          let x_1958 : i32 = u_xlati52;
          let x_1962 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1955 + 2i) / 4i)][((x_1958 + 2i) % 4i)];
          let x_1964 : vec3<f32> = vs_TEXCOORD7;
          let x_1967 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1962.x, x_1962.y) * vec2<f32>(x_1964.z, x_1964.z)) + x_1967);
          let x_1969 : vec2<f32> = u_xlat39;
          let x_1970 : i32 = u_xlati52;
          let x_1973 : i32 = u_xlati52;
          let x_1977 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_1970 + 3i) / 4i)][((x_1973 + 3i) % 4i)];
          u_xlat39 = (x_1969 + vec2<f32>(x_1977.x, x_1977.y));
          let x_1980 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1980 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1983 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1983);
          let x_1985 : i32 = u_xlati31;
          let x_1987 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1985];
          let x_1989 : vec2<f32> = u_xlat39;
          let x_1991 : i32 = u_xlati31;
          let x_1993 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_1991];
          let x_1995 : vec2<f32> = ((vec2<f32>(x_1987.x, x_1987.y) * x_1989) + vec2<f32>(x_1993.z, x_1993.w));
          let x_1996 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1996.w);
        } else {
          let x_1999 : vec3<f32> = vs_TEXCOORD7;
          let x_2001 : i32 = u_xlati52;
          let x_2004 : i32 = u_xlati52;
          let x_2008 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_2001 + 1i) / 4i)][((x_2004 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1999.y, x_1999.y, x_1999.y, x_1999.y) * x_2008);
          let x_2010 : i32 = u_xlati52;
          let x_2012 : i32 = u_xlati52;
          let x_2015 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[(x_2010 / 4i)][(x_2012 % 4i)];
          let x_2016 : vec3<f32> = vs_TEXCOORD7;
          let x_2019 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2015 * vec4<f32>(x_2016.x, x_2016.x, x_2016.x, x_2016.x)) + x_2019);
          let x_2021 : i32 = u_xlati52;
          let x_2024 : i32 = u_xlati52;
          let x_2028 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_2021 + 2i) / 4i)][((x_2024 + 2i) % 4i)];
          let x_2029 : vec3<f32> = vs_TEXCOORD7;
          let x_2032 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2028 * vec4<f32>(x_2029.z, x_2029.z, x_2029.z, x_2029.z)) + x_2032);
          let x_2034 : vec4<f32> = u_xlat12;
          let x_2035 : i32 = u_xlati52;
          let x_2038 : i32 = u_xlati52;
          let x_2042 : vec4<f32> = x_1041.x_AdditionalLightsWorldToLights[((x_2035 + 3i) / 4i)][((x_2038 + 3i) % 4i)];
          u_xlat12 = (x_2034 + x_2042);
          let x_2044 : vec4<f32> = u_xlat12;
          let x_2046 : vec4<f32> = u_xlat12;
          let x_2048 : vec3<f32> = (vec3<f32>(x_2044.x, x_2044.y, x_2044.z) / vec3<f32>(x_2046.w, x_2046.w, x_2046.w));
          let x_2049 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
          let x_2051 : vec4<f32> = u_xlat12;
          let x_2053 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2051.x, x_2051.y, x_2051.z), vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
          let x_2056 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2056);
          let x_2058 : f32 = u_xlat49;
          let x_2060 : vec4<f32> = u_xlat12;
          let x_2062 : vec3<f32> = (vec3<f32>(x_2058, x_2058, x_2058) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
          let x_2063 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
          let x_2065 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2065.x, x_2065.y, x_2065.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2070 : f32 = u_xlat49;
          u_xlat49 = max(x_2070, 0.00000099999999747524f);
          let x_2073 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2073);
          let x_2075 : f32 = u_xlat49;
          let x_2077 : vec4<f32> = u_xlat12;
          let x_2079 : vec3<f32> = (vec3<f32>(x_2075, x_2075, x_2075) * vec3<f32>(x_2077.z, x_2077.x, x_2077.y));
          let x_2080 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
          let x_2083 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2083);
          let x_2087 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2087, 0.0f, 1.0f);
          let x_2091 : vec4<f32> = u_xlat13;
          let x_2093 : vec4<bool> = (vec4<f32>(x_2091.y, x_2091.z, x_2091.y, x_2091.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2093.x, x_2093.y);
          let x_2096 : bool = u_xlatb39.x;
          if (x_2096) {
            let x_2101 : f32 = u_xlat13.x;
            x_2097 = x_2101;
          } else {
            let x_2104 : f32 = u_xlat13.x;
            x_2097 = -(x_2104);
          }
          let x_2106 : f32 = x_2097;
          u_xlat39.x = x_2106;
          let x_2109 : bool = u_xlatb39.y;
          if (x_2109) {
            let x_2114 : f32 = u_xlat13.x;
            x_2110 = x_2114;
          } else {
            let x_2117 : f32 = u_xlat13.x;
            x_2110 = -(x_2117);
          }
          let x_2119 : f32 = x_2110;
          u_xlat39.y = x_2119;
          let x_2121 : vec4<f32> = u_xlat12;
          let x_2123 : f32 = u_xlat49;
          let x_2126 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2121.x, x_2121.y) * vec2<f32>(x_2123, x_2123)) + x_2126);
          let x_2128 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2128 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2131 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2131, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2135 : i32 = u_xlati31;
          let x_2137 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_2135];
          let x_2139 : vec2<f32> = u_xlat39;
          let x_2141 : i32 = u_xlati31;
          let x_2143 : vec4<f32> = x_1041.x_AdditionalLightsCookieAtlasUVRects[x_2141];
          let x_2145 : vec2<f32> = ((vec2<f32>(x_2137.x, x_2137.y) * x_2139) + vec2<f32>(x_2143.z, x_2143.w));
          let x_2146 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2145.x, x_2145.y, x_2146.z, x_2146.w);
        }
      }
      let x_2153 : vec4<f32> = u_xlat11;
      let x_2155 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2153.x, x_2153.y), 0.0f);
      u_xlat11 = x_2155;
      let x_2157 : bool = u_xlatb3.y;
      if (x_2157) {
        let x_2162 : f32 = u_xlat11.w;
        x_2158 = x_2162;
      } else {
        let x_2165 : f32 = u_xlat11.x;
        x_2158 = x_2165;
      }
      let x_2166 : f32 = x_2158;
      u_xlat49 = x_2166;
      let x_2168 : bool = u_xlatb3.x;
      if (x_2168) {
        let x_2172 : vec4<f32> = u_xlat11;
        x_2169 = vec3<f32>(x_2172.x, x_2172.y, x_2172.z);
      } else {
        let x_2175 : f32 = u_xlat49;
        x_2169 = vec3<f32>(x_2175, x_2175, x_2175);
      }
      let x_2177 : vec3<f32> = x_2169;
      let x_2178 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2184 : vec4<f32> = u_xlat11;
    let x_2186 : i32 = u_xlati31;
    let x_2188 : vec4<f32> = x_1536.x_AdditionalLightsColor[x_2186];
    let x_2190 : vec3<f32> = (vec3<f32>(x_2184.x, x_2184.y, x_2184.z) * vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
    let x_2191 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
    let x_2193 : f32 = u_xlat46;
    let x_2194 : f32 = u_xlat48;
    u_xlat31 = (x_2193 * x_2194);
    let x_2196 : vec4<f32> = u_xlat1;
    let x_2198 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2196.x, x_2196.y, x_2196.z), vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
    let x_2201 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2201, 0.0f, 1.0f);
    let x_2203 : f32 = u_xlat31;
    let x_2204 : f32 = u_xlat46;
    u_xlat31 = (x_2203 * x_2204);
    let x_2206 : f32 = u_xlat31;
    let x_2208 : vec4<f32> = u_xlat11;
    let x_2210 : vec3<f32> = (vec3<f32>(x_2206, x_2206, x_2206) * vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
    let x_2211 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
    let x_2213 : vec3<f32> = u_xlat23;
    let x_2214 : f32 = u_xlat47;
    let x_2217 : vec3<f32> = u_xlat2;
    u_xlat23 = ((x_2213 * vec3<f32>(x_2214, x_2214, x_2214)) + x_2217);
    let x_2219 : vec3<f32> = u_xlat23;
    let x_2220 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(x_2219, x_2220);
    let x_2222 : f32 = u_xlat31;
    u_xlat31 = max(x_2222, 1.17549435e-38f);
    let x_2224 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_2224);
    let x_2226 : f32 = u_xlat31;
    let x_2228 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2226, x_2226, x_2226) * x_2228);
    let x_2230 : vec4<f32> = u_xlat1;
    let x_2232 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(vec3<f32>(x_2230.x, x_2230.y, x_2230.z), x_2232);
    let x_2234 : f32 = u_xlat31;
    u_xlat31 = clamp(x_2234, 0.0f, 1.0f);
    let x_2236 : vec4<f32> = u_xlat10;
    let x_2238 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(vec3<f32>(x_2236.x, x_2236.y, x_2236.z), x_2238);
    let x_2240 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2240, 0.0f, 1.0f);
    let x_2242 : f32 = u_xlat31;
    let x_2243 : f32 = u_xlat31;
    u_xlat31 = (x_2242 * x_2243);
    let x_2245 : f32 = u_xlat31;
    let x_2247 : f32 = u_xlat9.x;
    u_xlat31 = ((x_2245 * x_2247) + 1.00001001358032226562f);
    let x_2250 : f32 = u_xlat46;
    let x_2251 : f32 = u_xlat46;
    u_xlat46 = (x_2250 * x_2251);
    let x_2253 : f32 = u_xlat31;
    let x_2254 : f32 = u_xlat31;
    u_xlat31 = (x_2253 * x_2254);
    let x_2256 : f32 = u_xlat46;
    u_xlat46 = max(x_2256, 0.10000000149011611938f);
    let x_2258 : f32 = u_xlat31;
    let x_2259 : f32 = u_xlat46;
    u_xlat31 = (x_2258 * x_2259);
    let x_2261 : f32 = u_xlat44;
    let x_2262 : f32 = u_xlat31;
    u_xlat31 = (x_2261 * x_2262);
    let x_2264 : f32 = u_xlat45;
    let x_2265 : f32 = u_xlat31;
    u_xlat31 = (x_2264 / x_2265);
    let x_2267 : vec4<f32> = u_xlat5;
    let x_2269 : f32 = u_xlat31;
    let x_2272 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2267.x, x_2267.y, x_2267.z) * vec3<f32>(x_2269, x_2269, x_2269)) + vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
    let x_2275 : vec3<f32> = u_xlat23;
    let x_2276 : vec4<f32> = u_xlat11;
    let x_2279 : vec4<f32> = u_xlat8;
    let x_2281 : vec3<f32> = ((x_2275 * vec3<f32>(x_2276.x, x_2276.y, x_2276.z)) + vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
    let x_2282 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);

    continuing {
      let x_2284 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2284 + bitcast<u32>(1i));
    }
  }
  let x_2286 : vec4<f32> = u_xlat4;
  let x_2288 : f32 = u_xlat14;
  let x_2291 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2286.x, x_2286.y, x_2286.z) * vec3<f32>(x_2288, x_2288, x_2288)) + vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
  let x_2294 : vec4<f32> = u_xlat8;
  let x_2296 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2294.x, x_2294.y, x_2294.z) + x_2296);
  let x_2300 : f32 = u_xlat42;
  let x_2302 : vec3<f32> = u_xlat0;
  let x_2303 : vec3<f32> = (vec3<f32>(x_2300, x_2300, x_2300) * x_2302);
  let x_2304 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
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


