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

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(10) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_Splat0 : sampler;

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

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1385 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var x_994 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1517 : f32;
  var x_1527 : f32;
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
  let x_1036 : vec3<f32> = u_xlat2;
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1036), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : f32 = u_xlat31;
  let x_1042 : f32 = u_xlat31;
  u_xlat31 = (x_1041 + x_1042);
  let x_1044 : vec4<f32> = u_xlat1;
  let x_1046 : f32 = u_xlat31;
  let x_1050 : vec3<f32> = u_xlat2;
  let x_1052 : vec3<f32> = ((vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * -(vec3<f32>(x_1046, x_1046, x_1046))) + -(x_1050));
  let x_1053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat1;
  let x_1057 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), x_1057);
  let x_1059 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1059, 0.0f, 1.0f);
  let x_1061 : f32 = u_xlat31;
  u_xlat31 = (-(x_1061) + 1.0f);
  let x_1064 : f32 = u_xlat31;
  let x_1065 : f32 = u_xlat31;
  u_xlat31 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat31;
  let x_1068 : f32 = u_xlat31;
  u_xlat31 = (x_1067 * x_1068);
  let x_1071 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1071) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1078 : f32 = u_xlat0.x;
  let x_1079 : f32 = u_xlat46;
  u_xlat0.x = (x_1078 * x_1079);
  let x_1083 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1083 * 6.0f);
  let x_1095 : vec4<f32> = u_xlat7;
  let x_1098 : f32 = u_xlat0.x;
  let x_1099 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1095.x, x_1095.y, x_1095.z), x_1098);
  u_xlat7 = x_1099;
  let x_1101 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1101 + -1.0f);
  let x_1105 : f32 = x_816.unity_SpecCube0_HDR.w;
  let x_1107 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1105 * x_1107) + 1.0f);
  let x_1112 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1112, 0.0f);
  let x_1116 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1116);
  let x_1120 : f32 = u_xlat0.x;
  let x_1122 : f32 = x_816.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1120 * x_1122);
  let x_1126 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1126);
  let x_1130 : f32 = u_xlat0.x;
  let x_1132 : f32 = x_816.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1130 * x_1132);
  let x_1135 : vec4<f32> = u_xlat7;
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * vec3<f32>(x_1137.x, x_1137.x, x_1137.x));
  let x_1140 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : f32 = u_xlat43;
  let x_1144 : f32 = u_xlat43;
  let x_1148 : vec2<f32> = ((vec2<f32>(x_1142, x_1142) * vec2<f32>(x_1144, x_1144)) + vec2<f32>(-1.0f, 1.0f));
  let x_1149 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
  let x_1152 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1152);
  let x_1156 : vec4<f32> = u_xlat5;
  let x_1159 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1156.x, x_1156.y, x_1156.z)) + vec3<f32>(x_1159, x_1159, x_1159));
  let x_1162 : f32 = u_xlat31;
  let x_1164 : vec3<f32> = u_xlat22;
  let x_1166 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1162, x_1162, x_1162) * x_1164) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec3<f32> = u_xlat0;
  let x_1171 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1169.x, x_1169.x, x_1169.x) * x_1171);
  let x_1173 : vec4<f32> = u_xlat7;
  let x_1175 : vec3<f32> = u_xlat22;
  let x_1176 : vec3<f32> = (vec3<f32>(x_1173.x, x_1173.y, x_1173.z) * x_1175);
  let x_1177 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat4;
  let x_1181 : vec4<f32> = u_xlat6;
  let x_1184 : vec4<f32> = u_xlat7;
  let x_1186 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1181.x, x_1181.y, x_1181.z)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1190 : f32 = u_xlat3.x;
  let x_1192 : f32 = x_816.unity_LightData.z;
  u_xlat0.x = (x_1190 * x_1192);
  let x_1195 : vec4<f32> = u_xlat1;
  let x_1198 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1195.x, x_1195.y, x_1195.z), vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1201, 0.0f, 1.0f);
  let x_1203 : f32 = u_xlat28;
  let x_1205 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1203 * x_1205);
  let x_1208 : vec3<f32> = u_xlat0;
  let x_1211 : vec4<f32> = x_29.x_MainLightColor;
  let x_1213 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.x, x_1208.x) * vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec3<f32> = u_xlat2;
  let x_1218 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat22 = (x_1216 + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec3<f32> = u_xlat22;
  let x_1222 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1221, x_1222);
  let x_1226 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1226, 1.17549435e-38f);
  let x_1231 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1231);
  let x_1234 : vec3<f32> = u_xlat0;
  let x_1236 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1234.x, x_1234.x, x_1234.x) * x_1236);
  let x_1238 : vec4<f32> = u_xlat1;
  let x_1240 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), x_1240);
  let x_1244 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1244, 0.0f, 1.0f);
  let x_1248 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1250 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), x_1250);
  let x_1254 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1254, 0.0f, 1.0f);
  let x_1257 : vec3<f32> = u_xlat0;
  let x_1259 : vec3<f32> = u_xlat0;
  let x_1261 : vec2<f32> = (vec2<f32>(x_1257.x, x_1257.z) * vec2<f32>(x_1259.x, x_1259.z));
  let x_1262 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1261.x, x_1262.y, x_1261.y);
  let x_1265 : f32 = u_xlat0.x;
  let x_1267 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1265 * x_1267) + 1.00001001358032226562f);
  let x_1273 : f32 = u_xlat0.x;
  let x_1275 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1273 * x_1275);
  let x_1279 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1279, 0.10000000149011611938f);
  let x_1282 : f32 = u_xlat28;
  let x_1284 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1282 * x_1284);
  let x_1287 : f32 = u_xlat44;
  let x_1289 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1287 * x_1289);
  let x_1292 : f32 = u_xlat45;
  let x_1294 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1292 / x_1294);
  let x_1297 : vec4<f32> = u_xlat5;
  let x_1299 : vec3<f32> = u_xlat0;
  let x_1302 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_1297.x, x_1297.y, x_1297.z) * vec3<f32>(x_1299.x, x_1299.x, x_1299.x)) + vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : vec4<f32> = u_xlat7;
  let x_1307 : vec3<f32> = u_xlat22;
  let x_1308 : vec3<f32> = (vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * x_1307);
  let x_1309 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1312 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1314 : f32 = x_816.unity_LightData.y;
  u_xlat0.x = min(x_1312, x_1314);
  let x_1319 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1319));
  let x_1322 : f32 = u_xlat17;
  let x_1324 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_1327 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1322 * x_1324) + x_1327);
  let x_1329 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1329, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1341 : u32 = u_xlatu_loop_1;
    let x_1342 : u32 = u_xlatu0;
    if ((x_1341 < x_1342)) {
    } else {
      break;
    }
    let x_1345 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1345 >> 2u);
    let x_1348 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1348 & 3u));
    let x_1351 : u32 = u_xlatu46;
    let x_1354 : vec4<f32> = x_816.unity_LightIndices[bitcast<i32>(x_1351)];
    let x_1364 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1369 : vec4<u32> = indexable[x_1364];
    u_xlat46 = dot(x_1354, bitcast<vec4<f32>>(x_1369));
    let x_1373 : f32 = u_xlat46;
    u_xlati46 = i32(x_1373);
    let x_1375 : vec3<f32> = vs_TEXCOORD7;
    let x_1386 : i32 = u_xlati46;
    let x_1388 : vec4<f32> = x_1385.x_AdditionalLightsPosition[x_1386];
    let x_1391 : i32 = u_xlati46;
    let x_1393 : vec4<f32> = x_1385.x_AdditionalLightsPosition[x_1391];
    u_xlat22 = ((-(x_1375) * vec3<f32>(x_1388.w, x_1388.w, x_1388.w)) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1397 : vec3<f32> = u_xlat22;
    let x_1398 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1397, x_1398);
    let x_1400 : f32 = u_xlat47;
    u_xlat47 = max(x_1400, 0.00006103515625f);
    let x_1403 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1403);
    let x_1405 : f32 = u_xlat48;
    let x_1407 : vec3<f32> = u_xlat22;
    let x_1408 : vec3<f32> = (vec3<f32>(x_1405, x_1405, x_1405) * x_1407);
    let x_1409 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
    let x_1412 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1412);
    let x_1414 : f32 = u_xlat47;
    let x_1415 : i32 = u_xlati46;
    let x_1417 : f32 = x_1385.x_AdditionalLightsAttenuation[x_1415].x;
    u_xlat47 = (x_1414 * x_1417);
    let x_1419 : f32 = u_xlat47;
    let x_1421 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1419) * x_1421) + 1.0f);
    let x_1424 : f32 = u_xlat47;
    u_xlat47 = max(x_1424, 0.0f);
    let x_1426 : f32 = u_xlat47;
    let x_1427 : f32 = u_xlat47;
    u_xlat47 = (x_1426 * x_1427);
    let x_1429 : f32 = u_xlat47;
    let x_1430 : f32 = u_xlat49;
    u_xlat47 = (x_1429 * x_1430);
    let x_1432 : i32 = u_xlati46;
    let x_1434 : vec4<f32> = x_1385.x_AdditionalLightsSpotDir[x_1432];
    let x_1436 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1434.x, x_1434.y, x_1434.z), vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : f32 = u_xlat49;
    let x_1440 : i32 = u_xlati46;
    let x_1442 : f32 = x_1385.x_AdditionalLightsAttenuation[x_1440].z;
    let x_1444 : i32 = u_xlati46;
    let x_1446 : f32 = x_1385.x_AdditionalLightsAttenuation[x_1444].w;
    u_xlat49 = ((x_1439 * x_1442) + x_1446);
    let x_1448 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1448, 0.0f, 1.0f);
    let x_1450 : f32 = u_xlat49;
    let x_1451 : f32 = u_xlat49;
    u_xlat49 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat47;
    let x_1454 : f32 = u_xlat49;
    u_xlat47 = (x_1453 * x_1454);
    let x_1457 : i32 = u_xlati46;
    let x_1459 : f32 = x_629.x_AdditionalShadowParams[x_1457].w;
    u_xlati49 = i32(x_1459);
    let x_1462 : i32 = u_xlati49;
    u_xlatb51 = (x_1462 >= 0i);
    let x_1464 : bool = u_xlatb51;
    if (x_1464) {
      let x_1468 : i32 = u_xlati46;
      let x_1470 : f32 = x_629.x_AdditionalShadowParams[x_1468].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1470, x_1470, x_1470, x_1470))));
      let x_1474 : bool = u_xlatb51;
      if (x_1474) {
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1481 : vec4<f32> = u_xlat9;
        let x_1484 : vec4<bool> = (abs(vec4<f32>(x_1478.z, x_1478.z, x_1478.y, x_1478.z)) >= abs(vec4<f32>(x_1481.x, x_1481.y, x_1481.x, x_1481.x)));
        let x_1486 : vec3<bool> = vec3<bool>(x_1484.x, x_1484.y, x_1484.z);
        let x_1487 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
        let x_1490 : bool = u_xlatb10.y;
        let x_1492 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1490 & x_1492);
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1497 : vec4<bool> = (-(vec4<f32>(x_1494.z, x_1494.y, x_1494.z, x_1494.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1498 : vec3<bool> = vec3<bool>(x_1497.x, x_1497.y, x_1497.w);
        let x_1499 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1498.x, x_1498.y, x_1499.z, x_1498.z);
        let x_1502 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1502);
        let x_1507 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1507);
        let x_1512 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1512);
        let x_1516 : bool = u_xlatb10.z;
        if (x_1516) {
          let x_1521 : f32 = u_xlat10.y;
          x_1517 = x_1521;
        } else {
          let x_1523 : f32 = u_xlat52;
          x_1517 = x_1523;
        }
        let x_1524 : f32 = x_1517;
        u_xlat24 = x_1524;
        let x_1526 : bool = u_xlatb51;
        if (x_1526) {
          let x_1531 : f32 = u_xlat10.x;
          x_1527 = x_1531;
        } else {
          let x_1533 : f32 = u_xlat24;
          x_1527 = x_1533;
        }
        let x_1534 : f32 = x_1527;
        u_xlat51 = x_1534;
        let x_1535 : i32 = u_xlati46;
        let x_1537 : f32 = x_629.x_AdditionalShadowParams[x_1535].w;
        u_xlat10.x = trunc(x_1537);
        let x_1540 : f32 = u_xlat51;
        let x_1542 : f32 = u_xlat10.x;
        u_xlat51 = (x_1540 + x_1542);
        let x_1544 : f32 = u_xlat51;
        u_xlati49 = i32(x_1544);
      }
      let x_1546 : i32 = u_xlati49;
      u_xlati49 = (x_1546 << bitcast<u32>(2i));
      let x_1548 : vec3<f32> = vs_TEXCOORD7;
      let x_1550 : i32 = u_xlati49;
      let x_1553 : i32 = u_xlati49;
      let x_1557 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1550 + 1i) / 4i)][((x_1553 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1548.y, x_1548.y, x_1548.y, x_1548.y) * x_1557);
      let x_1559 : i32 = u_xlati49;
      let x_1561 : i32 = u_xlati49;
      let x_1564 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_1559 / 4i)][(x_1561 % 4i)];
      let x_1565 : vec3<f32> = vs_TEXCOORD7;
      let x_1568 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1564 * vec4<f32>(x_1565.x, x_1565.x, x_1565.x, x_1565.x)) + x_1568);
      let x_1570 : i32 = u_xlati49;
      let x_1573 : i32 = u_xlati49;
      let x_1577 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1570 + 2i) / 4i)][((x_1573 + 2i) % 4i)];
      let x_1578 : vec3<f32> = vs_TEXCOORD7;
      let x_1581 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1577 * vec4<f32>(x_1578.z, x_1578.z, x_1578.z, x_1578.z)) + x_1581);
      let x_1583 : vec4<f32> = u_xlat10;
      let x_1584 : i32 = u_xlati49;
      let x_1587 : i32 = u_xlati49;
      let x_1591 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1584 + 3i) / 4i)][((x_1587 + 3i) % 4i)];
      u_xlat10 = (x_1583 + x_1591);
      let x_1593 : vec4<f32> = u_xlat10;
      let x_1595 : vec4<f32> = u_xlat10;
      let x_1597 : vec3<f32> = (vec3<f32>(x_1593.x, x_1593.y, x_1593.z) / vec3<f32>(x_1595.w, x_1595.w, x_1595.w));
      let x_1598 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
      let x_1601 : vec4<f32> = u_xlat10;
      let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
      let x_1604 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
      let x_1612 : vec3<f32> = txVec1;
      let x_1614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1612.xy, x_1612.z);
      u_xlat49 = x_1614;
      let x_1615 : i32 = u_xlati46;
      let x_1617 : f32 = x_629.x_AdditionalShadowParams[x_1615].x;
      u_xlat51 = (1.0f + -(x_1617));
      let x_1620 : f32 = u_xlat49;
      let x_1621 : i32 = u_xlati46;
      let x_1623 : f32 = x_629.x_AdditionalShadowParams[x_1621].x;
      let x_1625 : f32 = u_xlat51;
      u_xlat49 = ((x_1620 * x_1623) + x_1625);
      let x_1628 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1628);
      let x_1631 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1631 >= 1.0f);
      let x_1634 : bool = u_xlatb51;
      let x_1636 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1634 | x_1636);
      let x_1638 : bool = u_xlatb51;
      let x_1639 : f32 = u_xlat49;
      u_xlat49 = select(x_1639, 1.0f, x_1638);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1642 : f32 = u_xlat49;
    u_xlat51 = (-(x_1642) + 1.0f);
    let x_1645 : f32 = u_xlat28;
    let x_1646 : f32 = u_xlat51;
    let x_1648 : f32 = u_xlat49;
    u_xlat49 = ((x_1645 * x_1646) + x_1648);
    let x_1650 : f32 = u_xlat47;
    let x_1651 : f32 = u_xlat49;
    u_xlat47 = (x_1650 * x_1651);
    let x_1653 : vec4<f32> = u_xlat1;
    let x_1655 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1653.x, x_1653.y, x_1653.z), vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1658, 0.0f, 1.0f);
    let x_1660 : f32 = u_xlat47;
    let x_1661 : f32 = u_xlat49;
    u_xlat47 = (x_1660 * x_1661);
    let x_1663 : f32 = u_xlat47;
    let x_1665 : i32 = u_xlati46;
    let x_1667 : vec4<f32> = x_1385.x_AdditionalLightsColor[x_1665];
    let x_1669 : vec3<f32> = (vec3<f32>(x_1663, x_1663, x_1663) * vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
    let x_1670 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
    let x_1672 : vec3<f32> = u_xlat22;
    let x_1673 : f32 = u_xlat48;
    let x_1676 : vec3<f32> = u_xlat2;
    u_xlat22 = ((x_1672 * vec3<f32>(x_1673, x_1673, x_1673)) + x_1676);
    let x_1678 : vec3<f32> = u_xlat22;
    let x_1679 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(x_1678, x_1679);
    let x_1681 : f32 = u_xlat46;
    u_xlat46 = max(x_1681, 1.17549435e-38f);
    let x_1683 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1683);
    let x_1685 : f32 = u_xlat46;
    let x_1687 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1685, x_1685, x_1685) * x_1687);
    let x_1689 : vec4<f32> = u_xlat1;
    let x_1691 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(vec3<f32>(x_1689.x, x_1689.y, x_1689.z), x_1691);
    let x_1693 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1693, 0.0f, 1.0f);
    let x_1695 : vec4<f32> = u_xlat9;
    let x_1697 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1695.x, x_1695.y, x_1695.z), x_1697);
    let x_1699 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1699, 0.0f, 1.0f);
    let x_1701 : f32 = u_xlat46;
    let x_1702 : f32 = u_xlat46;
    u_xlat46 = (x_1701 * x_1702);
    let x_1704 : f32 = u_xlat46;
    let x_1706 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1704 * x_1706) + 1.00001001358032226562f);
    let x_1709 : f32 = u_xlat47;
    let x_1710 : f32 = u_xlat47;
    u_xlat47 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat46;
    let x_1713 : f32 = u_xlat46;
    u_xlat46 = (x_1712 * x_1713);
    let x_1715 : f32 = u_xlat47;
    u_xlat47 = max(x_1715, 0.10000000149011611938f);
    let x_1717 : f32 = u_xlat46;
    let x_1718 : f32 = u_xlat47;
    u_xlat46 = (x_1717 * x_1718);
    let x_1720 : f32 = u_xlat44;
    let x_1721 : f32 = u_xlat46;
    u_xlat46 = (x_1720 * x_1721);
    let x_1723 : f32 = u_xlat45;
    let x_1724 : f32 = u_xlat46;
    u_xlat46 = (x_1723 / x_1724);
    let x_1726 : vec4<f32> = u_xlat5;
    let x_1728 : f32 = u_xlat46;
    let x_1731 : vec4<f32> = u_xlat6;
    u_xlat22 = ((vec3<f32>(x_1726.x, x_1726.y, x_1726.z) * vec3<f32>(x_1728, x_1728, x_1728)) + vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
    let x_1734 : vec3<f32> = u_xlat22;
    let x_1735 : vec4<f32> = u_xlat10;
    let x_1738 : vec4<f32> = u_xlat3;
    let x_1740 : vec3<f32> = ((x_1734 * vec3<f32>(x_1735.x, x_1735.y, x_1735.z)) + vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
    let x_1741 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);

    continuing {
      let x_1743 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1743 + bitcast<u32>(1i));
    }
  }
  let x_1745 : vec4<f32> = u_xlat4;
  let x_1747 : f32 = u_xlat14;
  let x_1750 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1745.x, x_1745.y, x_1745.z) * vec3<f32>(x_1747, x_1747, x_1747)) + vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1753 : vec4<f32> = u_xlat3;
  let x_1755 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1753.x, x_1753.y, x_1753.z) + x_1755);
  let x_1759 : f32 = u_xlat42;
  let x_1761 : vec3<f32> = u_xlat0;
  let x_1762 : vec3<f32> = (vec3<f32>(x_1759, x_1759, x_1759) * x_1761);
  let x_1763 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
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


