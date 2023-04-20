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

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_767 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_904 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1178 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1316 : f32;
  var x_1326 : f32;
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
  let x_826 : vec3<f32> = u_xlat2;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_826), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_833 : f32 = u_xlat6.x;
  let x_835 : f32 = u_xlat6.x;
  u_xlat6.x = (x_833 + x_835);
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec4<f32> = u_xlat6;
  let x_844 : vec3<f32> = u_xlat2;
  let x_846 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * -(vec3<f32>(x_840.x, x_840.x, x_840.x))) + -(x_844));
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_850 : vec4<f32> = u_xlat1;
  let x_852 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), x_852);
  let x_854 : f32 = u_xlat48;
  u_xlat48 = clamp(x_854, 0.0f, 1.0f);
  let x_856 : f32 = u_xlat48;
  u_xlat48 = (-(x_856) + 1.0f);
  let x_859 : f32 = u_xlat48;
  let x_860 : f32 = u_xlat48;
  u_xlat48 = (x_859 * x_860);
  let x_862 : f32 = u_xlat48;
  let x_863 : f32 = u_xlat48;
  u_xlat48 = (x_862 * x_863);
  let x_866 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_866) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_874 : f32 = u_xlat0.x;
  let x_876 : f32 = u_xlat7.x;
  u_xlat0.x = (x_874 * x_876);
  let x_880 : f32 = u_xlat0.x;
  u_xlat0.x = (x_880 * 6.0f);
  let x_892 : vec4<f32> = u_xlat6;
  let x_895 : f32 = u_xlat0.x;
  let x_896 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_892.x, x_892.y, x_892.z), x_895);
  u_xlat7 = x_896;
  let x_898 : f32 = u_xlat7.w;
  u_xlat0.x = (x_898 + -1.0f);
  let x_906 : f32 = x_904.unity_SpecCube0_HDR.w;
  let x_908 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_906 * x_908) + 1.0f);
  let x_913 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_913, 0.0f);
  let x_917 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_917);
  let x_921 : f32 = u_xlat0.x;
  let x_923 : f32 = x_904.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_921 * x_923);
  let x_927 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_927);
  let x_931 : f32 = u_xlat0.x;
  let x_933 : f32 = x_904.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_931 * x_933);
  let x_936 : vec4<f32> = u_xlat7;
  let x_938 : vec3<f32> = u_xlat0;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(x_938.x, x_938.x, x_938.x));
  let x_941 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : f32 = u_xlat28;
  let x_945 : f32 = u_xlat28;
  let x_949 : vec2<f32> = ((vec2<f32>(x_943, x_943) * vec2<f32>(x_945, x_945)) + vec2<f32>(-1.0f, 1.0f));
  let x_950 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_949.x, x_950.y, x_949.y);
  let x_953 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_953);
  let x_955 : vec4<f32> = u_xlat5;
  let x_958 : f32 = u_xlat44;
  let x_960 : vec3<f32> = (-(vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(x_958, x_958, x_958));
  let x_961 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : f32 = u_xlat48;
  let x_965 : vec4<f32> = u_xlat7;
  let x_968 : vec4<f32> = u_xlat5;
  let x_970 : vec3<f32> = ((vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_965.x, x_965.y, x_965.z)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : f32 = u_xlat28;
  let x_975 : vec4<f32> = u_xlat7;
  let x_977 : vec3<f32> = (vec3<f32>(x_973, x_973, x_973) * vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat6;
  let x_982 : vec4<f32> = u_xlat7;
  let x_984 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat3;
  let x_989 : vec4<f32> = u_xlat4;
  let x_992 : vec4<f32> = u_xlat6;
  let x_994 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.y, x_989.z)) + vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : f32 = u_xlat46;
  let x_999 : f32 = x_904.unity_LightData.z;
  u_xlat28 = (x_997 * x_999);
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1004 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1001.x, x_1001.y, x_1001.z), vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1007, 0.0f, 1.0f);
  let x_1009 : f32 = u_xlat28;
  let x_1010 : f32 = u_xlat44;
  u_xlat28 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat28;
  let x_1015 : vec4<f32> = x_29.x_MainLightColor;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1012, x_1012, x_1012) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec3<f32> = u_xlat2;
  let x_1022 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1024 : vec3<f32> = (x_1020 + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat7;
  let x_1029 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1027.x, x_1027.y, x_1027.z), vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : f32 = u_xlat28;
  u_xlat28 = max(x_1032, 1.17549435e-38f);
  let x_1035 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1035);
  let x_1037 : f32 = u_xlat28;
  let x_1039 : vec4<f32> = u_xlat7;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1037, x_1037, x_1037) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat1;
  let x_1046 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1049, 0.0f, 1.0f);
  let x_1052 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1057, 0.0f, 1.0f);
  let x_1059 : f32 = u_xlat28;
  let x_1060 : f32 = u_xlat28;
  u_xlat28 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat28;
  let x_1064 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1062 * x_1064) + 1.00001001358032226562f);
  let x_1068 : f32 = u_xlat44;
  let x_1069 : f32 = u_xlat44;
  u_xlat44 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat28;
  let x_1072 : f32 = u_xlat28;
  u_xlat28 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat44;
  u_xlat44 = max(x_1074, 0.10000000149011611938f);
  let x_1077 : f32 = u_xlat28;
  let x_1078 : f32 = u_xlat44;
  u_xlat28 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat45;
  let x_1081 : f32 = u_xlat28;
  u_xlat28 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat43;
  let x_1084 : f32 = u_xlat28;
  u_xlat28 = (x_1083 / x_1084);
  let x_1086 : vec4<f32> = u_xlat5;
  let x_1088 : f32 = u_xlat28;
  let x_1091 : vec4<f32> = u_xlat4;
  let x_1093 : vec3<f32> = ((vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * vec3<f32>(x_1088, x_1088, x_1088)) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec4<f32> = u_xlat6;
  let x_1098 : vec4<f32> = u_xlat7;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.z) * vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1105 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1107 : f32 = x_904.unity_LightData.y;
  u_xlat28 = min(x_1105, x_1107);
  let x_1111 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1111));
  let x_1114 : f32 = u_xlat47;
  let x_1116 : f32 = x_767.x_AdditionalShadowFadeParams.x;
  let x_1119 : f32 = x_767.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1114 * x_1116) + x_1119);
  let x_1121 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1121, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1133 : u32 = u_xlatu_loop_1;
    let x_1134 : u32 = u_xlatu28;
    if ((x_1133 < x_1134)) {
    } else {
      break;
    }
    let x_1137 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1137 >> 2u);
    let x_1141 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1141 & 3u));
    let x_1144 : u32 = u_xlatu47;
    let x_1147 : vec4<f32> = x_904.unity_LightIndices[bitcast<i32>(x_1144)];
    let x_1157 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1162 : vec4<u32> = indexable[x_1157];
    u_xlat47 = dot(x_1147, bitcast<vec4<f32>>(x_1162));
    let x_1166 : f32 = u_xlat47;
    u_xlati47 = i32(x_1166);
    let x_1168 : vec3<f32> = vs_TEXCOORD7;
    let x_1179 : i32 = u_xlati47;
    let x_1181 : vec4<f32> = x_1178.x_AdditionalLightsPosition[x_1179];
    let x_1184 : i32 = u_xlati47;
    let x_1186 : vec4<f32> = x_1178.x_AdditionalLightsPosition[x_1184];
    let x_1188 : vec3<f32> = ((-(x_1168) * vec3<f32>(x_1181.w, x_1181.w, x_1181.w)) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
    let x_1191 : vec4<f32> = u_xlat8;
    let x_1193 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1191.x, x_1191.y, x_1191.z), vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1196 : f32 = u_xlat48;
    u_xlat48 = max(x_1196, 0.00006103515625f);
    let x_1199 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1199);
    let x_1201 : f32 = u_xlat49;
    let x_1203 : vec4<f32> = u_xlat8;
    let x_1205 : vec3<f32> = (vec3<f32>(x_1201, x_1201, x_1201) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
    let x_1206 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
    let x_1209 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1209);
    let x_1211 : f32 = u_xlat48;
    let x_1212 : i32 = u_xlati47;
    let x_1214 : f32 = x_1178.x_AdditionalLightsAttenuation[x_1212].x;
    u_xlat48 = (x_1211 * x_1214);
    let x_1216 : f32 = u_xlat48;
    let x_1218 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1216) * x_1218) + 1.0f);
    let x_1221 : f32 = u_xlat48;
    u_xlat48 = max(x_1221, 0.0f);
    let x_1223 : f32 = u_xlat48;
    let x_1224 : f32 = u_xlat48;
    u_xlat48 = (x_1223 * x_1224);
    let x_1226 : f32 = u_xlat48;
    let x_1227 : f32 = u_xlat50;
    u_xlat48 = (x_1226 * x_1227);
    let x_1229 : i32 = u_xlati47;
    let x_1231 : vec4<f32> = x_1178.x_AdditionalLightsSpotDir[x_1229];
    let x_1233 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1231.x, x_1231.y, x_1231.z), vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
    let x_1236 : f32 = u_xlat50;
    let x_1237 : i32 = u_xlati47;
    let x_1239 : f32 = x_1178.x_AdditionalLightsAttenuation[x_1237].z;
    let x_1241 : i32 = u_xlati47;
    let x_1243 : f32 = x_1178.x_AdditionalLightsAttenuation[x_1241].w;
    u_xlat50 = ((x_1236 * x_1239) + x_1243);
    let x_1245 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1245, 0.0f, 1.0f);
    let x_1247 : f32 = u_xlat50;
    let x_1248 : f32 = u_xlat50;
    u_xlat50 = (x_1247 * x_1248);
    let x_1250 : f32 = u_xlat48;
    let x_1251 : f32 = u_xlat50;
    u_xlat48 = (x_1250 * x_1251);
    let x_1254 : i32 = u_xlati47;
    let x_1256 : f32 = x_767.x_AdditionalShadowParams[x_1254].w;
    u_xlati50 = i32(x_1256);
    let x_1259 : i32 = u_xlati50;
    u_xlatb51 = (x_1259 >= 0i);
    let x_1261 : bool = u_xlatb51;
    if (x_1261) {
      let x_1265 : i32 = u_xlati47;
      let x_1267 : f32 = x_767.x_AdditionalShadowParams[x_1265].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1267, x_1267, x_1267, x_1267))));
      let x_1271 : bool = u_xlatb51;
      if (x_1271) {
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1282 : vec4<bool> = (abs(vec4<f32>(x_1276.z, x_1276.z, x_1276.y, x_1276.z)) >= abs(vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.x)));
        let x_1284 : vec3<bool> = vec3<bool>(x_1282.x, x_1282.y, x_1282.z);
        let x_1285 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
        let x_1288 : bool = u_xlatb10.y;
        let x_1290 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1288 & x_1290);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1295 : vec4<bool> = (-(vec4<f32>(x_1292.z, x_1292.y, x_1292.z, x_1292.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1296 : vec3<bool> = vec3<bool>(x_1295.x, x_1295.y, x_1295.w);
        let x_1297 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1296.x, x_1296.y, x_1297.z, x_1296.z);
        let x_1300 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1300);
        let x_1305 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1305);
        let x_1311 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1311);
        let x_1315 : bool = u_xlatb10.z;
        if (x_1315) {
          let x_1320 : f32 = u_xlat10.y;
          x_1316 = x_1320;
        } else {
          let x_1322 : f32 = u_xlat52;
          x_1316 = x_1322;
        }
        let x_1323 : f32 = x_1316;
        u_xlat24 = x_1323;
        let x_1325 : bool = u_xlatb51;
        if (x_1325) {
          let x_1330 : f32 = u_xlat10.x;
          x_1326 = x_1330;
        } else {
          let x_1332 : f32 = u_xlat24;
          x_1326 = x_1332;
        }
        let x_1333 : f32 = x_1326;
        u_xlat51 = x_1333;
        let x_1334 : i32 = u_xlati47;
        let x_1336 : f32 = x_767.x_AdditionalShadowParams[x_1334].w;
        u_xlat10.x = trunc(x_1336);
        let x_1339 : f32 = u_xlat51;
        let x_1341 : f32 = u_xlat10.x;
        u_xlat51 = (x_1339 + x_1341);
        let x_1343 : f32 = u_xlat51;
        u_xlati50 = i32(x_1343);
      }
      let x_1345 : i32 = u_xlati50;
      u_xlati50 = (x_1345 << bitcast<u32>(2i));
      let x_1347 : vec3<f32> = vs_TEXCOORD7;
      let x_1349 : i32 = u_xlati50;
      let x_1352 : i32 = u_xlati50;
      let x_1356 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[((x_1349 + 1i) / 4i)][((x_1352 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1347.y, x_1347.y, x_1347.y, x_1347.y) * x_1356);
      let x_1358 : i32 = u_xlati50;
      let x_1360 : i32 = u_xlati50;
      let x_1363 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[(x_1358 / 4i)][(x_1360 % 4i)];
      let x_1364 : vec3<f32> = vs_TEXCOORD7;
      let x_1367 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1363 * vec4<f32>(x_1364.x, x_1364.x, x_1364.x, x_1364.x)) + x_1367);
      let x_1369 : i32 = u_xlati50;
      let x_1372 : i32 = u_xlati50;
      let x_1376 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[((x_1369 + 2i) / 4i)][((x_1372 + 2i) % 4i)];
      let x_1377 : vec3<f32> = vs_TEXCOORD7;
      let x_1380 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1376 * vec4<f32>(x_1377.z, x_1377.z, x_1377.z, x_1377.z)) + x_1380);
      let x_1382 : vec4<f32> = u_xlat10;
      let x_1383 : i32 = u_xlati50;
      let x_1386 : i32 = u_xlati50;
      let x_1390 : vec4<f32> = x_767.x_AdditionalLightsWorldToShadow[((x_1383 + 3i) / 4i)][((x_1386 + 3i) % 4i)];
      u_xlat10 = (x_1382 + x_1390);
      let x_1392 : vec4<f32> = u_xlat10;
      let x_1394 : vec4<f32> = u_xlat10;
      let x_1396 : vec3<f32> = (vec3<f32>(x_1392.x, x_1392.y, x_1392.z) / vec3<f32>(x_1394.w, x_1394.w, x_1394.w));
      let x_1397 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
      let x_1400 : vec4<f32> = u_xlat10;
      let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
      let x_1403 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
      let x_1411 : vec3<f32> = txVec1;
      let x_1413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
      u_xlat50 = x_1413;
      let x_1414 : i32 = u_xlati47;
      let x_1416 : f32 = x_767.x_AdditionalShadowParams[x_1414].x;
      u_xlat51 = (1.0f + -(x_1416));
      let x_1419 : f32 = u_xlat50;
      let x_1420 : i32 = u_xlati47;
      let x_1422 : f32 = x_767.x_AdditionalShadowParams[x_1420].x;
      let x_1424 : f32 = u_xlat51;
      u_xlat50 = ((x_1419 * x_1422) + x_1424);
      let x_1427 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1427);
      let x_1430 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1430 >= 1.0f);
      let x_1433 : bool = u_xlatb51;
      let x_1435 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1433 | x_1435);
      let x_1437 : bool = u_xlatb51;
      let x_1438 : f32 = u_xlat50;
      u_xlat50 = select(x_1438, 1.0f, x_1437);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1441 : f32 = u_xlat50;
    u_xlat51 = (-(x_1441) + 1.0f);
    let x_1444 : f32 = u_xlat44;
    let x_1445 : f32 = u_xlat51;
    let x_1447 : f32 = u_xlat50;
    u_xlat50 = ((x_1444 * x_1445) + x_1447);
    let x_1449 : f32 = u_xlat48;
    let x_1450 : f32 = u_xlat50;
    u_xlat48 = (x_1449 * x_1450);
    let x_1452 : vec4<f32> = u_xlat1;
    let x_1454 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1452.x, x_1452.y, x_1452.z), vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
    let x_1457 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1457, 0.0f, 1.0f);
    let x_1459 : f32 = u_xlat48;
    let x_1460 : f32 = u_xlat50;
    u_xlat48 = (x_1459 * x_1460);
    let x_1462 : f32 = u_xlat48;
    let x_1464 : i32 = u_xlati47;
    let x_1466 : vec4<f32> = x_1178.x_AdditionalLightsColor[x_1464];
    let x_1468 : vec3<f32> = (vec3<f32>(x_1462, x_1462, x_1462) * vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
    let x_1469 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
    let x_1471 : vec4<f32> = u_xlat8;
    let x_1473 : f32 = u_xlat49;
    let x_1476 : vec3<f32> = u_xlat2;
    let x_1477 : vec3<f32> = ((vec3<f32>(x_1471.x, x_1471.y, x_1471.z) * vec3<f32>(x_1473, x_1473, x_1473)) + x_1476);
    let x_1478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
    let x_1480 : vec4<f32> = u_xlat8;
    let x_1482 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1480.x, x_1480.y, x_1480.z), vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
    let x_1485 : f32 = u_xlat47;
    u_xlat47 = max(x_1485, 1.17549435e-38f);
    let x_1487 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1487);
    let x_1489 : f32 = u_xlat47;
    let x_1491 : vec4<f32> = u_xlat8;
    let x_1493 : vec3<f32> = (vec3<f32>(x_1489, x_1489, x_1489) * vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
    let x_1494 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
    let x_1496 : vec4<f32> = u_xlat1;
    let x_1498 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1496.x, x_1496.y, x_1496.z), vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
    let x_1501 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1501, 0.0f, 1.0f);
    let x_1503 : vec4<f32> = u_xlat9;
    let x_1505 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1508, 0.0f, 1.0f);
    let x_1510 : f32 = u_xlat47;
    let x_1511 : f32 = u_xlat47;
    u_xlat47 = (x_1510 * x_1511);
    let x_1513 : f32 = u_xlat47;
    let x_1515 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1513 * x_1515) + 1.00001001358032226562f);
    let x_1518 : f32 = u_xlat48;
    let x_1519 : f32 = u_xlat48;
    u_xlat48 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat47;
    let x_1522 : f32 = u_xlat47;
    u_xlat47 = (x_1521 * x_1522);
    let x_1524 : f32 = u_xlat48;
    u_xlat48 = max(x_1524, 0.10000000149011611938f);
    let x_1526 : f32 = u_xlat47;
    let x_1527 : f32 = u_xlat48;
    u_xlat47 = (x_1526 * x_1527);
    let x_1529 : f32 = u_xlat45;
    let x_1530 : f32 = u_xlat47;
    u_xlat47 = (x_1529 * x_1530);
    let x_1532 : f32 = u_xlat43;
    let x_1533 : f32 = u_xlat47;
    u_xlat47 = (x_1532 / x_1533);
    let x_1535 : vec4<f32> = u_xlat5;
    let x_1537 : f32 = u_xlat47;
    let x_1540 : vec4<f32> = u_xlat4;
    let x_1542 : vec3<f32> = ((vec3<f32>(x_1535.x, x_1535.y, x_1535.z) * vec3<f32>(x_1537, x_1537, x_1537)) + vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
    let x_1543 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
    let x_1545 : vec4<f32> = u_xlat8;
    let x_1547 : vec4<f32> = u_xlat10;
    let x_1550 : vec4<f32> = u_xlat7;
    let x_1552 : vec3<f32> = ((vec3<f32>(x_1545.x, x_1545.y, x_1545.z) * vec3<f32>(x_1547.x, x_1547.y, x_1547.z)) + vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
    let x_1553 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);

    continuing {
      let x_1555 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1555 + bitcast<u32>(1i));
    }
  }
  let x_1557 : vec4<f32> = u_xlat3;
  let x_1559 : f32 = u_xlat14;
  let x_1562 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1557.x, x_1557.y, x_1557.z) * vec3<f32>(x_1559, x_1559, x_1559)) + vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1565 : vec4<f32> = u_xlat7;
  let x_1567 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1565.x, x_1565.y, x_1565.z) + x_1567);
  let x_1571 : f32 = u_xlat42;
  let x_1573 : vec3<f32> = u_xlat0;
  let x_1574 : vec3<f32> = (vec3<f32>(x_1571, x_1571, x_1571) * x_1573);
  let x_1575 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
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


