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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_782 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat21 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_932 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1193 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_583 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1335 : f32;
  var x_1346 : f32;
  var txVec1 : vec3<f32>;
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
  let x_572 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_572;
  let x_575 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_575;
  let x_579 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_579;
  let x_581 : bool = u_xlatb1;
  if (x_581) {
    let x_586 : vec3<f32> = u_xlat15;
    x_583 = x_586;
  } else {
    let x_588 : vec3<f32> = u_xlat2;
    x_583 = x_588;
  }
  let x_589 : vec3<f32> = x_583;
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_593, x_594);
  let x_596 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_596);
  let x_598 : f32 = u_xlat43;
  let x_600 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_598, x_598, x_598) * x_600);
  let x_604 : f32 = vs_TEXCOORD7.y;
  let x_606 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_604 * x_606);
  let x_609 : f32 = x_29.unity_MatrixV[0i].z;
  let x_611 : f32 = vs_TEXCOORD7.x;
  let x_613 : f32 = u_xlat43;
  u_xlat43 = ((x_609 * x_611) + x_613);
  let x_616 : f32 = x_29.unity_MatrixV[2i].z;
  let x_618 : f32 = vs_TEXCOORD7.z;
  let x_620 : f32 = u_xlat43;
  u_xlat43 = ((x_616 * x_618) + x_620);
  let x_622 : f32 = u_xlat43;
  let x_625 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_622 + x_625);
  let x_627 : f32 = u_xlat43;
  let x_630 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_627) + -(x_630));
  let x_633 : f32 = u_xlat43;
  u_xlat43 = max(x_633, 0.0f);
  let x_635 : f32 = u_xlat43;
  let x_637 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_635 * x_637);
  let x_644 : vec4<f32> = vs_TEXCOORD0;
  let x_647 : f32 = x_29.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_644.z, x_644.w), x_647);
  u_xlat3 = x_648;
  let x_653 : vec4<f32> = vs_TEXCOORD0;
  let x_656 : f32 = x_29.x_GlobalMipBias.x;
  let x_657 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_653.z, x_653.w), x_656);
  let x_658 : vec3<f32> = vec3<f32>(x_657.x, x_657.y, x_657.z);
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : vec3<f32> = u_xlat2;
  let x_670 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_669, vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat44;
  u_xlat44 = (x_673 + 0.5f);
  let x_675 : f32 = u_xlat44;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = u_xlat3.w;
  u_xlat44 = max(x_683, 0.00009999999747378752f);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : f32 = u_xlat44;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) / vec3<f32>(x_688, x_688, x_688));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_694 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_694) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_700 : f32 = u_xlat28;
  let x_701 : f32 = u_xlat44;
  u_xlat45 = (x_700 + -(x_701));
  let x_704 : f32 = u_xlat44;
  let x_706 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat5;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_716 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat0;
  let x_720 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.x, x_718.x) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : f32 = u_xlat28;
  u_xlat0.x = (-(x_728) + 1.0f);
  let x_733 : f32 = u_xlat0.x;
  let x_735 : f32 = u_xlat0.x;
  u_xlat28 = (x_733 * x_735);
  let x_737 : f32 = u_xlat28;
  u_xlat28 = max(x_737, 0.0078125f);
  let x_740 : f32 = u_xlat28;
  let x_741 : f32 = u_xlat28;
  u_xlat44 = (x_740 * x_741);
  let x_743 : f32 = u_xlat45;
  u_xlat45 = (x_743 + 1.0f);
  let x_745 : f32 = u_xlat45;
  u_xlat45 = clamp(x_745, 0.0f, 1.0f);
  let x_748 : f32 = u_xlat28;
  u_xlat46 = ((x_748 * 4.0f) + 2.0f);
  let x_752 : f32 = u_xlat14;
  u_xlat14 = min(x_752, 1.0f);
  let x_756 : vec4<f32> = vs_TEXCOORD8;
  let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
  let x_759 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_757.x, x_757.y, x_759);
  let x_772 : vec3<f32> = txVec0;
  let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
  u_xlat47 = x_774;
  let x_784 : f32 = x_782.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_784) + 1.0f);
  let x_788 : f32 = u_xlat47;
  let x_790 : f32 = x_782.x_MainLightShadowParams.x;
  let x_793 : f32 = u_xlat6.x;
  u_xlat47 = ((x_788 * x_790) + x_793);
  let x_797 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_797);
  let x_801 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_801 >= 1.0f);
  let x_803 : bool = u_xlatb20;
  let x_804 : bool = u_xlatb6;
  u_xlatb6 = (x_803 | x_804);
  let x_806 : bool = u_xlatb6;
  let x_807 : f32 = u_xlat47;
  u_xlat47 = select(x_807, 1.0f, x_806);
  let x_809 : vec3<f32> = vs_TEXCOORD7;
  let x_811 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_813 : vec3<f32> = (x_809 + -(x_811));
  let x_814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat6;
  let x_818 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_816.x, x_816.y, x_816.z), vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_824 : f32 = u_xlat6.x;
  let x_826 : f32 = x_782.x_MainLightShadowParams.z;
  let x_829 : f32 = x_782.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_824 * x_826) + x_829);
  let x_833 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_833, 0.0f, 1.0f);
  let x_837 : f32 = u_xlat47;
  u_xlat34 = (-(x_837) + 1.0f);
  let x_841 : f32 = u_xlat20.x;
  let x_842 : f32 = u_xlat34;
  let x_844 : f32 = u_xlat47;
  u_xlat47 = ((x_841 * x_842) + x_844);
  let x_846 : vec4<f32> = u_xlat1;
  let x_849 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(-(vec3<f32>(x_846.x, x_846.y, x_846.z)), x_849);
  let x_853 : f32 = u_xlat20.x;
  let x_855 : f32 = u_xlat20.x;
  u_xlat20.x = (x_853 + x_855);
  let x_858 : vec3<f32> = u_xlat2;
  let x_859 : vec3<f32> = u_xlat20;
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat20 = ((x_858 * -(vec3<f32>(x_859.x, x_859.x, x_859.x))) + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec3<f32> = u_xlat2;
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(x_867, vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_873 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_873, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_877) + 1.0f);
  let x_882 : f32 = u_xlat7.x;
  let x_884 : f32 = u_xlat7.x;
  u_xlat7.x = (x_882 * x_884);
  let x_888 : f32 = u_xlat7.x;
  let x_890 : f32 = u_xlat7.x;
  u_xlat7.x = (x_888 * x_890);
  let x_895 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_895) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_903 : f32 = u_xlat0.x;
  let x_905 : f32 = u_xlat21.x;
  u_xlat0.x = (x_903 * x_905);
  let x_909 : f32 = u_xlat0.x;
  u_xlat0.x = (x_909 * 6.0f);
  let x_921 : vec3<f32> = u_xlat20;
  let x_923 : f32 = u_xlat0.x;
  let x_924 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_921, x_923);
  u_xlat8 = x_924;
  let x_926 : f32 = u_xlat8.w;
  u_xlat0.x = (x_926 + -1.0f);
  let x_934 : f32 = x_932.unity_SpecCube0_HDR.w;
  let x_936 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_934 * x_936) + 1.0f);
  let x_941 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_941, 0.0f);
  let x_945 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_945);
  let x_949 : f32 = u_xlat0.x;
  let x_951 : f32 = x_932.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_949 * x_951);
  let x_955 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_955);
  let x_959 : f32 = u_xlat0.x;
  let x_961 : f32 = x_932.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_959 * x_961);
  let x_964 : vec4<f32> = u_xlat8;
  let x_966 : vec3<f32> = u_xlat0;
  u_xlat20 = (vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_966.x, x_966.x, x_966.x));
  let x_969 : f32 = u_xlat28;
  let x_971 : f32 = u_xlat28;
  let x_975 : vec2<f32> = ((vec2<f32>(x_969, x_969) * vec2<f32>(x_971, x_971)) + vec2<f32>(-1.0f, 1.0f));
  let x_976 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_975.x, x_976.y, x_975.y);
  let x_979 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_979);
  let x_981 : vec4<f32> = u_xlat5;
  let x_984 : f32 = u_xlat45;
  u_xlat21 = (-(vec3<f32>(x_981.x, x_981.y, x_981.z)) + vec3<f32>(x_984, x_984, x_984));
  let x_987 : vec4<f32> = u_xlat7;
  let x_989 : vec3<f32> = u_xlat21;
  let x_991 : vec4<f32> = u_xlat5;
  let x_993 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.x, x_987.x) * x_989) + vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : f32 = u_xlat28;
  let x_998 : vec4<f32> = u_xlat7;
  let x_1000 : vec3<f32> = (vec3<f32>(x_996, x_996, x_996) * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec3<f32> = u_xlat20;
  let x_1004 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1003 * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat3;
  let x_1009 : vec4<f32> = u_xlat4;
  let x_1012 : vec3<f32> = u_xlat20;
  let x_1013 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z)) + x_1012);
  let x_1014 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : f32 = u_xlat47;
  let x_1018 : f32 = x_932.unity_LightData.z;
  u_xlat28 = (x_1016 * x_1018);
  let x_1020 : vec3<f32> = u_xlat2;
  let x_1022 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat45 = dot(x_1020, vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1025, 0.0f, 1.0f);
  let x_1027 : f32 = u_xlat28;
  let x_1028 : f32 = u_xlat45;
  u_xlat28 = (x_1027 * x_1028);
  let x_1030 : f32 = u_xlat28;
  let x_1033 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat1;
  let x_1039 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.y, x_1036.z) + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat7;
  let x_1046 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : f32 = u_xlat28;
  u_xlat28 = max(x_1049, 1.17549435e-38f);
  let x_1052 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1052);
  let x_1054 : f32 = u_xlat28;
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat2;
  let x_1062 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1061, vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1065 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1065, 0.0f, 1.0f);
  let x_1068 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1070 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1073, 0.0f, 1.0f);
  let x_1075 : f32 = u_xlat28;
  let x_1076 : f32 = u_xlat28;
  u_xlat28 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat28;
  let x_1080 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1078 * x_1080) + 1.00001001358032226562f);
  let x_1084 : f32 = u_xlat45;
  let x_1085 : f32 = u_xlat45;
  u_xlat45 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat28;
  let x_1088 : f32 = u_xlat28;
  u_xlat28 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat45;
  u_xlat45 = max(x_1090, 0.10000000149011611938f);
  let x_1093 : f32 = u_xlat28;
  let x_1094 : f32 = u_xlat45;
  u_xlat28 = (x_1093 * x_1094);
  let x_1096 : f32 = u_xlat46;
  let x_1097 : f32 = u_xlat28;
  u_xlat28 = (x_1096 * x_1097);
  let x_1099 : f32 = u_xlat44;
  let x_1100 : f32 = u_xlat28;
  u_xlat28 = (x_1099 / x_1100);
  let x_1102 : vec4<f32> = u_xlat5;
  let x_1104 : f32 = u_xlat28;
  let x_1107 : vec4<f32> = u_xlat4;
  let x_1109 : vec3<f32> = ((vec3<f32>(x_1102.x, x_1102.y, x_1102.z) * vec3<f32>(x_1104, x_1104, x_1104)) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec3<f32> = u_xlat20;
  let x_1113 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1112 * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1117 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1119 : f32 = x_932.unity_LightData.y;
  u_xlat28 = min(x_1117, x_1119);
  let x_1123 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1123));
  let x_1127 : f32 = u_xlat6.x;
  let x_1129 : f32 = x_782.x_AdditionalShadowFadeParams.x;
  let x_1132 : f32 = x_782.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1127 * x_1129) + x_1132);
  let x_1134 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1134, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1146 : u32 = u_xlatu_loop_1;
    let x_1147 : u32 = u_xlatu28;
    if ((x_1146 < x_1147)) {
    } else {
      break;
    }
    let x_1150 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1150 >> 2u);
    let x_1154 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1154 & 3u));
    let x_1157 : u32 = u_xlatu6;
    let x_1160 : vec4<f32> = x_932.unity_LightIndices[bitcast<i32>(x_1157)];
    let x_1170 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1175 : vec4<u32> = indexable[x_1170];
    u_xlat6.x = dot(x_1160, bitcast<vec4<f32>>(x_1175));
    let x_1181 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1181);
    let x_1183 : vec3<f32> = vs_TEXCOORD7;
    let x_1194 : i32 = u_xlati6;
    let x_1196 : vec4<f32> = x_1193.x_AdditionalLightsPosition[x_1194];
    let x_1199 : i32 = u_xlati6;
    let x_1201 : vec4<f32> = x_1193.x_AdditionalLightsPosition[x_1199];
    let x_1203 : vec3<f32> = ((-(x_1183) * vec3<f32>(x_1196.w, x_1196.w, x_1196.w)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
    let x_1204 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
    let x_1207 : vec4<f32> = u_xlat8;
    let x_1209 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1207.x, x_1207.y, x_1207.z), vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
    let x_1212 : f32 = u_xlat49;
    u_xlat49 = max(x_1212, 0.00006103515625f);
    let x_1215 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1215);
    let x_1217 : f32 = u_xlat50;
    let x_1219 : vec4<f32> = u_xlat8;
    let x_1221 : vec3<f32> = (vec3<f32>(x_1217, x_1217, x_1217) * vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1222 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
    let x_1225 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1225);
    let x_1227 : f32 = u_xlat49;
    let x_1228 : i32 = u_xlati6;
    let x_1230 : f32 = x_1193.x_AdditionalLightsAttenuation[x_1228].x;
    u_xlat49 = (x_1227 * x_1230);
    let x_1232 : f32 = u_xlat49;
    let x_1234 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1232) * x_1234) + 1.0f);
    let x_1237 : f32 = u_xlat49;
    u_xlat49 = max(x_1237, 0.0f);
    let x_1239 : f32 = u_xlat49;
    let x_1240 : f32 = u_xlat49;
    u_xlat49 = (x_1239 * x_1240);
    let x_1242 : f32 = u_xlat49;
    let x_1243 : f32 = u_xlat51;
    u_xlat49 = (x_1242 * x_1243);
    let x_1245 : i32 = u_xlati6;
    let x_1247 : vec4<f32> = x_1193.x_AdditionalLightsSpotDir[x_1245];
    let x_1249 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
    let x_1252 : f32 = u_xlat51;
    let x_1253 : i32 = u_xlati6;
    let x_1255 : f32 = x_1193.x_AdditionalLightsAttenuation[x_1253].z;
    let x_1257 : i32 = u_xlati6;
    let x_1259 : f32 = x_1193.x_AdditionalLightsAttenuation[x_1257].w;
    u_xlat51 = ((x_1252 * x_1255) + x_1259);
    let x_1261 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1261, 0.0f, 1.0f);
    let x_1263 : f32 = u_xlat51;
    let x_1264 : f32 = u_xlat51;
    u_xlat51 = (x_1263 * x_1264);
    let x_1266 : f32 = u_xlat49;
    let x_1267 : f32 = u_xlat51;
    u_xlat49 = (x_1266 * x_1267);
    let x_1270 : i32 = u_xlati6;
    let x_1272 : f32 = x_782.x_AdditionalShadowParams[x_1270].w;
    u_xlati51 = i32(x_1272);
    let x_1277 : i32 = u_xlati51;
    u_xlatb10.x = (x_1277 >= 0i);
    let x_1281 : bool = u_xlatb10.x;
    if (x_1281) {
      let x_1285 : i32 = u_xlati6;
      let x_1287 : f32 = x_782.x_AdditionalShadowParams[x_1285].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1287, x_1287, x_1287, x_1287))));
      let x_1293 : bool = u_xlatb10.x;
      if (x_1293) {
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1299 : vec4<f32> = u_xlat9;
        let x_1302 : vec4<bool> = (abs(vec4<f32>(x_1296.z, x_1296.z, x_1296.y, x_1296.z)) >= abs(vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.x)));
        u_xlatb10 = vec3<bool>(x_1302.x, x_1302.y, x_1302.z);
        let x_1305 : bool = u_xlatb10.y;
        let x_1307 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1305 & x_1307);
        let x_1311 : vec4<f32> = u_xlat9;
        let x_1314 : vec4<bool> = (-(vec4<f32>(x_1311.z, x_1311.y, x_1311.x, x_1311.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1314.x, x_1314.y, x_1314.z);
        let x_1318 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1318);
        let x_1323 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1323);
        let x_1328 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1328);
        let x_1333 : bool = u_xlatb10.z;
        if (x_1333) {
          let x_1339 : f32 = u_xlat24.z;
          x_1335 = x_1339;
        } else {
          let x_1342 : f32 = u_xlat11.x;
          x_1335 = x_1342;
        }
        let x_1343 : f32 = x_1335;
        u_xlat38 = x_1343;
        let x_1345 : bool = u_xlatb10.x;
        if (x_1345) {
          let x_1350 : f32 = u_xlat24.x;
          x_1346 = x_1350;
        } else {
          let x_1352 : f32 = u_xlat38;
          x_1346 = x_1352;
        }
        let x_1353 : f32 = x_1346;
        u_xlat10.x = x_1353;
        let x_1355 : i32 = u_xlati6;
        let x_1357 : f32 = x_782.x_AdditionalShadowParams[x_1355].w;
        u_xlat24.x = trunc(x_1357);
        let x_1361 : f32 = u_xlat10.x;
        let x_1363 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1361 + x_1363);
        let x_1367 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1367);
      }
      let x_1369 : i32 = u_xlati51;
      u_xlati51 = (x_1369 << bitcast<u32>(2i));
      let x_1371 : vec3<f32> = vs_TEXCOORD7;
      let x_1373 : i32 = u_xlati51;
      let x_1376 : i32 = u_xlati51;
      let x_1380 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[((x_1373 + 1i) / 4i)][((x_1376 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1371.y, x_1371.y, x_1371.y, x_1371.y) * x_1380);
      let x_1382 : i32 = u_xlati51;
      let x_1384 : i32 = u_xlati51;
      let x_1387 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[(x_1382 / 4i)][(x_1384 % 4i)];
      let x_1388 : vec3<f32> = vs_TEXCOORD7;
      let x_1391 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1387 * vec4<f32>(x_1388.x, x_1388.x, x_1388.x, x_1388.x)) + x_1391);
      let x_1393 : i32 = u_xlati51;
      let x_1396 : i32 = u_xlati51;
      let x_1400 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[((x_1393 + 2i) / 4i)][((x_1396 + 2i) % 4i)];
      let x_1401 : vec3<f32> = vs_TEXCOORD7;
      let x_1404 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1400 * vec4<f32>(x_1401.z, x_1401.z, x_1401.z, x_1401.z)) + x_1404);
      let x_1406 : vec4<f32> = u_xlat10;
      let x_1407 : i32 = u_xlati51;
      let x_1410 : i32 = u_xlati51;
      let x_1414 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[((x_1407 + 3i) / 4i)][((x_1410 + 3i) % 4i)];
      u_xlat10 = (x_1406 + x_1414);
      let x_1416 : vec4<f32> = u_xlat10;
      let x_1418 : vec4<f32> = u_xlat10;
      let x_1420 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) / vec3<f32>(x_1418.w, x_1418.w, x_1418.w));
      let x_1421 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
      let x_1424 : vec4<f32> = u_xlat10;
      let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
      let x_1427 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
      let x_1435 : vec3<f32> = txVec1;
      let x_1437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1435.xy, x_1435.z);
      u_xlat51 = x_1437;
      let x_1438 : i32 = u_xlati6;
      let x_1440 : f32 = x_782.x_AdditionalShadowParams[x_1438].x;
      u_xlat10.x = (1.0f + -(x_1440));
      let x_1444 : f32 = u_xlat51;
      let x_1445 : i32 = u_xlati6;
      let x_1447 : f32 = x_782.x_AdditionalShadowParams[x_1445].x;
      let x_1450 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1444 * x_1447) + x_1450);
      let x_1453 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1453);
      let x_1458 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1458 >= 1.0f);
      let x_1460 : bool = u_xlatb24;
      let x_1462 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1460 | x_1462);
      let x_1466 : bool = u_xlatb10.x;
      let x_1467 : f32 = u_xlat51;
      u_xlat51 = select(x_1467, 1.0f, x_1466);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1470 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1470) + 1.0f);
    let x_1474 : f32 = u_xlat45;
    let x_1476 : f32 = u_xlat10.x;
    let x_1478 : f32 = u_xlat51;
    u_xlat51 = ((x_1474 * x_1476) + x_1478);
    let x_1480 : f32 = u_xlat49;
    let x_1481 : f32 = u_xlat51;
    u_xlat49 = (x_1480 * x_1481);
    let x_1483 : vec3<f32> = u_xlat2;
    let x_1484 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(x_1483, vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
    let x_1487 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1487, 0.0f, 1.0f);
    let x_1489 : f32 = u_xlat49;
    let x_1490 : f32 = u_xlat51;
    u_xlat49 = (x_1489 * x_1490);
    let x_1492 : f32 = u_xlat49;
    let x_1494 : i32 = u_xlati6;
    let x_1496 : vec4<f32> = x_1193.x_AdditionalLightsColor[x_1494];
    let x_1498 : vec3<f32> = (vec3<f32>(x_1492, x_1492, x_1492) * vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
    let x_1499 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
    let x_1501 : vec4<f32> = u_xlat8;
    let x_1503 : f32 = u_xlat50;
    let x_1506 : vec4<f32> = u_xlat1;
    let x_1508 : vec3<f32> = ((vec3<f32>(x_1501.x, x_1501.y, x_1501.z) * vec3<f32>(x_1503, x_1503, x_1503)) + vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : vec4<f32> = u_xlat8;
    let x_1513 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1511.x, x_1511.y, x_1511.z), vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
    let x_1518 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1518, 1.17549435e-38f);
    let x_1522 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1522);
    let x_1525 : vec4<f32> = u_xlat6;
    let x_1527 : vec4<f32> = u_xlat8;
    let x_1529 : vec3<f32> = (vec3<f32>(x_1525.x, x_1525.x, x_1525.x) * vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
    let x_1530 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
    let x_1532 : vec3<f32> = u_xlat2;
    let x_1533 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1532, vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
    let x_1538 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1538, 0.0f, 1.0f);
    let x_1541 : vec4<f32> = u_xlat9;
    let x_1543 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1541.x, x_1541.y, x_1541.z), vec3<f32>(x_1543.x, x_1543.y, x_1543.z));
    let x_1546 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1546, 0.0f, 1.0f);
    let x_1549 : f32 = u_xlat6.x;
    let x_1551 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1549 * x_1551);
    let x_1555 : f32 = u_xlat6.x;
    let x_1557 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_1555 * x_1557) + 1.00001001358032226562f);
    let x_1561 : f32 = u_xlat49;
    let x_1562 : f32 = u_xlat49;
    u_xlat49 = (x_1561 * x_1562);
    let x_1565 : f32 = u_xlat6.x;
    let x_1567 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1565 * x_1567);
    let x_1570 : f32 = u_xlat49;
    u_xlat49 = max(x_1570, 0.10000000149011611938f);
    let x_1573 : f32 = u_xlat6.x;
    let x_1574 : f32 = u_xlat49;
    u_xlat6.x = (x_1573 * x_1574);
    let x_1577 : f32 = u_xlat46;
    let x_1579 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1577 * x_1579);
    let x_1582 : f32 = u_xlat44;
    let x_1584 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1582 / x_1584);
    let x_1587 : vec4<f32> = u_xlat5;
    let x_1589 : vec4<f32> = u_xlat6;
    let x_1592 : vec4<f32> = u_xlat4;
    let x_1594 : vec3<f32> = ((vec3<f32>(x_1587.x, x_1587.y, x_1587.z) * vec3<f32>(x_1589.x, x_1589.x, x_1589.x)) + vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
    let x_1595 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
    let x_1597 : vec4<f32> = u_xlat8;
    let x_1599 : vec4<f32> = u_xlat10;
    let x_1602 : vec4<f32> = u_xlat7;
    let x_1604 : vec3<f32> = ((vec3<f32>(x_1597.x, x_1597.y, x_1597.z) * vec3<f32>(x_1599.x, x_1599.y, x_1599.z)) + vec3<f32>(x_1602.x, x_1602.y, x_1602.z));
    let x_1605 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1604.x, x_1604.y, x_1604.z, x_1605.w);

    continuing {
      let x_1607 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1607 + bitcast<u32>(1i));
    }
  }
  let x_1609 : vec4<f32> = u_xlat3;
  let x_1611 : f32 = u_xlat14;
  let x_1614 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1609.x, x_1609.y, x_1609.z) * vec3<f32>(x_1611, x_1611, x_1611)) + x_1614);
  let x_1616 : vec4<f32> = u_xlat7;
  let x_1618 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1616.x, x_1616.y, x_1616.z) + x_1618);
  let x_1620 : f32 = u_xlat42;
  let x_1622 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1620, x_1620, x_1620) * x_1622);
  let x_1624 : f32 = u_xlat43;
  let x_1625 : f32 = u_xlat43;
  u_xlat42 = (x_1624 * -(x_1625));
  let x_1628 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1628);
  let x_1632 : vec3<f32> = u_xlat0;
  let x_1633 : f32 = u_xlat42;
  let x_1635 : vec3<f32> = (x_1632 * vec3<f32>(x_1633, x_1633, x_1633));
  let x_1636 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
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


