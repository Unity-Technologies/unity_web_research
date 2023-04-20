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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_177 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu26 : u32;

var<private> u_xlati26 : i32;

@group(1) @binding(2) var<uniform> x_353 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb76 : bool;

var<private> u_xlat76 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2147 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

fn main_1() {
  var x_117 : f32;
  var x_130 : f32;
  var x_142 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1780 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2287 : f32;
  var x_2298 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1.x = x_77.x;
  let x_84 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_84 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_95 : vec3<f32> = (-(x_89) + x_94);
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_104);
  let x_106 : f32 = u_xlat51;
  let x_108 : vec4<f32> = u_xlat2;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_115 : bool = u_xlatb26;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb26;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb26;
  if (x_141) {
    let x_146 : f32 = u_xlat2.z;
    x_142 = x_146;
  } else {
    let x_150 : f32 = x_29.unity_MatrixV[2i].z;
    x_142 = x_150;
  }
  let x_151 : f32 = x_142;
  u_xlat3.z = x_151;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat26;
  let x_165 : vec3<f32> = vs_TEXCOORD3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_180 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres0;
  u_xlat26 = (x_169 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD7;
  let x_187 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_192 : vec3<f32> = vs_TEXCOORD7;
  let x_195 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres2;
  let x_198 : vec3<f32> = (x_192 + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec3<f32> = vs_TEXCOORD7;
  let x_204 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres3;
  let x_207 : vec3<f32> = (x_202 + -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = u_xlat26;
  let x_212 : vec3<f32> = u_xlat26;
  u_xlat7.x = dot(x_211, x_212);
  let x_215 : vec3<f32> = u_xlat4;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_215, x_216);
  let x_219 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat7;
  let x_236 : vec4<f32> = x_177.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_234 < x_236);
  let x_239 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb4.x;
  u_xlat26.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb4.y;
  u_xlat26.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb4.z;
  u_xlat26.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec3<f32> = u_xlat26;
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat26 = (x_269 + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec3<f32> = u_xlat26;
  let x_275 : vec3<f32> = max(x_273, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat26.x = dot(x_278, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_286 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_286) + 4.0f);
  let x_293 : f32 = u_xlat26.x;
  u_xlatu26 = u32(x_293);
  let x_297 : u32 = u_xlatu26;
  u_xlati26 = (bitcast<i32>(x_297) << bitcast<u32>(2i));
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_302 : i32 = u_xlati26;
  let x_305 : i32 = u_xlati26;
  let x_309 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_302 + 1i) / 4i)][((x_305 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_300.y, x_300.y, x_300.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : i32 = u_xlati26;
  let x_314 : i32 = u_xlati26;
  let x_317 : vec4<f32> = x_177.x_MainLightWorldToShadow[(x_312 / 4i)][(x_314 % 4i)];
  let x_319 : vec3<f32> = vs_TEXCOORD7;
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_319.x, x_319.x, x_319.x)) + x_322);
  let x_324 : i32 = u_xlati26;
  let x_327 : i32 = u_xlati26;
  let x_331 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_324 + 2i) / 4i)][((x_327 + 2i) % 4i)];
  let x_333 : vec3<f32> = vs_TEXCOORD7;
  let x_336 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.z, x_333.z, x_333.z)) + x_336);
  let x_338 : vec3<f32> = u_xlat4;
  let x_339 : i32 = u_xlati26;
  let x_342 : i32 = u_xlati26;
  let x_346 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_339 + 3i) / 4i)][((x_342 + 3i) % 4i)];
  u_xlat26 = (x_338 + vec3<f32>(x_346.x, x_346.y, x_346.z));
  u_xlat2.w = 1.0f;
  let x_356 : vec4<f32> = x_353.unity_SHAr;
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_356, x_357);
  let x_362 : vec4<f32> = x_353.unity_SHAg;
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_362, x_363);
  let x_368 : vec4<f32> = x_353.unity_SHAb;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_368, x_369);
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_372.y, x_372.z, x_372.z, x_372.x) * vec4<f32>(x_374.x, x_374.y, x_374.z, x_374.z));
  let x_379 : vec4<f32> = x_353.unity_SHBr;
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_379, x_380);
  let x_385 : vec4<f32> = x_353.unity_SHBg;
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_385, x_386);
  let x_391 : vec4<f32> = x_353.unity_SHBb;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_391, x_392);
  let x_397 : f32 = u_xlat2.y;
  let x_399 : f32 = u_xlat2.y;
  u_xlat77 = (x_397 * x_399);
  let x_402 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat2.x;
  let x_406 : f32 = u_xlat77;
  u_xlat77 = ((x_402 * x_404) + -(x_406));
  let x_411 : vec4<f32> = x_353.unity_SHC;
  let x_413 : f32 = u_xlat77;
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413, x_413, x_413)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat4;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_421 + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_425, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_428 : f32 = u_xlat1.x;
  u_xlat77 = ((-(x_428) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_434 : f32 = u_xlat77;
  u_xlat78 = (-(x_434) + 1.0f);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : f32 = u_xlat77;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_439, x_439, x_439));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.x, x_451.x) * vec3<f32>(x_453.x, x_453.y, x_453.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_459 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_462) + 1.0f);
  let x_467 : f32 = u_xlat1.x;
  let x_469 : f32 = u_xlat1.x;
  u_xlat77 = (x_467 * x_469);
  let x_471 : f32 = u_xlat77;
  u_xlat77 = max(x_471, 0.0078125f);
  let x_475 : f32 = u_xlat77;
  let x_476 : f32 = u_xlat77;
  u_xlat79 = (x_475 * x_476);
  let x_480 : f32 = u_xlat0.w;
  let x_481 : f32 = u_xlat78;
  u_xlat75 = (x_480 + x_481);
  let x_483 : f32 = u_xlat75;
  u_xlat75 = clamp(x_483, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat77;
  u_xlat78 = ((x_485 * 4.0f) + 2.0f);
  let x_491 : f32 = x_177.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_491);
  let x_493 : bool = u_xlatb80;
  if (x_493) {
    let x_497 : f32 = x_177.x_MainLightShadowParams.y;
    u_xlatb80 = (x_497 == 1.0f);
    let x_499 : bool = u_xlatb80;
    if (x_499) {
      let x_502 : vec3<f32> = u_xlat26;
      let x_505 : vec4<f32> = x_177.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_502.x, x_502.y, x_502.x, x_502.y) + x_505);
      let x_509 : vec4<f32> = u_xlat6;
      let x_510 : vec2<f32> = vec2<f32>(x_509.x, x_509.y);
      let x_512 : f32 = u_xlat26.z;
      txVec0 = vec3<f32>(x_510.x, x_510.y, x_512);
      let x_524 : vec3<f32> = txVec0;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_524.xy, x_524.z);
      u_xlat7.x = x_526;
      let x_529 : vec4<f32> = u_xlat6;
      let x_530 : vec2<f32> = vec2<f32>(x_529.z, x_529.w);
      let x_532 : f32 = u_xlat26.z;
      txVec1 = vec3<f32>(x_530.x, x_530.y, x_532);
      let x_539 : vec3<f32> = txVec1;
      let x_541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_539.xy, x_539.z);
      u_xlat7.y = x_541;
      let x_543 : vec3<f32> = u_xlat26;
      let x_547 : vec4<f32> = x_177.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_543.x, x_543.y, x_543.x, x_543.y) + x_547);
      let x_550 : vec4<f32> = u_xlat6;
      let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
      let x_553 : f32 = u_xlat26.z;
      txVec2 = vec3<f32>(x_551.x, x_551.y, x_553);
      let x_560 : vec3<f32> = txVec2;
      let x_562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_560.xy, x_560.z);
      u_xlat7.z = x_562;
      let x_565 : vec4<f32> = u_xlat6;
      let x_566 : vec2<f32> = vec2<f32>(x_565.z, x_565.w);
      let x_568 : f32 = u_xlat26.z;
      txVec3 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec3;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat7.w = x_577;
      let x_580 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_580, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_587 : f32 = x_177.x_MainLightShadowParams.y;
      u_xlatb6 = (x_587 == 2.0f);
      let x_589 : bool = u_xlatb6;
      if (x_589) {
        let x_592 : vec3<f32> = u_xlat26;
        let x_596 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_601 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_596.z, x_596.w)) + vec2<f32>(0.5f, 0.5f));
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat6;
        let x_606 : vec2<f32> = floor(vec2<f32>(x_604.x, x_604.y));
        let x_607 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_611 : vec3<f32> = u_xlat26;
        let x_614 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_614.z, x_614.w)) + -(vec2<f32>(x_617.x, x_617.y)));
        let x_621 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_621.x, x_621.x, x_621.y, x_621.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_626 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_626.x, x_626.x, x_626.z, x_626.z) * vec4<f32>(x_628.x, x_628.x, x_628.z, x_628.z));
        let x_631 : vec4<f32> = u_xlat8;
        let x_635 : vec2<f32> = (vec2<f32>(x_631.y, x_631.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_636 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_635.x, x_636.y, x_635.y, x_636.w);
        let x_638 : vec4<f32> = u_xlat8;
        let x_641 : vec2<f32> = u_xlat56;
        let x_643 : vec2<f32> = ((vec2<f32>(x_638.x, x_638.z) * vec2<f32>(0.5f, 0.5f)) + -(x_641));
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_647 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_647) + vec2<f32>(1.0f, 1.0f));
        let x_652 : vec2<f32> = u_xlat56;
        let x_654 : vec2<f32> = min(x_652, vec2<f32>(0.0f, 0.0f));
        let x_655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat9;
        let x_660 : vec4<f32> = u_xlat9;
        let x_663 : vec2<f32> = u_xlat58;
        let x_664 : vec2<f32> = ((-(vec2<f32>(x_657.x, x_657.y)) * vec2<f32>(x_660.x, x_660.y)) + x_663);
        let x_665 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_667, vec2<f32>(0.0f, 0.0f));
        let x_669 : vec2<f32> = u_xlat56;
        let x_671 : vec2<f32> = u_xlat56;
        let x_673 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_669) * x_671) + vec2<f32>(x_673.y, x_673.w));
        let x_676 : vec4<f32> = u_xlat9;
        let x_678 : vec2<f32> = (vec2<f32>(x_676.x, x_676.y) + vec2<f32>(1.0f, 1.0f));
        let x_679 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_681 + vec2<f32>(1.0f, 1.0f));
        let x_684 : vec4<f32> = u_xlat8;
        let x_688 : vec2<f32> = (vec2<f32>(x_684.x, x_684.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec2<f32> = u_xlat58;
        let x_692 : vec2<f32> = (x_691 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat9;
        let x_697 : vec2<f32> = (vec2<f32>(x_695.x, x_695.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_701 : vec2<f32> = u_xlat56;
        let x_702 : vec2<f32> = (x_701 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_705.y, x_705.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_709 : f32 = u_xlat9.x;
        u_xlat10.z = x_709;
        let x_712 : f32 = u_xlat56.x;
        u_xlat10.w = x_712;
        let x_715 : f32 = u_xlat11.x;
        u_xlat8.z = x_715;
        let x_718 : f32 = u_xlat7.x;
        u_xlat8.w = x_718;
        let x_721 : vec4<f32> = u_xlat8;
        let x_723 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_721.z, x_721.w, x_721.x, x_721.z) + vec4<f32>(x_723.z, x_723.w, x_723.x, x_723.z));
        let x_727 : f32 = u_xlat10.y;
        u_xlat9.z = x_727;
        let x_730 : f32 = u_xlat56.y;
        u_xlat9.w = x_730;
        let x_733 : f32 = u_xlat8.y;
        u_xlat11.z = x_733;
        let x_736 : f32 = u_xlat7.z;
        u_xlat11.w = x_736;
        let x_738 : vec4<f32> = u_xlat9;
        let x_740 : vec4<f32> = u_xlat11;
        let x_742 : vec3<f32> = (vec3<f32>(x_738.z, x_738.y, x_738.w) + vec3<f32>(x_740.z, x_740.y, x_740.w));
        let x_743 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
        let x_745 : vec4<f32> = u_xlat8;
        let x_747 : vec4<f32> = u_xlat12;
        let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.z, x_745.w) / vec3<f32>(x_747.z, x_747.w, x_747.y));
        let x_750 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat8;
        let x_758 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat11;
        let x_763 : vec4<f32> = u_xlat7;
        let x_765 : vec3<f32> = (vec3<f32>(x_761.z, x_761.y, x_761.w) / vec3<f32>(x_763.x, x_763.y, x_763.z));
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat9;
        let x_770 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_771 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat8;
        let x_776 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_778 : vec3<f32> = (vec3<f32>(x_773.y, x_773.x, x_773.z) * vec3<f32>(x_776.x, x_776.x, x_776.x));
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat9;
        let x_784 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_786 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_784.y, x_784.y, x_784.y));
        let x_787 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
        let x_790 : f32 = u_xlat9.x;
        u_xlat8.w = x_790;
        let x_792 : vec4<f32> = u_xlat6;
        let x_795 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.y, x_798.w, x_798.x, x_798.w));
        let x_801 : vec4<f32> = u_xlat6;
        let x_804 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_804.x, x_804.y)) + vec2<f32>(x_807.z, x_807.w));
        let x_811 : f32 = u_xlat8.y;
        u_xlat9.w = x_811;
        let x_813 : vec4<f32> = u_xlat9;
        let x_814 : vec2<f32> = vec2<f32>(x_813.y, x_813.z);
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_815.x, x_814.x, x_815.z, x_814.y);
        let x_817 : vec4<f32> = u_xlat6;
        let x_820 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.x, x_823.y, x_823.z, x_823.y));
        let x_826 : vec4<f32> = u_xlat6;
        let x_829 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.w, x_832.y, x_832.w, x_832.z));
        let x_835 : vec4<f32> = u_xlat6;
        let x_838 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.x, x_841.w, x_841.z, x_841.w));
        let x_845 : vec4<f32> = u_xlat7;
        let x_847 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_845.x, x_845.x, x_845.x, x_845.y) * vec4<f32>(x_847.z, x_847.w, x_847.y, x_847.z));
        let x_851 : vec4<f32> = u_xlat7;
        let x_853 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_851.y, x_851.y, x_851.z, x_851.z) * x_853);
        let x_856 : f32 = u_xlat7.z;
        let x_858 : f32 = u_xlat12.y;
        u_xlat6.x = (x_856 * x_858);
        let x_862 : vec4<f32> = u_xlat10;
        let x_863 : vec2<f32> = vec2<f32>(x_862.x, x_862.y);
        let x_865 : f32 = u_xlat26.z;
        txVec4 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_873 : vec3<f32> = txVec4;
        let x_875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_873.xy, x_873.z);
        u_xlat31 = x_875;
        let x_877 : vec4<f32> = u_xlat10;
        let x_878 : vec2<f32> = vec2<f32>(x_877.z, x_877.w);
        let x_880 : f32 = u_xlat26.z;
        txVec5 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec5;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat7.x = x_889;
        let x_892 : f32 = u_xlat7.x;
        let x_894 : f32 = u_xlat13.y;
        u_xlat7.x = (x_892 * x_894);
        let x_898 : f32 = u_xlat13.x;
        let x_899 : f32 = u_xlat31;
        let x_902 : f32 = u_xlat7.x;
        u_xlat31 = ((x_898 * x_899) + x_902);
        let x_905 : vec2<f32> = u_xlat56;
        let x_907 : f32 = u_xlat26.z;
        txVec6 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec6;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat56.x = x_916;
        let x_919 : f32 = u_xlat13.z;
        let x_921 : f32 = u_xlat56.x;
        let x_923 : f32 = u_xlat31;
        u_xlat31 = ((x_919 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat9;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = u_xlat26.z;
        txVec7 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec7;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat56.x = x_938;
        let x_941 : f32 = u_xlat13.w;
        let x_943 : f32 = u_xlat56.x;
        let x_945 : f32 = u_xlat31;
        u_xlat31 = ((x_941 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat11;
        let x_949 : vec2<f32> = vec2<f32>(x_948.x, x_948.y);
        let x_951 : f32 = u_xlat26.z;
        txVec8 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec8;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_958.xy, x_958.z);
        u_xlat56.x = x_960;
        let x_963 : f32 = u_xlat14.x;
        let x_965 : f32 = u_xlat56.x;
        let x_967 : f32 = u_xlat31;
        u_xlat31 = ((x_963 * x_965) + x_967);
        let x_970 : vec4<f32> = u_xlat11;
        let x_971 : vec2<f32> = vec2<f32>(x_970.z, x_970.w);
        let x_973 : f32 = u_xlat26.z;
        txVec9 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec9;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_980.xy, x_980.z);
        u_xlat56.x = x_982;
        let x_985 : f32 = u_xlat14.y;
        let x_987 : f32 = u_xlat56.x;
        let x_989 : f32 = u_xlat31;
        u_xlat31 = ((x_985 * x_987) + x_989);
        let x_992 : vec4<f32> = u_xlat9;
        let x_993 : vec2<f32> = vec2<f32>(x_992.z, x_992.w);
        let x_995 : f32 = u_xlat26.z;
        txVec10 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec10;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1002.xy, x_1002.z);
        u_xlat56.x = x_1004;
        let x_1007 : f32 = u_xlat14.z;
        let x_1009 : f32 = u_xlat56.x;
        let x_1011 : f32 = u_xlat31;
        u_xlat31 = ((x_1007 * x_1009) + x_1011);
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
        let x_1017 : f32 = u_xlat26.z;
        txVec11 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec11;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat56.x = x_1026;
        let x_1029 : f32 = u_xlat14.w;
        let x_1031 : f32 = u_xlat56.x;
        let x_1033 : f32 = u_xlat31;
        u_xlat31 = ((x_1029 * x_1031) + x_1033);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1037 : vec2<f32> = vec2<f32>(x_1036.z, x_1036.w);
        let x_1039 : f32 = u_xlat26.z;
        txVec12 = vec3<f32>(x_1037.x, x_1037.y, x_1039);
        let x_1046 : vec3<f32> = txVec12;
        let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1046.xy, x_1046.z);
        u_xlat56.x = x_1048;
        let x_1051 : f32 = u_xlat6.x;
        let x_1053 : f32 = u_xlat56.x;
        let x_1055 : f32 = u_xlat31;
        u_xlat80 = ((x_1051 * x_1053) + x_1055);
      } else {
        let x_1058 : vec3<f32> = u_xlat26;
        let x_1061 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.z, x_1061.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat6;
        let x_1069 : vec2<f32> = floor(vec2<f32>(x_1067.x, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1072 : vec3<f32> = u_xlat26;
        let x_1075 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.z, x_1075.w)) + -(vec2<f32>(x_1078.x, x_1078.y)));
        let x_1082 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1082.x, x_1082.x, x_1082.y, x_1082.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1085.x, x_1085.x, x_1085.z, x_1085.z) * vec4<f32>(x_1087.x, x_1087.x, x_1087.z, x_1087.z));
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1090.y, x_1090.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1094.x, x_1095.z, x_1094.y);
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1100 : vec2<f32> = u_xlat56;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1100));
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1102.x, x_1103.y, x_1102.y, x_1103.w);
        let x_1105 : vec2<f32> = u_xlat56;
        let x_1107 : vec2<f32> = (-(x_1105) + vec2<f32>(1.0f, 1.0f));
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1110, vec2<f32>(0.0f, 0.0f));
        let x_1112 : vec2<f32> = u_xlat58;
        let x_1114 : vec2<f32> = u_xlat58;
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1118 : vec2<f32> = ((-(x_1112) * x_1114) + vec2<f32>(x_1116.x, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1121, vec2<f32>(0.0f, 0.0f));
        let x_1124 : vec2<f32> = u_xlat58;
        let x_1126 : vec2<f32> = u_xlat58;
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = ((-(x_1124) * x_1126) + vec2<f32>(x_1128.y, x_1128.w));
        let x_1131 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1130.x, x_1131.y, x_1130.y);
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1133.x, x_1133.y) + vec2<f32>(2.0f, 2.0f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec3<f32> = u_xlat32;
        let x_1141 : vec2<f32> = (vec2<f32>(x_1139.x, x_1139.z) + vec2<f32>(2.0f, 2.0f));
        let x_1142 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1145 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1145 * 0.08163200318813323975f);
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1149.z, x_1149.x, x_1149.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1153 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : f32 = u_xlat11.y;
        u_xlat10.x = x_1162;
        let x_1164 : vec2<f32> = u_xlat56;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1172.x, x_1171.x, x_1172.z, x_1171.y);
        let x_1174 : vec2<f32> = u_xlat56;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
        let x_1182 : f32 = u_xlat7.x;
        u_xlat8.y = x_1182;
        let x_1185 : f32 = u_xlat9.y;
        u_xlat8.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1187 + x_1188);
        let x_1190 : vec2<f32> = u_xlat56;
        let x_1193 : vec2<f32> = ((vec2<f32>(x_1190.y, x_1190.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1194.x, x_1193.x, x_1194.z, x_1193.y);
        let x_1196 : vec2<f32> = u_xlat56;
        let x_1199 : vec2<f32> = ((vec2<f32>(x_1196.y, x_1196.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1200.w);
        let x_1203 : f32 = u_xlat7.y;
        u_xlat9.y = x_1203;
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1205 + x_1206);
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1208 / x_1209);
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1211 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1217 : vec4<f32> = u_xlat9;
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1217 / x_1218);
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1220 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1225 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1222.w, x_1222.x, x_1222.y, x_1222.z) * vec4<f32>(x_1225.x, x_1225.x, x_1225.x, x_1225.x));
        let x_1228 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1228.x, x_1228.w, x_1228.y, x_1228.z) * vec4<f32>(x_1231.y, x_1231.y, x_1231.y, x_1231.y));
        let x_1234 : vec4<f32> = u_xlat8;
        let x_1235 : vec3<f32> = vec3<f32>(x_1234.y, x_1234.z, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1235.z);
        let x_1239 : f32 = u_xlat9.x;
        u_xlat11.y = x_1239;
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1260 : f32 = u_xlat11.y;
        u_xlat8.y = x_1260;
        let x_1263 : f32 = u_xlat9.z;
        u_xlat11.y = x_1263;
        let x_1265 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat11.y;
        u_xlat8.z = x_1286;
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.z));
        let x_1299 : f32 = u_xlat9.w;
        u_xlat11.y = x_1299;
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.y));
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1322 : f32 = u_xlat11.y;
        u_xlat8.w = x_1322;
        let x_1325 : vec4<f32> = u_xlat6;
        let x_1328 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.x, x_1331.w));
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec3<f32> = vec3<f32>(x_1334.x, x_1334.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1335.x, x_1336.y, x_1335.y, x_1335.z);
        let x_1338 : vec4<f32> = u_xlat6;
        let x_1341 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y) * vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y)) + vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1344.y));
        let x_1348 : vec4<f32> = u_xlat6;
        let x_1351 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1351.x, x_1351.y)) + vec2<f32>(x_1354.w, x_1354.y));
        let x_1358 : f32 = u_xlat8.x;
        u_xlat9.x = x_1358;
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1368 : vec2<f32> = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.x, x_1366.y));
        let x_1369 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1372.x, x_1372.x, x_1372.x, x_1372.x) * x_1374);
        let x_1377 : vec4<f32> = u_xlat7;
        let x_1379 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1377.y, x_1377.y, x_1377.y, x_1377.y) * x_1379);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1384 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1382.z, x_1382.z, x_1382.z, x_1382.z) * x_1384);
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1388 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1386.w, x_1386.w, x_1386.w, x_1386.w) * x_1388);
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = u_xlat26.z;
        txVec13 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec13;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat8.x = x_1403;
        let x_1406 : vec4<f32> = u_xlat12;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = u_xlat26.z;
        txVec14 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1417 : vec3<f32> = txVec14;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat83 = x_1419;
        let x_1420 : f32 = u_xlat83;
        let x_1422 : f32 = u_xlat17.y;
        u_xlat83 = (x_1420 * x_1422);
        let x_1425 : f32 = u_xlat17.x;
        let x_1427 : f32 = u_xlat8.x;
        let x_1429 : f32 = u_xlat83;
        u_xlat8.x = ((x_1425 * x_1427) + x_1429);
        let x_1433 : vec2<f32> = u_xlat56;
        let x_1435 : f32 = u_xlat26.z;
        txVec15 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec15;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat56.x = x_1444;
        let x_1447 : f32 = u_xlat17.z;
        let x_1449 : f32 = u_xlat56.x;
        let x_1452 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1447 * x_1449) + x_1452);
        let x_1456 : vec4<f32> = u_xlat15;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = u_xlat26.z;
        txVec16 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1467 : vec3<f32> = txVec16;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat81 = x_1469;
        let x_1471 : f32 = u_xlat17.w;
        let x_1472 : f32 = u_xlat81;
        let x_1475 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1471 * x_1472) + x_1475);
        let x_1479 : vec4<f32> = u_xlat13;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = u_xlat26.z;
        txVec17 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec17;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat81 = x_1491;
        let x_1493 : f32 = u_xlat18.x;
        let x_1494 : f32 = u_xlat81;
        let x_1497 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat13;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.z, x_1501.w);
        let x_1504 : f32 = u_xlat26.z;
        txVec18 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec18;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat81 = x_1513;
        let x_1515 : f32 = u_xlat18.y;
        let x_1516 : f32 = u_xlat81;
        let x_1519 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1515 * x_1516) + x_1519);
        let x_1523 : vec4<f32> = u_xlat14;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = u_xlat26.z;
        txVec19 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec19;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat81 = x_1535;
        let x_1537 : f32 = u_xlat18.z;
        let x_1538 : f32 = u_xlat81;
        let x_1541 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1537 * x_1538) + x_1541);
        let x_1545 : vec4<f32> = u_xlat15;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = u_xlat26.z;
        txVec20 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec20;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat81 = x_1557;
        let x_1559 : f32 = u_xlat18.w;
        let x_1560 : f32 = u_xlat81;
        let x_1563 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1559 * x_1560) + x_1563);
        let x_1567 : vec4<f32> = u_xlat16;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat26.z;
        txVec21 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec21;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat81 = x_1579;
        let x_1581 : f32 = u_xlat19.x;
        let x_1582 : f32 = u_xlat81;
        let x_1585 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1581 * x_1582) + x_1585);
        let x_1589 : vec4<f32> = u_xlat16;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat26.z;
        txVec22 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec22;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat81 = x_1601;
        let x_1603 : f32 = u_xlat19.y;
        let x_1604 : f32 = u_xlat81;
        let x_1607 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1603 * x_1604) + x_1607);
        let x_1611 : vec2<f32> = u_xlat33;
        let x_1613 : f32 = u_xlat26.z;
        txVec23 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec23;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat81 = x_1622;
        let x_1624 : f32 = u_xlat19.z;
        let x_1625 : f32 = u_xlat81;
        let x_1628 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1624 * x_1625) + x_1628);
        let x_1632 : vec2<f32> = u_xlat64;
        let x_1634 : f32 = u_xlat26.z;
        txVec24 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec24;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1641.xy, x_1641.z);
        u_xlat81 = x_1643;
        let x_1645 : f32 = u_xlat19.w;
        let x_1646 : f32 = u_xlat81;
        let x_1649 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1645 * x_1646) + x_1649);
        let x_1653 : vec4<f32> = u_xlat11;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = u_xlat26.z;
        txVec25 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec25;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1663.xy, x_1663.z);
        u_xlat81 = x_1665;
        let x_1667 : f32 = u_xlat7.x;
        let x_1668 : f32 = u_xlat81;
        let x_1671 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1667 * x_1668) + x_1671);
        let x_1675 : vec4<f32> = u_xlat11;
        let x_1676 : vec2<f32> = vec2<f32>(x_1675.z, x_1675.w);
        let x_1678 : f32 = u_xlat26.z;
        txVec26 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec26;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat81 = x_1687;
        let x_1689 : f32 = u_xlat7.y;
        let x_1690 : f32 = u_xlat81;
        let x_1693 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec2<f32> = u_xlat59;
        let x_1699 : f32 = u_xlat26.z;
        txVec27 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec27;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1706.xy, x_1706.z);
        u_xlat81 = x_1708;
        let x_1710 : f32 = u_xlat7.z;
        let x_1711 : f32 = u_xlat81;
        let x_1714 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1710 * x_1711) + x_1714);
        let x_1718 : vec4<f32> = u_xlat6;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
        let x_1721 : f32 = u_xlat26.z;
        txVec28 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec28;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat6.x = x_1730;
        let x_1733 : f32 = u_xlat7.w;
        let x_1735 : f32 = u_xlat6.x;
        let x_1738 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1733 * x_1735) + x_1738);
      }
    }
  } else {
    let x_1742 : vec3<f32> = u_xlat26;
    let x_1743 : vec2<f32> = vec2<f32>(x_1742.x, x_1742.y);
    let x_1745 : f32 = u_xlat26.z;
    txVec29 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
    let x_1752 : vec3<f32> = txVec29;
    let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1752.xy, x_1752.z);
    u_xlat80 = x_1754;
  }
  let x_1756 : f32 = x_177.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1756) + 1.0f);
  let x_1760 : f32 = u_xlat80;
  let x_1762 : f32 = x_177.x_MainLightShadowParams.x;
  let x_1765 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1760 * x_1762) + x_1765);
  let x_1770 : f32 = u_xlat26.z;
  u_xlatb51 = (0.0f >= x_1770);
  let x_1774 : f32 = u_xlat26.z;
  u_xlatb76 = (x_1774 >= 1.0f);
  let x_1776 : bool = u_xlatb76;
  let x_1777 : bool = u_xlatb51;
  u_xlatb51 = (x_1776 | x_1777);
  let x_1779 : bool = u_xlatb51;
  if (x_1779) {
    x_1780 = 1.0f;
  } else {
    let x_1785 : f32 = u_xlat26.x;
    x_1780 = x_1785;
  }
  let x_1786 : f32 = x_1780;
  u_xlat26.x = x_1786;
  let x_1788 : vec3<f32> = vs_TEXCOORD7;
  let x_1790 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1792 : vec3<f32> = (x_1788 + -(x_1790));
  let x_1793 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
  let x_1795 : vec4<f32> = u_xlat6;
  let x_1797 : vec4<f32> = u_xlat6;
  u_xlat51 = dot(vec3<f32>(x_1795.x, x_1795.y, x_1795.z), vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1801 : f32 = u_xlat51;
  let x_1803 : f32 = x_177.x_MainLightShadowParams.z;
  let x_1806 : f32 = x_177.x_MainLightShadowParams.w;
  u_xlat76 = ((x_1801 * x_1803) + x_1806);
  let x_1808 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1808, 0.0f, 1.0f);
  let x_1811 : f32 = u_xlat26.x;
  u_xlat80 = (-(x_1811) + 1.0f);
  let x_1814 : f32 = u_xlat76;
  let x_1815 : f32 = u_xlat80;
  let x_1818 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1814 * x_1815) + x_1818);
  let x_1821 : vec3<f32> = u_xlat3;
  let x_1823 : vec4<f32> = u_xlat2;
  u_xlat76 = dot(-(x_1821), vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
  let x_1826 : f32 = u_xlat76;
  let x_1827 : f32 = u_xlat76;
  u_xlat76 = (x_1826 + x_1827);
  let x_1829 : vec4<f32> = u_xlat2;
  let x_1831 : f32 = u_xlat76;
  let x_1835 : vec3<f32> = u_xlat3;
  let x_1837 : vec3<f32> = ((vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * -(vec3<f32>(x_1831, x_1831, x_1831))) + -(x_1835));
  let x_1838 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : vec4<f32> = u_xlat2;
  let x_1842 : vec3<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_1840.x, x_1840.y, x_1840.z), x_1842);
  let x_1844 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1844, 0.0f, 1.0f);
  let x_1846 : f32 = u_xlat76;
  u_xlat76 = (-(x_1846) + 1.0f);
  let x_1849 : f32 = u_xlat76;
  let x_1850 : f32 = u_xlat76;
  u_xlat76 = (x_1849 * x_1850);
  let x_1852 : f32 = u_xlat76;
  let x_1853 : f32 = u_xlat76;
  u_xlat76 = (x_1852 * x_1853);
  let x_1856 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1856) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1863 : f32 = u_xlat1.x;
  let x_1864 : f32 = u_xlat80;
  u_xlat1.x = (x_1863 * x_1864);
  let x_1868 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1868 * 6.0f);
  let x_1880 : vec4<f32> = u_xlat6;
  let x_1883 : f32 = u_xlat1.x;
  let x_1884 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1880.x, x_1880.y, x_1880.z), x_1883);
  u_xlat6 = x_1884;
  let x_1886 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1886 + -1.0f);
  let x_1890 : f32 = x_353.unity_SpecCube0_HDR.w;
  let x_1892 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1890 * x_1892) + 1.0f);
  let x_1897 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1897, 0.0f);
  let x_1901 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1901);
  let x_1905 : f32 = u_xlat1.x;
  let x_1907 : f32 = x_353.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1905 * x_1907);
  let x_1911 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1911);
  let x_1915 : f32 = u_xlat1.x;
  let x_1917 : f32 = x_353.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1915 * x_1917);
  let x_1920 : vec4<f32> = u_xlat6;
  let x_1922 : vec4<f32> = u_xlat1;
  let x_1924 : vec3<f32> = (vec3<f32>(x_1920.x, x_1920.y, x_1920.z) * vec3<f32>(x_1922.x, x_1922.x, x_1922.x));
  let x_1925 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : f32 = u_xlat77;
  let x_1929 : f32 = u_xlat77;
  let x_1933 : vec2<f32> = ((vec2<f32>(x_1927, x_1927) * vec2<f32>(x_1929, x_1929)) + vec2<f32>(-1.0f, 1.0f));
  let x_1934 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1933.x, x_1933.y, x_1934.z, x_1934.w);
  let x_1937 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1937);
  let x_1940 : vec4<f32> = u_xlat0;
  let x_1943 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1940.x, x_1940.y, x_1940.z)) + vec3<f32>(x_1943, x_1943, x_1943));
  let x_1946 : f32 = u_xlat76;
  let x_1948 : vec3<f32> = u_xlat32;
  let x_1950 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1946, x_1946, x_1946) * x_1948) + vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : vec4<f32> = u_xlat1;
  let x_1955 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1953.x, x_1953.x, x_1953.x) * x_1955);
  let x_1957 : vec4<f32> = u_xlat6;
  let x_1959 : vec3<f32> = u_xlat32;
  let x_1960 : vec3<f32> = (vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * x_1959);
  let x_1961 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  let x_1963 : vec3<f32> = u_xlat4;
  let x_1964 : vec4<f32> = u_xlat5;
  let x_1967 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_1963 * vec3<f32>(x_1964.x, x_1964.y, x_1964.z)) + vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1971 : f32 = u_xlat26.x;
  let x_1973 : f32 = x_353.unity_LightData.z;
  u_xlat75 = (x_1971 * x_1973);
  let x_1975 : vec4<f32> = u_xlat2;
  let x_1978 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1975.x, x_1975.y, x_1975.z), vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1983 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1983, 0.0f, 1.0f);
  let x_1986 : f32 = u_xlat75;
  let x_1988 : f32 = u_xlat1.x;
  u_xlat75 = (x_1986 * x_1988);
  let x_1990 : f32 = u_xlat75;
  let x_1993 : vec4<f32> = x_29.x_MainLightColor;
  let x_1995 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1995.z);
  let x_1998 : vec3<f32> = u_xlat3;
  let x_2000 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2002 : vec3<f32> = (x_1998 + vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
  let x_2005 : vec4<f32> = u_xlat6;
  let x_2007 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_2005.x, x_2005.y, x_2005.z), vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : f32 = u_xlat75;
  u_xlat75 = max(x_2010, 1.17549435e-38f);
  let x_2013 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2013);
  let x_2015 : f32 = u_xlat75;
  let x_2017 : vec4<f32> = u_xlat6;
  let x_2019 : vec3<f32> = (vec3<f32>(x_2015, x_2015, x_2015) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
  let x_2022 : vec4<f32> = u_xlat2;
  let x_2024 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_2022.x, x_2022.y, x_2022.z), vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
  let x_2027 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2027, 0.0f, 1.0f);
  let x_2030 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2032 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_2030.x, x_2030.y, x_2030.z), vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2035 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2035, 0.0f, 1.0f);
  let x_2037 : f32 = u_xlat75;
  let x_2038 : f32 = u_xlat75;
  u_xlat75 = (x_2037 * x_2038);
  let x_2040 : f32 = u_xlat75;
  let x_2042 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2040 * x_2042) + 1.00001001358032226562f);
  let x_2046 : f32 = u_xlat77;
  let x_2047 : f32 = u_xlat77;
  u_xlat77 = (x_2046 * x_2047);
  let x_2049 : f32 = u_xlat75;
  let x_2050 : f32 = u_xlat75;
  u_xlat75 = (x_2049 * x_2050);
  let x_2052 : f32 = u_xlat77;
  u_xlat77 = max(x_2052, 0.10000000149011611938f);
  let x_2055 : f32 = u_xlat75;
  let x_2056 : f32 = u_xlat77;
  u_xlat75 = (x_2055 * x_2056);
  let x_2058 : f32 = u_xlat78;
  let x_2059 : f32 = u_xlat75;
  u_xlat75 = (x_2058 * x_2059);
  let x_2061 : f32 = u_xlat79;
  let x_2062 : f32 = u_xlat75;
  u_xlat75 = (x_2061 / x_2062);
  let x_2064 : vec4<f32> = u_xlat0;
  let x_2066 : f32 = u_xlat75;
  let x_2069 : vec4<f32> = u_xlat5;
  let x_2071 : vec3<f32> = ((vec3<f32>(x_2064.x, x_2064.y, x_2064.z) * vec3<f32>(x_2066, x_2066, x_2066)) + vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
  let x_2072 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2075 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2077 : f32 = x_353.unity_LightData.y;
  u_xlat75 = min(x_2075, x_2077);
  let x_2080 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2080));
  let x_2083 : f32 = u_xlat51;
  let x_2086 : f32 = x_177.x_AdditionalShadowFadeParams.x;
  let x_2089 : f32 = x_177.x_AdditionalShadowFadeParams.y;
  u_xlat51 = ((x_2083 * x_2086) + x_2089);
  let x_2091 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2091, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2103 : u32 = u_xlatu_loop_1;
    let x_2104 : u32 = u_xlatu75;
    if ((x_2103 < x_2104)) {
    } else {
      break;
    }
    let x_2107 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2107 >> 2u);
    let x_2110 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2110 & 3u));
    let x_2113 : u32 = u_xlatu80;
    let x_2116 : vec4<f32> = x_353.unity_LightIndices[bitcast<i32>(x_2113)];
    let x_2126 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2131 : vec4<u32> = indexable[x_2126];
    u_xlat80 = dot(x_2116, bitcast<vec4<f32>>(x_2131));
    let x_2135 : f32 = u_xlat80;
    u_xlati80 = i32(x_2135);
    let x_2137 : vec3<f32> = vs_TEXCOORD7;
    let x_2148 : i32 = u_xlati80;
    let x_2150 : vec4<f32> = x_2147.x_AdditionalLightsPosition[x_2148];
    let x_2153 : i32 = u_xlati80;
    let x_2155 : vec4<f32> = x_2147.x_AdditionalLightsPosition[x_2153];
    let x_2157 : vec3<f32> = ((-(x_2137) * vec3<f32>(x_2150.w, x_2150.w, x_2150.w)) + vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
    let x_2160 : vec4<f32> = u_xlat8;
    let x_2162 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2160.x, x_2160.y, x_2160.z), vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : f32 = u_xlat81;
    u_xlat81 = max(x_2165, 0.00006103515625f);
    let x_2168 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2168);
    let x_2170 : f32 = u_xlat83;
    let x_2172 : vec4<f32> = u_xlat8;
    let x_2174 : vec3<f32> = (vec3<f32>(x_2170, x_2170, x_2170) * vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
    let x_2175 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
    let x_2178 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2178);
    let x_2180 : f32 = u_xlat81;
    let x_2181 : i32 = u_xlati80;
    let x_2183 : f32 = x_2147.x_AdditionalLightsAttenuation[x_2181].x;
    u_xlat81 = (x_2180 * x_2183);
    let x_2185 : f32 = u_xlat81;
    let x_2187 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2185) * x_2187) + 1.0f);
    let x_2190 : f32 = u_xlat81;
    u_xlat81 = max(x_2190, 0.0f);
    let x_2192 : f32 = u_xlat81;
    let x_2193 : f32 = u_xlat81;
    u_xlat81 = (x_2192 * x_2193);
    let x_2195 : f32 = u_xlat81;
    let x_2196 : f32 = u_xlat84;
    u_xlat81 = (x_2195 * x_2196);
    let x_2198 : i32 = u_xlati80;
    let x_2200 : vec4<f32> = x_2147.x_AdditionalLightsSpotDir[x_2198];
    let x_2202 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2200.x, x_2200.y, x_2200.z), vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
    let x_2205 : f32 = u_xlat84;
    let x_2206 : i32 = u_xlati80;
    let x_2208 : f32 = x_2147.x_AdditionalLightsAttenuation[x_2206].z;
    let x_2210 : i32 = u_xlati80;
    let x_2212 : f32 = x_2147.x_AdditionalLightsAttenuation[x_2210].w;
    u_xlat84 = ((x_2205 * x_2208) + x_2212);
    let x_2214 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2214, 0.0f, 1.0f);
    let x_2216 : f32 = u_xlat84;
    let x_2217 : f32 = u_xlat84;
    u_xlat84 = (x_2216 * x_2217);
    let x_2219 : f32 = u_xlat81;
    let x_2220 : f32 = u_xlat84;
    u_xlat81 = (x_2219 * x_2220);
    let x_2224 : i32 = u_xlati80;
    let x_2226 : f32 = x_177.x_AdditionalShadowParams[x_2224].w;
    u_xlati84 = i32(x_2226);
    let x_2231 : i32 = u_xlati84;
    u_xlatb10.x = (x_2231 >= 0i);
    let x_2235 : bool = u_xlatb10.x;
    if (x_2235) {
      let x_2239 : i32 = u_xlati80;
      let x_2241 : f32 = x_177.x_AdditionalShadowParams[x_2239].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2241, x_2241, x_2241, x_2241))));
      let x_2247 : bool = u_xlatb10.x;
      if (x_2247) {
        let x_2250 : vec4<f32> = u_xlat9;
        let x_2253 : vec4<f32> = u_xlat9;
        let x_2256 : vec4<bool> = (abs(vec4<f32>(x_2250.z, x_2250.z, x_2250.y, x_2250.z)) >= abs(vec4<f32>(x_2253.x, x_2253.y, x_2253.x, x_2253.x)));
        u_xlatb10 = vec3<bool>(x_2256.x, x_2256.y, x_2256.z);
        let x_2259 : bool = u_xlatb10.y;
        let x_2261 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2259 & x_2261);
        let x_2265 : vec4<f32> = u_xlat9;
        let x_2268 : vec4<bool> = (-(vec4<f32>(x_2265.z, x_2265.y, x_2265.x, x_2265.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2268.x, x_2268.y, x_2268.z);
        let x_2272 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2272);
        let x_2277 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2277);
        let x_2281 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2281);
        let x_2286 : bool = u_xlatb10.z;
        if (x_2286) {
          let x_2291 : f32 = u_xlat35.z;
          x_2287 = x_2291;
        } else {
          let x_2294 : f32 = u_xlat11.x;
          x_2287 = x_2294;
        }
        let x_2295 : f32 = x_2287;
        u_xlat60 = x_2295;
        let x_2297 : bool = u_xlatb10.x;
        if (x_2297) {
          let x_2302 : f32 = u_xlat35.x;
          x_2298 = x_2302;
        } else {
          let x_2304 : f32 = u_xlat60;
          x_2298 = x_2304;
        }
        let x_2305 : f32 = x_2298;
        u_xlat10.x = x_2305;
        let x_2307 : i32 = u_xlati80;
        let x_2309 : f32 = x_177.x_AdditionalShadowParams[x_2307].w;
        u_xlat35.x = trunc(x_2309);
        let x_2313 : f32 = u_xlat10.x;
        let x_2315 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2313 + x_2315);
        let x_2319 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2319);
      }
      let x_2321 : i32 = u_xlati84;
      u_xlati84 = (x_2321 << bitcast<u32>(2i));
      let x_2323 : vec3<f32> = vs_TEXCOORD7;
      let x_2326 : i32 = u_xlati84;
      let x_2329 : i32 = u_xlati84;
      let x_2333 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_2326 + 1i) / 4i)][((x_2329 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2323.y, x_2323.y, x_2323.y, x_2323.y) * x_2333);
      let x_2335 : i32 = u_xlati84;
      let x_2337 : i32 = u_xlati84;
      let x_2340 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[(x_2335 / 4i)][(x_2337 % 4i)];
      let x_2341 : vec3<f32> = vs_TEXCOORD7;
      let x_2344 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2340 * vec4<f32>(x_2341.x, x_2341.x, x_2341.x, x_2341.x)) + x_2344);
      let x_2346 : i32 = u_xlati84;
      let x_2349 : i32 = u_xlati84;
      let x_2353 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_2346 + 2i) / 4i)][((x_2349 + 2i) % 4i)];
      let x_2354 : vec3<f32> = vs_TEXCOORD7;
      let x_2357 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2353 * vec4<f32>(x_2354.z, x_2354.z, x_2354.z, x_2354.z)) + x_2357);
      let x_2359 : vec4<f32> = u_xlat10;
      let x_2360 : i32 = u_xlati84;
      let x_2363 : i32 = u_xlati84;
      let x_2367 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_2360 + 3i) / 4i)][((x_2363 + 3i) % 4i)];
      u_xlat10 = (x_2359 + x_2367);
      let x_2369 : vec4<f32> = u_xlat10;
      let x_2371 : vec4<f32> = u_xlat10;
      let x_2373 : vec3<f32> = (vec3<f32>(x_2369.x, x_2369.y, x_2369.z) / vec3<f32>(x_2371.w, x_2371.w, x_2371.w));
      let x_2374 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
      let x_2377 : i32 = u_xlati80;
      let x_2379 : f32 = x_177.x_AdditionalShadowParams[x_2377].y;
      u_xlatb84 = (0.0f < x_2379);
      let x_2381 : bool = u_xlatb84;
      if (x_2381) {
        let x_2384 : i32 = u_xlati80;
        let x_2386 : f32 = x_177.x_AdditionalShadowParams[x_2384].y;
        u_xlatb84 = (1.0f == x_2386);
        let x_2388 : bool = u_xlatb84;
        if (x_2388) {
          let x_2391 : vec4<f32> = u_xlat10;
          let x_2395 : vec4<f32> = x_177.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2391.x, x_2391.y, x_2391.x, x_2391.y) + x_2395);
          let x_2398 : vec4<f32> = u_xlat11;
          let x_2399 : vec2<f32> = vec2<f32>(x_2398.x, x_2398.y);
          let x_2401 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2399.x, x_2399.y, x_2401);
          let x_2409 : vec3<f32> = txVec30;
          let x_2411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2409.xy, x_2409.z);
          u_xlat12.x = x_2411;
          let x_2414 : vec4<f32> = u_xlat11;
          let x_2415 : vec2<f32> = vec2<f32>(x_2414.z, x_2414.w);
          let x_2417 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2415.x, x_2415.y, x_2417);
          let x_2424 : vec3<f32> = txVec31;
          let x_2426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2424.xy, x_2424.z);
          u_xlat12.y = x_2426;
          let x_2428 : vec4<f32> = u_xlat10;
          let x_2432 : vec4<f32> = x_177.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2428.x, x_2428.y, x_2428.x, x_2428.y) + x_2432);
          let x_2435 : vec4<f32> = u_xlat11;
          let x_2436 : vec2<f32> = vec2<f32>(x_2435.x, x_2435.y);
          let x_2438 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2436.x, x_2436.y, x_2438);
          let x_2445 : vec3<f32> = txVec32;
          let x_2447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2445.xy, x_2445.z);
          u_xlat12.z = x_2447;
          let x_2450 : vec4<f32> = u_xlat11;
          let x_2451 : vec2<f32> = vec2<f32>(x_2450.z, x_2450.w);
          let x_2453 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2451.x, x_2451.y, x_2453);
          let x_2460 : vec3<f32> = txVec33;
          let x_2462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2460.xy, x_2460.z);
          u_xlat12.w = x_2462;
          let x_2464 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2464, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2468 : i32 = u_xlati80;
          let x_2470 : f32 = x_177.x_AdditionalShadowParams[x_2468].y;
          u_xlatb85 = (2.0f == x_2470);
          let x_2472 : bool = u_xlatb85;
          if (x_2472) {
            let x_2475 : vec4<f32> = u_xlat10;
            let x_2479 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2482 : vec2<f32> = ((vec2<f32>(x_2475.x, x_2475.y) * vec2<f32>(x_2479.z, x_2479.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2483 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec4<f32> = u_xlat11;
            let x_2487 : vec2<f32> = floor(vec2<f32>(x_2485.x, x_2485.y));
            let x_2488 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2491 : vec4<f32> = u_xlat10;
            let x_2494 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2497 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2491.x, x_2491.y) * vec2<f32>(x_2494.z, x_2494.w)) + -(vec2<f32>(x_2497.x, x_2497.y)));
            let x_2501 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2501.x, x_2501.x, x_2501.y, x_2501.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2504 : vec4<f32> = u_xlat12;
            let x_2506 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2504.x, x_2504.x, x_2504.z, x_2504.z) * vec4<f32>(x_2506.x, x_2506.x, x_2506.z, x_2506.z));
            let x_2509 : vec4<f32> = u_xlat13;
            let x_2511 : vec2<f32> = (vec2<f32>(x_2509.y, x_2509.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2512 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2511.x, x_2512.y, x_2511.y, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat13;
            let x_2517 : vec2<f32> = u_xlat61;
            let x_2519 : vec2<f32> = ((vec2<f32>(x_2514.x, x_2514.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2517));
            let x_2520 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
            let x_2523 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2523) + vec2<f32>(1.0f, 1.0f));
            let x_2526 : vec2<f32> = u_xlat61;
            let x_2527 : vec2<f32> = min(x_2526, vec2<f32>(0.0f, 0.0f));
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
            let x_2530 : vec4<f32> = u_xlat14;
            let x_2533 : vec4<f32> = u_xlat14;
            let x_2536 : vec2<f32> = u_xlat63;
            let x_2537 : vec2<f32> = ((-(vec2<f32>(x_2530.x, x_2530.y)) * vec2<f32>(x_2533.x, x_2533.y)) + x_2536);
            let x_2538 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
            let x_2540 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2540, vec2<f32>(0.0f, 0.0f));
            let x_2542 : vec2<f32> = u_xlat61;
            let x_2544 : vec2<f32> = u_xlat61;
            let x_2546 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2542) * x_2544) + vec2<f32>(x_2546.y, x_2546.w));
            let x_2549 : vec4<f32> = u_xlat14;
            let x_2551 : vec2<f32> = (vec2<f32>(x_2549.x, x_2549.y) + vec2<f32>(1.0f, 1.0f));
            let x_2552 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2551.x, x_2551.y, x_2552.z, x_2552.w);
            let x_2554 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2554 + vec2<f32>(1.0f, 1.0f));
            let x_2556 : vec4<f32> = u_xlat13;
            let x_2558 : vec2<f32> = (vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2559 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2558.x, x_2558.y, x_2559.z, x_2559.w);
            let x_2561 : vec2<f32> = u_xlat63;
            let x_2562 : vec2<f32> = (x_2561 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2563 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat14;
            let x_2567 : vec2<f32> = (vec2<f32>(x_2565.x, x_2565.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2568 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
            let x_2570 : vec2<f32> = u_xlat61;
            let x_2571 : vec2<f32> = (x_2570 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2572 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2571.x, x_2571.y, x_2572.z, x_2572.w);
            let x_2574 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2574.y, x_2574.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2578 : f32 = u_xlat14.x;
            u_xlat15.z = x_2578;
            let x_2581 : f32 = u_xlat61.x;
            u_xlat15.w = x_2581;
            let x_2584 : f32 = u_xlat16.x;
            u_xlat13.z = x_2584;
            let x_2587 : f32 = u_xlat12.x;
            u_xlat13.w = x_2587;
            let x_2589 : vec4<f32> = u_xlat13;
            let x_2591 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2589.z, x_2589.w, x_2589.x, x_2589.z) + vec4<f32>(x_2591.z, x_2591.w, x_2591.x, x_2591.z));
            let x_2595 : f32 = u_xlat15.y;
            u_xlat14.z = x_2595;
            let x_2598 : f32 = u_xlat61.y;
            u_xlat14.w = x_2598;
            let x_2601 : f32 = u_xlat13.y;
            u_xlat16.z = x_2601;
            let x_2604 : f32 = u_xlat12.z;
            u_xlat16.w = x_2604;
            let x_2606 : vec4<f32> = u_xlat14;
            let x_2608 : vec4<f32> = u_xlat16;
            let x_2610 : vec3<f32> = (vec3<f32>(x_2606.z, x_2606.y, x_2606.w) + vec3<f32>(x_2608.z, x_2608.y, x_2608.w));
            let x_2611 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
            let x_2613 : vec4<f32> = u_xlat13;
            let x_2615 : vec4<f32> = u_xlat17;
            let x_2617 : vec3<f32> = (vec3<f32>(x_2613.x, x_2613.z, x_2613.w) / vec3<f32>(x_2615.z, x_2615.w, x_2615.y));
            let x_2618 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
            let x_2620 : vec4<f32> = u_xlat13;
            let x_2622 : vec3<f32> = (vec3<f32>(x_2620.x, x_2620.y, x_2620.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2623 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
            let x_2625 : vec4<f32> = u_xlat16;
            let x_2627 : vec4<f32> = u_xlat12;
            let x_2629 : vec3<f32> = (vec3<f32>(x_2625.z, x_2625.y, x_2625.w) / vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
            let x_2630 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
            let x_2632 : vec4<f32> = u_xlat14;
            let x_2634 : vec3<f32> = (vec3<f32>(x_2632.x, x_2632.y, x_2632.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2635 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
            let x_2637 : vec4<f32> = u_xlat13;
            let x_2640 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2642 : vec3<f32> = (vec3<f32>(x_2637.y, x_2637.x, x_2637.z) * vec3<f32>(x_2640.x, x_2640.x, x_2640.x));
            let x_2643 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
            let x_2645 : vec4<f32> = u_xlat14;
            let x_2648 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2650 : vec3<f32> = (vec3<f32>(x_2645.x, x_2645.y, x_2645.z) * vec3<f32>(x_2648.y, x_2648.y, x_2648.y));
            let x_2651 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
            let x_2654 : f32 = u_xlat14.x;
            u_xlat13.w = x_2654;
            let x_2656 : vec4<f32> = u_xlat11;
            let x_2659 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2662 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2656.x, x_2656.y, x_2656.x, x_2656.y) * vec4<f32>(x_2659.x, x_2659.y, x_2659.x, x_2659.y)) + vec4<f32>(x_2662.y, x_2662.w, x_2662.x, x_2662.w));
            let x_2665 : vec4<f32> = u_xlat11;
            let x_2668 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2671 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2665.x, x_2665.y) * vec2<f32>(x_2668.x, x_2668.y)) + vec2<f32>(x_2671.z, x_2671.w));
            let x_2675 : f32 = u_xlat13.y;
            u_xlat14.w = x_2675;
            let x_2677 : vec4<f32> = u_xlat14;
            let x_2678 : vec2<f32> = vec2<f32>(x_2677.y, x_2677.z);
            let x_2679 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2679.x, x_2678.x, x_2679.z, x_2678.y);
            let x_2681 : vec4<f32> = u_xlat11;
            let x_2684 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2687 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2681.x, x_2681.y, x_2681.x, x_2681.y) * vec4<f32>(x_2684.x, x_2684.y, x_2684.x, x_2684.y)) + vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2687.y));
            let x_2690 : vec4<f32> = u_xlat11;
            let x_2693 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2696 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2690.x, x_2690.y, x_2690.x, x_2690.y) * vec4<f32>(x_2693.x, x_2693.y, x_2693.x, x_2693.y)) + vec4<f32>(x_2696.w, x_2696.y, x_2696.w, x_2696.z));
            let x_2699 : vec4<f32> = u_xlat11;
            let x_2702 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2705 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2699.x, x_2699.y, x_2699.x, x_2699.y) * vec4<f32>(x_2702.x, x_2702.y, x_2702.x, x_2702.y)) + vec4<f32>(x_2705.x, x_2705.w, x_2705.z, x_2705.w));
            let x_2708 : vec4<f32> = u_xlat12;
            let x_2710 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2708.x, x_2708.x, x_2708.x, x_2708.y) * vec4<f32>(x_2710.z, x_2710.w, x_2710.y, x_2710.z));
            let x_2713 : vec4<f32> = u_xlat12;
            let x_2715 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2713.y, x_2713.y, x_2713.z, x_2713.z) * x_2715);
            let x_2719 : f32 = u_xlat12.z;
            let x_2721 : f32 = u_xlat17.y;
            u_xlat85 = (x_2719 * x_2721);
            let x_2724 : vec4<f32> = u_xlat15;
            let x_2725 : vec2<f32> = vec2<f32>(x_2724.x, x_2724.y);
            let x_2727 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2725.x, x_2725.y, x_2727);
            let x_2734 : vec3<f32> = txVec34;
            let x_2736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2734.xy, x_2734.z);
            u_xlat11.x = x_2736;
            let x_2739 : vec4<f32> = u_xlat15;
            let x_2740 : vec2<f32> = vec2<f32>(x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
            let x_2750 : vec3<f32> = txVec35;
            let x_2752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
            u_xlat36 = x_2752;
            let x_2753 : f32 = u_xlat36;
            let x_2755 : f32 = u_xlat18.y;
            u_xlat36 = (x_2753 * x_2755);
            let x_2758 : f32 = u_xlat18.x;
            let x_2760 : f32 = u_xlat11.x;
            let x_2762 : f32 = u_xlat36;
            u_xlat11.x = ((x_2758 * x_2760) + x_2762);
            let x_2766 : vec2<f32> = u_xlat61;
            let x_2768 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2766.x, x_2766.y, x_2768);
            let x_2775 : vec3<f32> = txVec36;
            let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
            u_xlat36 = x_2777;
            let x_2779 : f32 = u_xlat18.z;
            let x_2780 : f32 = u_xlat36;
            let x_2783 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2779 * x_2780) + x_2783);
            let x_2787 : vec4<f32> = u_xlat14;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.x, x_2787.y);
            let x_2790 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec37;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat36 = x_2799;
            let x_2801 : f32 = u_xlat18.w;
            let x_2802 : f32 = u_xlat36;
            let x_2805 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2801 * x_2802) + x_2805);
            let x_2809 : vec4<f32> = u_xlat16;
            let x_2810 : vec2<f32> = vec2<f32>(x_2809.x, x_2809.y);
            let x_2812 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2810.x, x_2810.y, x_2812);
            let x_2819 : vec3<f32> = txVec38;
            let x_2821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2819.xy, x_2819.z);
            u_xlat36 = x_2821;
            let x_2823 : f32 = u_xlat19.x;
            let x_2824 : f32 = u_xlat36;
            let x_2827 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2823 * x_2824) + x_2827);
            let x_2831 : vec4<f32> = u_xlat16;
            let x_2832 : vec2<f32> = vec2<f32>(x_2831.z, x_2831.w);
            let x_2834 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2832.x, x_2832.y, x_2834);
            let x_2841 : vec3<f32> = txVec39;
            let x_2843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2841.xy, x_2841.z);
            u_xlat36 = x_2843;
            let x_2845 : f32 = u_xlat19.y;
            let x_2846 : f32 = u_xlat36;
            let x_2849 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2845 * x_2846) + x_2849);
            let x_2853 : vec4<f32> = u_xlat14;
            let x_2854 : vec2<f32> = vec2<f32>(x_2853.z, x_2853.w);
            let x_2856 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2854.x, x_2854.y, x_2856);
            let x_2863 : vec3<f32> = txVec40;
            let x_2865 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2863.xy, x_2863.z);
            u_xlat36 = x_2865;
            let x_2867 : f32 = u_xlat19.z;
            let x_2868 : f32 = u_xlat36;
            let x_2871 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2867 * x_2868) + x_2871);
            let x_2875 : vec4<f32> = u_xlat13;
            let x_2876 : vec2<f32> = vec2<f32>(x_2875.x, x_2875.y);
            let x_2878 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
            let x_2885 : vec3<f32> = txVec41;
            let x_2887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2885.xy, x_2885.z);
            u_xlat36 = x_2887;
            let x_2889 : f32 = u_xlat19.w;
            let x_2890 : f32 = u_xlat36;
            let x_2893 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2889 * x_2890) + x_2893);
            let x_2897 : vec4<f32> = u_xlat13;
            let x_2898 : vec2<f32> = vec2<f32>(x_2897.z, x_2897.w);
            let x_2900 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
            let x_2907 : vec3<f32> = txVec42;
            let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
            u_xlat36 = x_2909;
            let x_2910 : f32 = u_xlat85;
            let x_2911 : f32 = u_xlat36;
            let x_2914 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2910 * x_2911) + x_2914);
          } else {
            let x_2917 : vec4<f32> = u_xlat10;
            let x_2920 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2917.x, x_2917.y) * vec2<f32>(x_2920.z, x_2920.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2924 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2926 : vec4<f32> = u_xlat11;
            let x_2928 : vec2<f32> = floor(vec2<f32>(x_2926.x, x_2926.y));
            let x_2929 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
            let x_2931 : vec4<f32> = u_xlat10;
            let x_2934 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2937 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2931.x, x_2931.y) * vec2<f32>(x_2934.z, x_2934.w)) + -(vec2<f32>(x_2937.x, x_2937.y)));
            let x_2941 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2941.x, x_2941.x, x_2941.y, x_2941.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2944 : vec4<f32> = u_xlat12;
            let x_2946 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2944.x, x_2944.x, x_2944.z, x_2944.z) * vec4<f32>(x_2946.x, x_2946.x, x_2946.z, x_2946.z));
            let x_2949 : vec4<f32> = u_xlat13;
            let x_2951 : vec2<f32> = (vec2<f32>(x_2949.y, x_2949.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2952.x, x_2951.x, x_2952.z, x_2951.y);
            let x_2954 : vec4<f32> = u_xlat13;
            let x_2957 : vec2<f32> = u_xlat61;
            let x_2959 : vec2<f32> = ((vec2<f32>(x_2954.x, x_2954.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2957));
            let x_2960 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2959.x, x_2960.y, x_2959.y, x_2960.w);
            let x_2962 : vec2<f32> = u_xlat61;
            let x_2964 : vec2<f32> = (-(x_2962) + vec2<f32>(1.0f, 1.0f));
            let x_2965 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2964.x, x_2964.y, x_2965.z, x_2965.w);
            let x_2967 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2967, vec2<f32>(0.0f, 0.0f));
            let x_2969 : vec2<f32> = u_xlat63;
            let x_2971 : vec2<f32> = u_xlat63;
            let x_2973 : vec4<f32> = u_xlat13;
            let x_2975 : vec2<f32> = ((-(x_2969) * x_2971) + vec2<f32>(x_2973.x, x_2973.y));
            let x_2976 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2978, vec2<f32>(0.0f, 0.0f));
            let x_2981 : vec2<f32> = u_xlat63;
            let x_2983 : vec2<f32> = u_xlat63;
            let x_2985 : vec4<f32> = u_xlat12;
            let x_2987 : vec2<f32> = ((-(x_2981) * x_2983) + vec2<f32>(x_2985.y, x_2985.w));
            let x_2988 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2987.x, x_2988.y, x_2987.y);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2992 : vec2<f32> = (vec2<f32>(x_2990.x, x_2990.y) + vec2<f32>(2.0f, 2.0f));
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2992.x, x_2992.y, x_2993.z, x_2993.w);
            let x_2995 : vec3<f32> = u_xlat37;
            let x_2997 : vec2<f32> = (vec2<f32>(x_2995.x, x_2995.z) + vec2<f32>(2.0f, 2.0f));
            let x_2998 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2998.x, x_2997.x, x_2998.z, x_2997.y);
            let x_3001 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3001 * 0.08163200318813323975f);
            let x_3004 : vec4<f32> = u_xlat12;
            let x_3006 : vec3<f32> = (vec3<f32>(x_3004.z, x_3004.x, x_3004.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3007 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3006.x, x_3006.y, x_3006.z, x_3007.w);
            let x_3009 : vec4<f32> = u_xlat13;
            let x_3011 : vec2<f32> = (vec2<f32>(x_3009.x, x_3009.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3012 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3015 : f32 = u_xlat16.y;
            u_xlat15.x = x_3015;
            let x_3017 : vec2<f32> = u_xlat61;
            let x_3020 : vec2<f32> = ((vec2<f32>(x_3017.x, x_3017.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3021.x, x_3020.x, x_3021.z, x_3020.y);
            let x_3023 : vec2<f32> = u_xlat61;
            let x_3026 : vec2<f32> = ((vec2<f32>(x_3023.x, x_3023.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3027 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3026.x, x_3027.y, x_3026.y, x_3027.w);
            let x_3030 : f32 = u_xlat12.x;
            u_xlat13.y = x_3030;
            let x_3033 : f32 = u_xlat14.y;
            u_xlat13.w = x_3033;
            let x_3035 : vec4<f32> = u_xlat13;
            let x_3036 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3035 + x_3036);
            let x_3038 : vec2<f32> = u_xlat61;
            let x_3041 : vec2<f32> = ((vec2<f32>(x_3038.y, x_3038.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3042 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3042.x, x_3041.x, x_3042.z, x_3041.y);
            let x_3044 : vec2<f32> = u_xlat61;
            let x_3047 : vec2<f32> = ((vec2<f32>(x_3044.y, x_3044.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3048 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3047.x, x_3048.y, x_3047.y, x_3048.w);
            let x_3051 : f32 = u_xlat12.y;
            u_xlat14.y = x_3051;
            let x_3053 : vec4<f32> = u_xlat14;
            let x_3054 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3053 + x_3054);
            let x_3056 : vec4<f32> = u_xlat13;
            let x_3057 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3056 / x_3057);
            let x_3059 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3059 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3061 / x_3062);
            let x_3064 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3064 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3066 : vec4<f32> = u_xlat13;
            let x_3069 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3066.w, x_3066.x, x_3066.y, x_3066.z) * vec4<f32>(x_3069.x, x_3069.x, x_3069.x, x_3069.x));
            let x_3072 : vec4<f32> = u_xlat14;
            let x_3075 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3072.x, x_3072.w, x_3072.y, x_3072.z) * vec4<f32>(x_3075.y, x_3075.y, x_3075.y, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat13;
            let x_3079 : vec3<f32> = vec3<f32>(x_3078.y, x_3078.z, x_3078.w);
            let x_3080 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3079.x, x_3080.y, x_3079.y, x_3079.z);
            let x_3083 : f32 = u_xlat14.x;
            u_xlat16.y = x_3083;
            let x_3085 : vec4<f32> = u_xlat11;
            let x_3088 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y) * vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y)) + vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3091.y));
            let x_3094 : vec4<f32> = u_xlat11;
            let x_3097 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(x_3097.x, x_3097.y)) + vec2<f32>(x_3100.w, x_3100.y));
            let x_3104 : f32 = u_xlat16.y;
            u_xlat13.y = x_3104;
            let x_3107 : f32 = u_xlat14.z;
            u_xlat16.y = x_3107;
            let x_3109 : vec4<f32> = u_xlat11;
            let x_3112 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y) * vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y)) + vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3115.y));
            let x_3118 : vec4<f32> = u_xlat11;
            let x_3121 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3124 : vec4<f32> = u_xlat16;
            let x_3126 : vec2<f32> = ((vec2<f32>(x_3118.x, x_3118.y) * vec2<f32>(x_3121.x, x_3121.y)) + vec2<f32>(x_3124.w, x_3124.y));
            let x_3127 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3126.x, x_3126.y, x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat16.y;
            u_xlat13.z = x_3130;
            let x_3133 : vec4<f32> = u_xlat11;
            let x_3136 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3139 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y) * vec4<f32>(x_3136.x, x_3136.y, x_3136.x, x_3136.y)) + vec4<f32>(x_3139.x, x_3139.y, x_3139.x, x_3139.z));
            let x_3143 : f32 = u_xlat14.w;
            u_xlat16.y = x_3143;
            let x_3146 : vec4<f32> = u_xlat11;
            let x_3149 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3152 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3146.x, x_3146.y, x_3146.x, x_3146.y) * vec4<f32>(x_3149.x, x_3149.y, x_3149.x, x_3149.y)) + vec4<f32>(x_3152.x, x_3152.y, x_3152.z, x_3152.y));
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3156.x, x_3156.y) * vec2<f32>(x_3159.x, x_3159.y)) + vec2<f32>(x_3162.w, x_3162.y));
            let x_3166 : f32 = u_xlat16.y;
            u_xlat13.w = x_3166;
            let x_3169 : vec4<f32> = u_xlat11;
            let x_3172 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3175 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3169.x, x_3169.y) * vec2<f32>(x_3172.x, x_3172.y)) + vec2<f32>(x_3175.x, x_3175.w));
            let x_3178 : vec4<f32> = u_xlat16;
            let x_3179 : vec3<f32> = vec3<f32>(x_3178.x, x_3178.z, x_3178.w);
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3179.x, x_3180.y, x_3179.y, x_3179.z);
            let x_3182 : vec4<f32> = u_xlat11;
            let x_3185 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3188 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3182.x, x_3182.y, x_3182.x, x_3182.y) * vec4<f32>(x_3185.x, x_3185.y, x_3185.x, x_3185.y)) + vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3188.y));
            let x_3191 : vec4<f32> = u_xlat11;
            let x_3194 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3197 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3194.x, x_3194.y)) + vec2<f32>(x_3197.w, x_3197.y));
            let x_3201 : f32 = u_xlat13.x;
            u_xlat14.x = x_3201;
            let x_3203 : vec4<f32> = u_xlat11;
            let x_3206 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3209 : vec4<f32> = u_xlat14;
            let x_3211 : vec2<f32> = ((vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(x_3206.x, x_3206.y)) + vec2<f32>(x_3209.x, x_3209.y));
            let x_3212 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3211.x, x_3211.y, x_3212.z, x_3212.w);
            let x_3215 : vec4<f32> = u_xlat12;
            let x_3217 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3215.x, x_3215.x, x_3215.x, x_3215.x) * x_3217);
            let x_3220 : vec4<f32> = u_xlat12;
            let x_3222 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3220.y, x_3220.y, x_3220.y, x_3220.y) * x_3222);
            let x_3225 : vec4<f32> = u_xlat12;
            let x_3227 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3225.z, x_3225.z, x_3225.z, x_3225.z) * x_3227);
            let x_3229 : vec4<f32> = u_xlat12;
            let x_3231 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3229.w, x_3229.w, x_3229.w, x_3229.w) * x_3231);
            let x_3234 : vec4<f32> = u_xlat17;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.x, x_3234.y);
            let x_3237 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec43;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat85 = x_3246;
            let x_3248 : vec4<f32> = u_xlat17;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.z, x_3248.w);
            let x_3251 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec44;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat13.x = x_3260;
            let x_3263 : f32 = u_xlat13.x;
            let x_3265 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3263 * x_3265);
            let x_3269 : f32 = u_xlat22.x;
            let x_3270 : f32 = u_xlat85;
            let x_3273 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3269 * x_3270) + x_3273);
            let x_3276 : vec2<f32> = u_xlat61;
            let x_3278 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec45;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat61.x = x_3287;
            let x_3290 : f32 = u_xlat22.z;
            let x_3292 : f32 = u_xlat61.x;
            let x_3294 : f32 = u_xlat85;
            u_xlat85 = ((x_3290 * x_3292) + x_3294);
            let x_3297 : vec4<f32> = u_xlat20;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.x, x_3297.y);
            let x_3300 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec46;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat61.x = x_3309;
            let x_3312 : f32 = u_xlat22.w;
            let x_3314 : f32 = u_xlat61.x;
            let x_3316 : f32 = u_xlat85;
            u_xlat85 = ((x_3312 * x_3314) + x_3316);
            let x_3319 : vec4<f32> = u_xlat18;
            let x_3320 : vec2<f32> = vec2<f32>(x_3319.x, x_3319.y);
            let x_3322 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec47;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat61.x = x_3331;
            let x_3334 : f32 = u_xlat23.x;
            let x_3336 : f32 = u_xlat61.x;
            let x_3338 : f32 = u_xlat85;
            u_xlat85 = ((x_3334 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat18;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.z, x_3341.w);
            let x_3344 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec48;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat61.x = x_3353;
            let x_3356 : f32 = u_xlat23.y;
            let x_3358 : f32 = u_xlat61.x;
            let x_3360 : f32 = u_xlat85;
            u_xlat85 = ((x_3356 * x_3358) + x_3360);
            let x_3363 : vec4<f32> = u_xlat19;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.x, x_3363.y);
            let x_3366 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec49;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat61.x = x_3375;
            let x_3378 : f32 = u_xlat23.z;
            let x_3380 : f32 = u_xlat61.x;
            let x_3382 : f32 = u_xlat85;
            u_xlat85 = ((x_3378 * x_3380) + x_3382);
            let x_3385 : vec4<f32> = u_xlat20;
            let x_3386 : vec2<f32> = vec2<f32>(x_3385.z, x_3385.w);
            let x_3388 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec50;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat61.x = x_3397;
            let x_3400 : f32 = u_xlat23.w;
            let x_3402 : f32 = u_xlat61.x;
            let x_3404 : f32 = u_xlat85;
            u_xlat85 = ((x_3400 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat21;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
            let x_3410 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec51;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat61.x = x_3419;
            let x_3422 : f32 = u_xlat24.x;
            let x_3424 : f32 = u_xlat61.x;
            let x_3426 : f32 = u_xlat85;
            u_xlat85 = ((x_3422 * x_3424) + x_3426);
            let x_3429 : vec4<f32> = u_xlat21;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.z, x_3429.w);
            let x_3432 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec52;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat61.x = x_3441;
            let x_3444 : f32 = u_xlat24.y;
            let x_3446 : f32 = u_xlat61.x;
            let x_3448 : f32 = u_xlat85;
            u_xlat85 = ((x_3444 * x_3446) + x_3448);
            let x_3451 : vec2<f32> = u_xlat38;
            let x_3453 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3460 : vec3<f32> = txVec53;
            let x_3462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3460.xy, x_3460.z);
            u_xlat61.x = x_3462;
            let x_3465 : f32 = u_xlat24.z;
            let x_3467 : f32 = u_xlat61.x;
            let x_3469 : f32 = u_xlat85;
            u_xlat85 = ((x_3465 * x_3467) + x_3469);
            let x_3472 : vec2<f32> = u_xlat69;
            let x_3474 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3472.x, x_3472.y, x_3474);
            let x_3481 : vec3<f32> = txVec54;
            let x_3483 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3481.xy, x_3481.z);
            u_xlat61.x = x_3483;
            let x_3486 : f32 = u_xlat24.w;
            let x_3488 : f32 = u_xlat61.x;
            let x_3490 : f32 = u_xlat85;
            u_xlat85 = ((x_3486 * x_3488) + x_3490);
            let x_3493 : vec4<f32> = u_xlat16;
            let x_3494 : vec2<f32> = vec2<f32>(x_3493.x, x_3493.y);
            let x_3496 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec55;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat61.x = x_3505;
            let x_3508 : f32 = u_xlat12.x;
            let x_3510 : f32 = u_xlat61.x;
            let x_3512 : f32 = u_xlat85;
            u_xlat85 = ((x_3508 * x_3510) + x_3512);
            let x_3515 : vec4<f32> = u_xlat16;
            let x_3516 : vec2<f32> = vec2<f32>(x_3515.z, x_3515.w);
            let x_3518 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec56;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat61.x = x_3527;
            let x_3530 : f32 = u_xlat12.y;
            let x_3532 : f32 = u_xlat61.x;
            let x_3534 : f32 = u_xlat85;
            u_xlat85 = ((x_3530 * x_3532) + x_3534);
            let x_3537 : vec2<f32> = u_xlat64;
            let x_3539 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3537.x, x_3537.y, x_3539);
            let x_3546 : vec3<f32> = txVec57;
            let x_3548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3546.xy, x_3546.z);
            u_xlat61.x = x_3548;
            let x_3551 : f32 = u_xlat12.z;
            let x_3553 : f32 = u_xlat61.x;
            let x_3555 : f32 = u_xlat85;
            u_xlat85 = ((x_3551 * x_3553) + x_3555);
            let x_3558 : vec4<f32> = u_xlat11;
            let x_3559 : vec2<f32> = vec2<f32>(x_3558.x, x_3558.y);
            let x_3561 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3568 : vec3<f32> = txVec58;
            let x_3570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3568.xy, x_3568.z);
            u_xlat11.x = x_3570;
            let x_3573 : f32 = u_xlat12.w;
            let x_3575 : f32 = u_xlat11.x;
            let x_3577 : f32 = u_xlat85;
            u_xlat84 = ((x_3573 * x_3575) + x_3577);
          }
        }
      } else {
        let x_3581 : vec4<f32> = u_xlat10;
        let x_3582 : vec2<f32> = vec2<f32>(x_3581.x, x_3581.y);
        let x_3584 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3582.x, x_3582.y, x_3584);
        let x_3591 : vec3<f32> = txVec59;
        let x_3593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3591.xy, x_3591.z);
        u_xlat84 = x_3593;
      }
      let x_3594 : i32 = u_xlati80;
      let x_3596 : f32 = x_177.x_AdditionalShadowParams[x_3594].x;
      u_xlat10.x = (1.0f + -(x_3596));
      let x_3600 : f32 = u_xlat84;
      let x_3601 : i32 = u_xlati80;
      let x_3603 : f32 = x_177.x_AdditionalShadowParams[x_3601].x;
      let x_3606 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3600 * x_3603) + x_3606);
      let x_3609 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3609);
      let x_3614 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3614 >= 1.0f);
      let x_3616 : bool = u_xlatb35;
      let x_3618 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3616 | x_3618);
      let x_3622 : bool = u_xlatb10.x;
      let x_3623 : f32 = u_xlat84;
      u_xlat84 = select(x_3623, 1.0f, x_3622);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3626 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3626) + 1.0f);
    let x_3630 : f32 = u_xlat51;
    let x_3632 : f32 = u_xlat10.x;
    let x_3634 : f32 = u_xlat84;
    u_xlat84 = ((x_3630 * x_3632) + x_3634);
    let x_3636 : f32 = u_xlat81;
    let x_3637 : f32 = u_xlat84;
    u_xlat81 = (x_3636 * x_3637);
    let x_3639 : vec4<f32> = u_xlat2;
    let x_3641 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3639.x, x_3639.y, x_3639.z), vec3<f32>(x_3641.x, x_3641.y, x_3641.z));
    let x_3644 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3644, 0.0f, 1.0f);
    let x_3646 : f32 = u_xlat81;
    let x_3647 : f32 = u_xlat84;
    u_xlat81 = (x_3646 * x_3647);
    let x_3649 : f32 = u_xlat81;
    let x_3651 : i32 = u_xlati80;
    let x_3653 : vec4<f32> = x_2147.x_AdditionalLightsColor[x_3651];
    let x_3655 : vec3<f32> = (vec3<f32>(x_3649, x_3649, x_3649) * vec3<f32>(x_3653.x, x_3653.y, x_3653.z));
    let x_3656 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3655.x, x_3655.y, x_3655.z, x_3656.w);
    let x_3658 : vec4<f32> = u_xlat8;
    let x_3660 : f32 = u_xlat83;
    let x_3663 : vec3<f32> = u_xlat3;
    let x_3664 : vec3<f32> = ((vec3<f32>(x_3658.x, x_3658.y, x_3658.z) * vec3<f32>(x_3660, x_3660, x_3660)) + x_3663);
    let x_3665 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3664.x, x_3664.y, x_3664.z, x_3665.w);
    let x_3667 : vec4<f32> = u_xlat8;
    let x_3669 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3667.x, x_3667.y, x_3667.z), vec3<f32>(x_3669.x, x_3669.y, x_3669.z));
    let x_3672 : f32 = u_xlat80;
    u_xlat80 = max(x_3672, 1.17549435e-38f);
    let x_3674 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3674);
    let x_3676 : f32 = u_xlat80;
    let x_3678 : vec4<f32> = u_xlat8;
    let x_3680 : vec3<f32> = (vec3<f32>(x_3676, x_3676, x_3676) * vec3<f32>(x_3678.x, x_3678.y, x_3678.z));
    let x_3681 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3680.x, x_3680.y, x_3680.z, x_3681.w);
    let x_3683 : vec4<f32> = u_xlat2;
    let x_3685 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3683.x, x_3683.y, x_3683.z), vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
    let x_3688 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3688, 0.0f, 1.0f);
    let x_3690 : vec4<f32> = u_xlat9;
    let x_3692 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3690.x, x_3690.y, x_3690.z), vec3<f32>(x_3692.x, x_3692.y, x_3692.z));
    let x_3695 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3695, 0.0f, 1.0f);
    let x_3697 : f32 = u_xlat80;
    let x_3698 : f32 = u_xlat80;
    u_xlat80 = (x_3697 * x_3698);
    let x_3700 : f32 = u_xlat80;
    let x_3702 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3700 * x_3702) + 1.00001001358032226562f);
    let x_3705 : f32 = u_xlat81;
    let x_3706 : f32 = u_xlat81;
    u_xlat81 = (x_3705 * x_3706);
    let x_3708 : f32 = u_xlat80;
    let x_3709 : f32 = u_xlat80;
    u_xlat80 = (x_3708 * x_3709);
    let x_3711 : f32 = u_xlat81;
    u_xlat81 = max(x_3711, 0.10000000149011611938f);
    let x_3713 : f32 = u_xlat80;
    let x_3714 : f32 = u_xlat81;
    u_xlat80 = (x_3713 * x_3714);
    let x_3716 : f32 = u_xlat78;
    let x_3717 : f32 = u_xlat80;
    u_xlat80 = (x_3716 * x_3717);
    let x_3719 : f32 = u_xlat79;
    let x_3720 : f32 = u_xlat80;
    u_xlat80 = (x_3719 / x_3720);
    let x_3722 : vec4<f32> = u_xlat0;
    let x_3724 : f32 = u_xlat80;
    let x_3727 : vec4<f32> = u_xlat5;
    let x_3729 : vec3<f32> = ((vec3<f32>(x_3722.x, x_3722.y, x_3722.z) * vec3<f32>(x_3724, x_3724, x_3724)) + vec3<f32>(x_3727.x, x_3727.y, x_3727.z));
    let x_3730 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3729.x, x_3729.y, x_3729.z, x_3730.w);
    let x_3732 : vec4<f32> = u_xlat8;
    let x_3734 : vec4<f32> = u_xlat10;
    let x_3737 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3732.x, x_3732.y, x_3732.z) * vec3<f32>(x_3734.x, x_3734.y, x_3734.z)) + x_3737);

    continuing {
      let x_3739 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3739 + bitcast<u32>(1i));
    }
  }
  let x_3741 : vec4<f32> = u_xlat6;
  let x_3743 : vec4<f32> = u_xlat1;
  let x_3746 : vec3<f32> = u_xlat4;
  let x_3747 : vec3<f32> = ((vec3<f32>(x_3741.x, x_3741.y, x_3741.z) * vec3<f32>(x_3743.x, x_3743.y, x_3743.w)) + x_3746);
  let x_3748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3747.x, x_3747.y, x_3747.z, x_3748.w);
  let x_3752 : vec3<f32> = u_xlat32;
  let x_3753 : vec4<f32> = u_xlat0;
  let x_3755 : vec3<f32> = (x_3752 + vec3<f32>(x_3753.x, x_3753.y, x_3753.z));
  let x_3756 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3755.x, x_3755.y, x_3755.z, x_3756.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


