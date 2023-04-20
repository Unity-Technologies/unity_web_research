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

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1084 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat47 : f32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1357 : AdditionalLights;

var<private> u_xlat48 : f32;

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

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var x_971 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1494 : f32;
  var x_1504 : f32;
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
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_734, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_739 : f32 = u_xlat43;
  u_xlat43 = (-(x_739) + 4.0f);
  let x_744 : f32 = u_xlat43;
  u_xlatu43 = u32(x_744);
  let x_748 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_748) << bitcast<u32>(2i));
  let x_751 : vec3<f32> = vs_TEXCOORD7;
  let x_753 : i32 = u_xlati43;
  let x_756 : i32 = u_xlati43;
  let x_760 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_753 + 1i) / 4i)][((x_756 + 1i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.y, x_751.y, x_751.y) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati43;
  let x_767 : i32 = u_xlati43;
  let x_770 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_765 / 4i)][(x_767 % 4i)];
  let x_772 : vec3<f32> = vs_TEXCOORD7;
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772.x, x_772.x, x_772.x)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : i32 = u_xlati43;
  let x_783 : i32 = u_xlati43;
  let x_787 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_780 + 2i) / 4i)][((x_783 + 2i) % 4i)];
  let x_789 : vec3<f32> = vs_TEXCOORD7;
  let x_792 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789.z, x_789.z, x_789.z)) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat3;
  let x_799 : i32 = u_xlati43;
  let x_802 : i32 = u_xlati43;
  let x_806 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_799 + 3i) / 4i)][((x_802 + 3i) % 4i)];
  let x_808 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_816 : vec4<f32> = vs_TEXCOORD0;
  let x_819 : f32 = x_29.x_GlobalMipBias.x;
  let x_820 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_816.z, x_816.w), x_819);
  u_xlat4 = x_820;
  let x_825 : vec4<f32> = vs_TEXCOORD0;
  let x_828 : f32 = x_29.x_GlobalMipBias.x;
  let x_829 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_825.z, x_825.w), x_828);
  let x_830 : vec3<f32> = vec3<f32>(x_829.x, x_829.y, x_829.z);
  let x_831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat4;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : f32 = u_xlat43;
  u_xlat43 = (x_845 + 0.5f);
  let x_847 : f32 = u_xlat43;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat4.w;
  u_xlat43 = max(x_855, 0.00009999999747378752f);
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : f32 = u_xlat43;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) / vec3<f32>(x_860, x_860, x_860));
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_866) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_872 : f32 = u_xlat28;
  let x_873 : f32 = u_xlat43;
  u_xlat44 = (x_872 + -(x_873));
  let x_876 : f32 = u_xlat43;
  let x_878 : vec4<f32> = u_xlat5;
  let x_880 : vec3<f32> = (vec3<f32>(x_876, x_876, x_876) * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = u_xlat0;
  let x_892 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = ((vec3<f32>(x_890.x, x_890.x, x_890.x) * vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : f32 = u_xlat28;
  u_xlat0.x = (-(x_900) + 1.0f);
  let x_905 : f32 = u_xlat0.x;
  let x_907 : f32 = u_xlat0.x;
  u_xlat28 = (x_905 * x_907);
  let x_909 : f32 = u_xlat28;
  u_xlat28 = max(x_909, 0.0078125f);
  let x_912 : f32 = u_xlat28;
  let x_913 : f32 = u_xlat28;
  u_xlat43 = (x_912 * x_913);
  let x_915 : f32 = u_xlat44;
  u_xlat44 = (x_915 + 1.0f);
  let x_917 : f32 = u_xlat44;
  u_xlat44 = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat28;
  u_xlat45 = ((x_920 * 4.0f) + 2.0f);
  let x_923 : f32 = u_xlat14;
  u_xlat14 = min(x_923, 1.0f);
  let x_927 : vec4<f32> = u_xlat3;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_930 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_928.x, x_928.y, x_930);
  let x_942 : vec3<f32> = txVec0;
  let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_942.xy, x_942.z);
  u_xlat3.x = x_944;
  let x_948 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_948) + 1.0f);
  let x_952 : f32 = u_xlat3.x;
  let x_954 : f32 = x_629.x_MainLightShadowParams.x;
  let x_956 : f32 = u_xlat17;
  u_xlat3.x = ((x_952 * x_954) + x_956);
  let x_961 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_961);
  let x_965 : f32 = u_xlat3.z;
  u_xlatb31 = (x_965 >= 1.0f);
  let x_967 : bool = u_xlatb31;
  let x_968 : bool = u_xlatb17;
  u_xlatb17 = (x_967 | x_968);
  let x_970 : bool = u_xlatb17;
  if (x_970) {
    x_971 = 1.0f;
  } else {
    let x_976 : f32 = u_xlat3.x;
    x_971 = x_976;
  }
  let x_977 : f32 = x_971;
  u_xlat3.x = x_977;
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_983 : vec3<f32> = (x_979 + -(x_981));
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat7;
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_992 : f32 = u_xlat17;
  let x_994 : f32 = x_629.x_MainLightShadowParams.z;
  let x_997 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat31 = ((x_992 * x_994) + x_997);
  let x_999 : f32 = u_xlat31;
  u_xlat31 = clamp(x_999, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1003) + 1.0f);
  let x_1006 : f32 = u_xlat31;
  let x_1007 : f32 = u_xlat46;
  let x_1010 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1006 * x_1007) + x_1010);
  let x_1013 : vec3<f32> = u_xlat2;
  let x_1015 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1013), vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : f32 = u_xlat31;
  let x_1019 : f32 = u_xlat31;
  u_xlat31 = (x_1018 + x_1019);
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1023 : f32 = u_xlat31;
  let x_1027 : vec3<f32> = u_xlat2;
  let x_1029 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * -(vec3<f32>(x_1023, x_1023, x_1023))) + -(x_1027));
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1034 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), x_1034);
  let x_1036 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1036, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat31;
  u_xlat31 = (-(x_1038) + 1.0f);
  let x_1041 : f32 = u_xlat31;
  let x_1042 : f32 = u_xlat31;
  u_xlat31 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat31;
  let x_1045 : f32 = u_xlat31;
  u_xlat31 = (x_1044 * x_1045);
  let x_1048 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1048) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1055 : f32 = u_xlat0.x;
  let x_1056 : f32 = u_xlat46;
  u_xlat0.x = (x_1055 * x_1056);
  let x_1060 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1060 * 6.0f);
  let x_1072 : vec4<f32> = u_xlat7;
  let x_1075 : f32 = u_xlat0.x;
  let x_1076 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1072.x, x_1072.y, x_1072.z), x_1075);
  u_xlat7 = x_1076;
  let x_1078 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1078 + -1.0f);
  let x_1086 : f32 = x_1084.unity_SpecCube0_HDR.w;
  let x_1088 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1086 * x_1088) + 1.0f);
  let x_1093 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1093, 0.0f);
  let x_1097 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1097);
  let x_1101 : f32 = u_xlat0.x;
  let x_1103 : f32 = x_1084.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1101 * x_1103);
  let x_1107 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1107);
  let x_1111 : f32 = u_xlat0.x;
  let x_1113 : f32 = x_1084.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1111 * x_1113);
  let x_1116 : vec4<f32> = u_xlat7;
  let x_1118 : vec3<f32> = u_xlat0;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * vec3<f32>(x_1118.x, x_1118.x, x_1118.x));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : f32 = u_xlat28;
  let x_1125 : f32 = u_xlat28;
  let x_1129 : vec2<f32> = ((vec2<f32>(x_1123, x_1123) * vec2<f32>(x_1125, x_1125)) + vec2<f32>(-1.0f, 1.0f));
  let x_1130 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1129.x, x_1130.y, x_1129.y);
  let x_1133 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1133);
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1138 : f32 = u_xlat44;
  let x_1140 : vec3<f32> = (-(vec3<f32>(x_1135.x, x_1135.y, x_1135.z)) + vec3<f32>(x_1138, x_1138, x_1138));
  let x_1141 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : f32 = u_xlat31;
  let x_1145 : vec4<f32> = u_xlat8;
  let x_1148 : vec4<f32> = u_xlat5;
  let x_1150 : vec3<f32> = ((vec3<f32>(x_1143, x_1143, x_1143) * vec3<f32>(x_1145.x, x_1145.y, x_1145.z)) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : f32 = u_xlat28;
  let x_1155 : vec4<f32> = u_xlat8;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153, x_1153, x_1153) * vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec4<f32> = u_xlat7;
  let x_1162 : vec4<f32> = u_xlat8;
  let x_1164 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec4<f32> = u_xlat4;
  let x_1169 : vec4<f32> = u_xlat6;
  let x_1172 : vec4<f32> = u_xlat7;
  let x_1174 : vec3<f32> = ((vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * vec3<f32>(x_1169.x, x_1169.y, x_1169.z)) + vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1178 : f32 = u_xlat3.x;
  let x_1180 : f32 = x_1084.unity_LightData.z;
  u_xlat28 = (x_1178 * x_1180);
  let x_1182 : vec4<f32> = u_xlat1;
  let x_1185 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1182.x, x_1182.y, x_1182.z), vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1188 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1188, 0.0f, 1.0f);
  let x_1190 : f32 = u_xlat28;
  let x_1191 : f32 = u_xlat44;
  u_xlat28 = (x_1190 * x_1191);
  let x_1193 : f32 = u_xlat28;
  let x_1196 : vec4<f32> = x_29.x_MainLightColor;
  let x_1198 : vec3<f32> = (vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec3<f32> = u_xlat2;
  let x_1203 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1205 : vec3<f32> = (x_1201 + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat8;
  let x_1210 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : f32 = u_xlat28;
  u_xlat28 = max(x_1213, 1.17549435e-38f);
  let x_1216 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1216);
  let x_1218 : f32 = u_xlat28;
  let x_1220 : vec4<f32> = u_xlat8;
  let x_1222 : vec3<f32> = (vec3<f32>(x_1218, x_1218, x_1218) * vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : vec4<f32> = u_xlat1;
  let x_1227 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1230, 0.0f, 1.0f);
  let x_1233 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1235 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1238, 0.0f, 1.0f);
  let x_1240 : f32 = u_xlat28;
  let x_1241 : f32 = u_xlat28;
  u_xlat28 = (x_1240 * x_1241);
  let x_1243 : f32 = u_xlat28;
  let x_1245 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1243 * x_1245) + 1.00001001358032226562f);
  let x_1249 : f32 = u_xlat44;
  let x_1250 : f32 = u_xlat44;
  u_xlat44 = (x_1249 * x_1250);
  let x_1252 : f32 = u_xlat28;
  let x_1253 : f32 = u_xlat28;
  u_xlat28 = (x_1252 * x_1253);
  let x_1255 : f32 = u_xlat44;
  u_xlat44 = max(x_1255, 0.10000000149011611938f);
  let x_1258 : f32 = u_xlat28;
  let x_1259 : f32 = u_xlat44;
  u_xlat28 = (x_1258 * x_1259);
  let x_1261 : f32 = u_xlat45;
  let x_1262 : f32 = u_xlat28;
  u_xlat28 = (x_1261 * x_1262);
  let x_1264 : f32 = u_xlat43;
  let x_1265 : f32 = u_xlat28;
  u_xlat28 = (x_1264 / x_1265);
  let x_1267 : vec4<f32> = u_xlat5;
  let x_1269 : f32 = u_xlat28;
  let x_1272 : vec4<f32> = u_xlat6;
  let x_1274 : vec3<f32> = ((vec3<f32>(x_1267.x, x_1267.y, x_1267.z) * vec3<f32>(x_1269, x_1269, x_1269)) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec4<f32> = u_xlat7;
  let x_1279 : vec4<f32> = u_xlat8;
  let x_1281 : vec3<f32> = (vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1282 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
  let x_1285 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1287 : f32 = x_1084.unity_LightData.y;
  u_xlat28 = min(x_1285, x_1287);
  let x_1290 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1290));
  let x_1293 : f32 = u_xlat17;
  let x_1295 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_1298 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1293 * x_1295) + x_1298);
  let x_1300 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1300, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1312 : u32 = u_xlatu_loop_1;
    let x_1313 : u32 = u_xlatu28;
    if ((x_1312 < x_1313)) {
    } else {
      break;
    }
    let x_1316 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1316 >> 2u);
    let x_1319 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1319 & 3u));
    let x_1323 : u32 = u_xlatu47;
    let x_1326 : vec4<f32> = x_1084.unity_LightIndices[bitcast<i32>(x_1323)];
    let x_1336 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1341 : vec4<u32> = indexable[x_1336];
    u_xlat47 = dot(x_1326, bitcast<vec4<f32>>(x_1341));
    let x_1345 : f32 = u_xlat47;
    u_xlati47 = i32(x_1345);
    let x_1347 : vec3<f32> = vs_TEXCOORD7;
    let x_1358 : i32 = u_xlati47;
    let x_1360 : vec4<f32> = x_1357.x_AdditionalLightsPosition[x_1358];
    let x_1363 : i32 = u_xlati47;
    let x_1365 : vec4<f32> = x_1357.x_AdditionalLightsPosition[x_1363];
    let x_1367 : vec3<f32> = ((-(x_1347) * vec3<f32>(x_1360.w, x_1360.w, x_1360.w)) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
    let x_1368 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
    let x_1371 : vec4<f32> = u_xlat8;
    let x_1373 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1371.x, x_1371.y, x_1371.z), vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : f32 = u_xlat48;
    u_xlat48 = max(x_1376, 0.00006103515625f);
    let x_1379 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1379);
    let x_1381 : f32 = u_xlat49;
    let x_1383 : vec4<f32> = u_xlat8;
    let x_1385 : vec3<f32> = (vec3<f32>(x_1381, x_1381, x_1381) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
    let x_1389 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1389);
    let x_1391 : f32 = u_xlat48;
    let x_1392 : i32 = u_xlati47;
    let x_1394 : f32 = x_1357.x_AdditionalLightsAttenuation[x_1392].x;
    u_xlat48 = (x_1391 * x_1394);
    let x_1396 : f32 = u_xlat48;
    let x_1398 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1396) * x_1398) + 1.0f);
    let x_1401 : f32 = u_xlat48;
    u_xlat48 = max(x_1401, 0.0f);
    let x_1403 : f32 = u_xlat48;
    let x_1404 : f32 = u_xlat48;
    u_xlat48 = (x_1403 * x_1404);
    let x_1406 : f32 = u_xlat48;
    let x_1407 : f32 = u_xlat50;
    u_xlat48 = (x_1406 * x_1407);
    let x_1409 : i32 = u_xlati47;
    let x_1411 : vec4<f32> = x_1357.x_AdditionalLightsSpotDir[x_1409];
    let x_1413 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : f32 = u_xlat50;
    let x_1417 : i32 = u_xlati47;
    let x_1419 : f32 = x_1357.x_AdditionalLightsAttenuation[x_1417].z;
    let x_1421 : i32 = u_xlati47;
    let x_1423 : f32 = x_1357.x_AdditionalLightsAttenuation[x_1421].w;
    u_xlat50 = ((x_1416 * x_1419) + x_1423);
    let x_1425 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1425, 0.0f, 1.0f);
    let x_1427 : f32 = u_xlat50;
    let x_1428 : f32 = u_xlat50;
    u_xlat50 = (x_1427 * x_1428);
    let x_1430 : f32 = u_xlat48;
    let x_1431 : f32 = u_xlat50;
    u_xlat48 = (x_1430 * x_1431);
    let x_1434 : i32 = u_xlati47;
    let x_1436 : f32 = x_629.x_AdditionalShadowParams[x_1434].w;
    u_xlati50 = i32(x_1436);
    let x_1439 : i32 = u_xlati50;
    u_xlatb51 = (x_1439 >= 0i);
    let x_1441 : bool = u_xlatb51;
    if (x_1441) {
      let x_1445 : i32 = u_xlati47;
      let x_1447 : f32 = x_629.x_AdditionalShadowParams[x_1445].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1447, x_1447, x_1447, x_1447))));
      let x_1451 : bool = u_xlatb51;
      if (x_1451) {
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1458 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<bool> = (abs(vec4<f32>(x_1455.z, x_1455.z, x_1455.y, x_1455.z)) >= abs(vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.x)));
        let x_1463 : vec3<bool> = vec3<bool>(x_1461.x, x_1461.y, x_1461.z);
        let x_1464 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
        let x_1467 : bool = u_xlatb10.y;
        let x_1469 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1467 & x_1469);
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<bool> = (-(vec4<f32>(x_1471.z, x_1471.y, x_1471.z, x_1471.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1475 : vec3<bool> = vec3<bool>(x_1474.x, x_1474.y, x_1474.w);
        let x_1476 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1475.x, x_1475.y, x_1476.z, x_1475.z);
        let x_1479 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1479);
        let x_1484 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1484);
        let x_1489 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1489);
        let x_1493 : bool = u_xlatb10.z;
        if (x_1493) {
          let x_1498 : f32 = u_xlat10.y;
          x_1494 = x_1498;
        } else {
          let x_1500 : f32 = u_xlat52;
          x_1494 = x_1500;
        }
        let x_1501 : f32 = x_1494;
        u_xlat24 = x_1501;
        let x_1503 : bool = u_xlatb51;
        if (x_1503) {
          let x_1508 : f32 = u_xlat10.x;
          x_1504 = x_1508;
        } else {
          let x_1510 : f32 = u_xlat24;
          x_1504 = x_1510;
        }
        let x_1511 : f32 = x_1504;
        u_xlat51 = x_1511;
        let x_1512 : i32 = u_xlati47;
        let x_1514 : f32 = x_629.x_AdditionalShadowParams[x_1512].w;
        u_xlat10.x = trunc(x_1514);
        let x_1517 : f32 = u_xlat51;
        let x_1519 : f32 = u_xlat10.x;
        u_xlat51 = (x_1517 + x_1519);
        let x_1521 : f32 = u_xlat51;
        u_xlati50 = i32(x_1521);
      }
      let x_1523 : i32 = u_xlati50;
      u_xlati50 = (x_1523 << bitcast<u32>(2i));
      let x_1525 : vec3<f32> = vs_TEXCOORD7;
      let x_1527 : i32 = u_xlati50;
      let x_1530 : i32 = u_xlati50;
      let x_1534 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1527 + 1i) / 4i)][((x_1530 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1525.y, x_1525.y, x_1525.y, x_1525.y) * x_1534);
      let x_1536 : i32 = u_xlati50;
      let x_1538 : i32 = u_xlati50;
      let x_1541 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_1536 / 4i)][(x_1538 % 4i)];
      let x_1542 : vec3<f32> = vs_TEXCOORD7;
      let x_1545 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1541 * vec4<f32>(x_1542.x, x_1542.x, x_1542.x, x_1542.x)) + x_1545);
      let x_1547 : i32 = u_xlati50;
      let x_1550 : i32 = u_xlati50;
      let x_1554 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1547 + 2i) / 4i)][((x_1550 + 2i) % 4i)];
      let x_1555 : vec3<f32> = vs_TEXCOORD7;
      let x_1558 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1554 * vec4<f32>(x_1555.z, x_1555.z, x_1555.z, x_1555.z)) + x_1558);
      let x_1560 : vec4<f32> = u_xlat10;
      let x_1561 : i32 = u_xlati50;
      let x_1564 : i32 = u_xlati50;
      let x_1568 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1561 + 3i) / 4i)][((x_1564 + 3i) % 4i)];
      u_xlat10 = (x_1560 + x_1568);
      let x_1570 : vec4<f32> = u_xlat10;
      let x_1572 : vec4<f32> = u_xlat10;
      let x_1574 : vec3<f32> = (vec3<f32>(x_1570.x, x_1570.y, x_1570.z) / vec3<f32>(x_1572.w, x_1572.w, x_1572.w));
      let x_1575 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
      let x_1578 : vec4<f32> = u_xlat10;
      let x_1579 : vec2<f32> = vec2<f32>(x_1578.x, x_1578.y);
      let x_1581 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
      let x_1589 : vec3<f32> = txVec1;
      let x_1591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1589.xy, x_1589.z);
      u_xlat50 = x_1591;
      let x_1592 : i32 = u_xlati47;
      let x_1594 : f32 = x_629.x_AdditionalShadowParams[x_1592].x;
      u_xlat51 = (1.0f + -(x_1594));
      let x_1597 : f32 = u_xlat50;
      let x_1598 : i32 = u_xlati47;
      let x_1600 : f32 = x_629.x_AdditionalShadowParams[x_1598].x;
      let x_1602 : f32 = u_xlat51;
      u_xlat50 = ((x_1597 * x_1600) + x_1602);
      let x_1605 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1605);
      let x_1608 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1608 >= 1.0f);
      let x_1611 : bool = u_xlatb51;
      let x_1613 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1611 | x_1613);
      let x_1615 : bool = u_xlatb51;
      let x_1616 : f32 = u_xlat50;
      u_xlat50 = select(x_1616, 1.0f, x_1615);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1619 : f32 = u_xlat50;
    u_xlat51 = (-(x_1619) + 1.0f);
    let x_1622 : f32 = u_xlat44;
    let x_1623 : f32 = u_xlat51;
    let x_1625 : f32 = u_xlat50;
    u_xlat50 = ((x_1622 * x_1623) + x_1625);
    let x_1627 : f32 = u_xlat48;
    let x_1628 : f32 = u_xlat50;
    u_xlat48 = (x_1627 * x_1628);
    let x_1630 : vec4<f32> = u_xlat1;
    let x_1632 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1630.x, x_1630.y, x_1630.z), vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1635, 0.0f, 1.0f);
    let x_1637 : f32 = u_xlat48;
    let x_1638 : f32 = u_xlat50;
    u_xlat48 = (x_1637 * x_1638);
    let x_1640 : f32 = u_xlat48;
    let x_1642 : i32 = u_xlati47;
    let x_1644 : vec4<f32> = x_1357.x_AdditionalLightsColor[x_1642];
    let x_1646 : vec3<f32> = (vec3<f32>(x_1640, x_1640, x_1640) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
    let x_1647 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
    let x_1649 : vec4<f32> = u_xlat8;
    let x_1651 : f32 = u_xlat49;
    let x_1654 : vec3<f32> = u_xlat2;
    let x_1655 : vec3<f32> = ((vec3<f32>(x_1649.x, x_1649.y, x_1649.z) * vec3<f32>(x_1651, x_1651, x_1651)) + x_1654);
    let x_1656 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
    let x_1658 : vec4<f32> = u_xlat8;
    let x_1660 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1658.x, x_1658.y, x_1658.z), vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
    let x_1663 : f32 = u_xlat47;
    u_xlat47 = max(x_1663, 1.17549435e-38f);
    let x_1665 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1665);
    let x_1667 : f32 = u_xlat47;
    let x_1669 : vec4<f32> = u_xlat8;
    let x_1671 : vec3<f32> = (vec3<f32>(x_1667, x_1667, x_1667) * vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
    let x_1672 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
    let x_1674 : vec4<f32> = u_xlat1;
    let x_1676 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1679, 0.0f, 1.0f);
    let x_1681 : vec4<f32> = u_xlat9;
    let x_1683 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1686, 0.0f, 1.0f);
    let x_1688 : f32 = u_xlat47;
    let x_1689 : f32 = u_xlat47;
    u_xlat47 = (x_1688 * x_1689);
    let x_1691 : f32 = u_xlat47;
    let x_1693 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1691 * x_1693) + 1.00001001358032226562f);
    let x_1696 : f32 = u_xlat48;
    let x_1697 : f32 = u_xlat48;
    u_xlat48 = (x_1696 * x_1697);
    let x_1699 : f32 = u_xlat47;
    let x_1700 : f32 = u_xlat47;
    u_xlat47 = (x_1699 * x_1700);
    let x_1702 : f32 = u_xlat48;
    u_xlat48 = max(x_1702, 0.10000000149011611938f);
    let x_1704 : f32 = u_xlat47;
    let x_1705 : f32 = u_xlat48;
    u_xlat47 = (x_1704 * x_1705);
    let x_1707 : f32 = u_xlat45;
    let x_1708 : f32 = u_xlat47;
    u_xlat47 = (x_1707 * x_1708);
    let x_1710 : f32 = u_xlat43;
    let x_1711 : f32 = u_xlat47;
    u_xlat47 = (x_1710 / x_1711);
    let x_1713 : vec4<f32> = u_xlat5;
    let x_1715 : f32 = u_xlat47;
    let x_1718 : vec4<f32> = u_xlat6;
    let x_1720 : vec3<f32> = ((vec3<f32>(x_1713.x, x_1713.y, x_1713.z) * vec3<f32>(x_1715, x_1715, x_1715)) + vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
    let x_1721 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
    let x_1723 : vec4<f32> = u_xlat8;
    let x_1725 : vec4<f32> = u_xlat10;
    let x_1728 : vec4<f32> = u_xlat3;
    let x_1730 : vec3<f32> = ((vec3<f32>(x_1723.x, x_1723.y, x_1723.z) * vec3<f32>(x_1725.x, x_1725.y, x_1725.z)) + vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
    let x_1731 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);

    continuing {
      let x_1733 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1733 + bitcast<u32>(1i));
    }
  }
  let x_1735 : vec4<f32> = u_xlat4;
  let x_1737 : f32 = u_xlat14;
  let x_1740 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1737, x_1737, x_1737)) + vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
  let x_1743 : vec4<f32> = u_xlat3;
  let x_1745 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1743.x, x_1743.y, x_1743.z) + x_1745);
  let x_1749 : f32 = u_xlat42;
  let x_1751 : vec3<f32> = u_xlat0;
  let x_1752 : vec3<f32> = (vec3<f32>(x_1749, x_1749, x_1749) * x_1751);
  let x_1753 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
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


