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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1858 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2100 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu27 : u32;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
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
  var x_1754 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2240 : f32;
  var x_2251 : f32;
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
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat51;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : bool = u_xlatb26;
  if (x_114) {
    let x_120 : f32 = u_xlat2.x;
    x_116 = x_120;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[0i].z;
    x_116 = x_125;
  }
  let x_126 : f32 = x_116;
  u_xlat3.x = x_126;
  let x_128 : bool = u_xlatb26;
  if (x_128) {
    let x_134 : f32 = u_xlat2.y;
    x_129 = x_134;
  } else {
    let x_137 : f32 = x_29.unity_MatrixV[1i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.y = x_138;
  let x_140 : bool = u_xlatb26;
  if (x_140) {
    let x_145 : f32 = u_xlat2.z;
    x_141 = x_145;
  } else {
    let x_149 : f32 = x_29.unity_MatrixV[2i].z;
    x_141 = x_149;
  }
  let x_150 : f32 = x_141;
  u_xlat3.z = x_150;
  let x_154 : vec3<f32> = vs_TEXCOORD3;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(x_154, x_155);
  let x_159 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_159);
  let x_162 : vec3<f32> = u_xlat26;
  let x_164 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164);
  let x_166 : vec3<f32> = vs_TEXCOORD7;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (x_166 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec3<f32> = vs_TEXCOORD7;
  let x_186 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_189 : vec3<f32> = (x_184 + -(vec3<f32>(x_186.x, x_186.y, x_186.z)));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : vec3<f32> = vs_TEXCOORD7;
  let x_196 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_193 + -(vec3<f32>(x_196.x, x_196.y, x_196.z)));
  let x_201 : vec3<f32> = vs_TEXCOORD7;
  let x_203 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  let x_206 : vec3<f32> = (x_201 + -(vec3<f32>(x_203.x, x_203.y, x_203.z)));
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec4<f32> = u_xlat4;
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_221, x_222);
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_234 < x_236);
  let x_239 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_271.y, x_271.z, x_271.w));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat2;
  let x_279 : vec3<f32> = max(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_282, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_290) + 4.0f);
  let x_297 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_297);
  let x_301 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_301) << bitcast<u32>(2i));
  let x_305 : vec3<f32> = vs_TEXCOORD7;
  let x_307 : i32 = u_xlati2;
  let x_310 : i32 = u_xlati2;
  let x_314 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_307 + 1i) / 4i)][((x_310 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : i32 = u_xlati2;
  let x_319 : i32 = u_xlati2;
  let x_322 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_317 / 4i)][(x_319 % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD7;
  let x_327 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + x_327);
  let x_329 : i32 = u_xlati2;
  let x_332 : i32 = u_xlati2;
  let x_336 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec3<f32> = vs_TEXCOORD7;
  let x_341 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + x_341);
  let x_343 : vec3<f32> = u_xlat27;
  let x_344 : i32 = u_xlati2;
  let x_347 : i32 = u_xlati2;
  let x_351 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_344 + 3i) / 4i)][((x_347 + 3i) % 4i)];
  let x_353 : vec3<f32> = (x_343 + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_361 : vec4<f32> = vs_TEXCOORD0;
  let x_364 : f32 = x_29.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_361.z, x_361.w), x_364);
  u_xlat4 = x_365;
  let x_370 : vec4<f32> = vs_TEXCOORD0;
  let x_373 : f32 = x_29.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_370.z, x_370.w), x_373);
  u_xlat5 = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_376 : vec4<f32> = u_xlat4;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec3<f32> = u_xlat26;
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_384, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : f32 = u_xlat77;
  u_xlat77 = (x_388 + 0.5f);
  let x_391 : f32 = u_xlat77;
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * x_393);
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : f32 = u_xlat4.w;
  u_xlat77 = max(x_398, 0.00009999999747378752f);
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : f32 = u_xlat77;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) / vec3<f32>(x_403, x_403, x_403));
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : f32 = u_xlat1;
  u_xlat77 = ((-(x_408) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_414 : f32 = u_xlat77;
  u_xlat78 = (-(x_414) + 1.0f);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : f32 = u_xlat77;
  u_xlat5 = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419, x_419, x_419));
  let x_422 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  let x_431 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429, x_429, x_429) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_440) + 1.0f);
  let x_443 : f32 = u_xlat1;
  let x_444 : f32 = u_xlat1;
  u_xlat77 = (x_443 * x_444);
  let x_446 : f32 = u_xlat77;
  u_xlat77 = max(x_446, 0.0078125f);
  let x_450 : f32 = u_xlat77;
  let x_451 : f32 = u_xlat77;
  u_xlat79 = (x_450 * x_451);
  let x_455 : f32 = u_xlat0.w;
  let x_456 : f32 = u_xlat78;
  u_xlat75 = (x_455 + x_456);
  let x_458 : f32 = u_xlat75;
  u_xlat75 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat77;
  u_xlat78 = ((x_460 * 4.0f) + 2.0f);
  let x_466 : f32 = x_174.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_466);
  let x_468 : bool = u_xlatb80;
  if (x_468) {
    let x_472 : f32 = x_174.x_MainLightShadowParams.y;
    u_xlatb80 = (x_472 == 1.0f);
    let x_474 : bool = u_xlatb80;
    if (x_474) {
      let x_477 : vec4<f32> = u_xlat2;
      let x_480 : vec4<f32> = x_174.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_477.x, x_477.y, x_477.x, x_477.y) + x_480);
      let x_484 : vec4<f32> = u_xlat6;
      let x_485 : vec2<f32> = vec2<f32>(x_484.x, x_484.y);
      let x_487 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_485.x, x_485.y, x_487);
      let x_500 : vec3<f32> = txVec0;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat7.x = x_502;
      let x_505 : vec4<f32> = u_xlat6;
      let x_506 : vec2<f32> = vec2<f32>(x_505.z, x_505.w);
      let x_508 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_506.x, x_506.y, x_508);
      let x_515 : vec3<f32> = txVec1;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_515.xy, x_515.z);
      u_xlat7.y = x_517;
      let x_519 : vec4<f32> = u_xlat2;
      let x_523 : vec4<f32> = x_174.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) + x_523);
      let x_526 : vec4<f32> = u_xlat6;
      let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
      let x_529 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec2;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat7.z = x_538;
      let x_541 : vec4<f32> = u_xlat6;
      let x_542 : vec2<f32> = vec2<f32>(x_541.z, x_541.w);
      let x_544 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec3;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
      u_xlat7.w = x_553;
      let x_556 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_556, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_563 : f32 = x_174.x_MainLightShadowParams.y;
      u_xlatb6 = (x_563 == 2.0f);
      let x_565 : bool = u_xlatb6;
      if (x_565) {
        let x_568 : vec4<f32> = u_xlat2;
        let x_572 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_576 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_572.z, x_572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat6;
        let x_581 : vec2<f32> = floor(vec2<f32>(x_579.x, x_579.y));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_586 : vec4<f32> = u_xlat2;
        let x_589 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_589.z, x_589.w)) + -(vec2<f32>(x_592.x, x_592.y)));
        let x_596 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_596.x, x_596.x, x_596.y, x_596.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_601 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z) * vec4<f32>(x_603.x, x_603.x, x_603.z, x_603.z));
        let x_606 : vec4<f32> = u_xlat8;
        let x_610 : vec2<f32> = (vec2<f32>(x_606.y, x_606.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_610.x, x_611.y, x_610.y, x_611.w);
        let x_613 : vec4<f32> = u_xlat8;
        let x_616 : vec2<f32> = u_xlat56;
        let x_618 : vec2<f32> = ((vec2<f32>(x_613.x, x_613.z) * vec2<f32>(0.5f, 0.5f)) + -(x_616));
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_622 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_622) + vec2<f32>(1.0f, 1.0f));
        let x_627 : vec2<f32> = u_xlat56;
        let x_629 : vec2<f32> = min(x_627, vec2<f32>(0.0f, 0.0f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat9;
        let x_635 : vec4<f32> = u_xlat9;
        let x_638 : vec2<f32> = u_xlat58;
        let x_639 : vec2<f32> = ((-(vec2<f32>(x_632.x, x_632.y)) * vec2<f32>(x_635.x, x_635.y)) + x_638);
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
        let x_642 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_642, vec2<f32>(0.0f, 0.0f));
        let x_644 : vec2<f32> = u_xlat56;
        let x_646 : vec2<f32> = u_xlat56;
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_644) * x_646) + vec2<f32>(x_648.y, x_648.w));
        let x_651 : vec4<f32> = u_xlat9;
        let x_653 : vec2<f32> = (vec2<f32>(x_651.x, x_651.y) + vec2<f32>(1.0f, 1.0f));
        let x_654 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
        let x_656 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_656 + vec2<f32>(1.0f, 1.0f));
        let x_659 : vec4<f32> = u_xlat8;
        let x_663 : vec2<f32> = (vec2<f32>(x_659.x, x_659.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_664 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_666 : vec2<f32> = u_xlat58;
        let x_667 : vec2<f32> = (x_666 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_676 : vec2<f32> = u_xlat56;
        let x_677 : vec2<f32> = (x_676 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_680.y, x_680.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : f32 = u_xlat9.x;
        u_xlat10.z = x_684;
        let x_687 : f32 = u_xlat56.x;
        u_xlat10.w = x_687;
        let x_690 : f32 = u_xlat11.x;
        u_xlat8.z = x_690;
        let x_693 : f32 = u_xlat7.x;
        u_xlat8.w = x_693;
        let x_696 : vec4<f32> = u_xlat8;
        let x_698 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_696.z, x_696.w, x_696.x, x_696.z) + vec4<f32>(x_698.z, x_698.w, x_698.x, x_698.z));
        let x_702 : f32 = u_xlat10.y;
        u_xlat9.z = x_702;
        let x_705 : f32 = u_xlat56.y;
        u_xlat9.w = x_705;
        let x_708 : f32 = u_xlat8.y;
        u_xlat11.z = x_708;
        let x_711 : f32 = u_xlat7.z;
        u_xlat11.w = x_711;
        let x_713 : vec4<f32> = u_xlat9;
        let x_715 : vec4<f32> = u_xlat11;
        let x_717 : vec3<f32> = (vec3<f32>(x_713.z, x_713.y, x_713.w) + vec3<f32>(x_715.z, x_715.y, x_715.w));
        let x_718 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat8;
        let x_722 : vec4<f32> = u_xlat12;
        let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.z, x_720.w) / vec3<f32>(x_722.z, x_722.w, x_722.y));
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat8;
        let x_732 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat11;
        let x_737 : vec4<f32> = u_xlat7;
        let x_739 : vec3<f32> = (vec3<f32>(x_735.z, x_735.y, x_735.w) / vec3<f32>(x_737.x, x_737.y, x_737.z));
        let x_740 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat8;
        let x_750 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_752 : vec3<f32> = (vec3<f32>(x_747.y, x_747.x, x_747.z) * vec3<f32>(x_750.x, x_750.x, x_750.x));
        let x_753 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat9;
        let x_758 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_760 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_758.y, x_758.y, x_758.y));
        let x_761 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_764 : f32 = u_xlat9.x;
        u_xlat8.w = x_764;
        let x_766 : vec4<f32> = u_xlat6;
        let x_769 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.y, x_772.w, x_772.x, x_772.w));
        let x_775 : vec4<f32> = u_xlat6;
        let x_778 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_775.x, x_775.y) * vec2<f32>(x_778.x, x_778.y)) + vec2<f32>(x_781.z, x_781.w));
        let x_785 : f32 = u_xlat8.y;
        u_xlat9.w = x_785;
        let x_787 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = vec2<f32>(x_787.y, x_787.z);
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_789.x, x_788.x, x_789.z, x_788.y);
        let x_791 : vec4<f32> = u_xlat6;
        let x_794 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_797 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.y) * vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y)) + vec4<f32>(x_797.x, x_797.y, x_797.z, x_797.y));
        let x_800 : vec4<f32> = u_xlat6;
        let x_803 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_806 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) * vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y)) + vec4<f32>(x_806.w, x_806.y, x_806.w, x_806.z));
        let x_809 : vec4<f32> = u_xlat6;
        let x_812 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_809.x, x_809.y, x_809.x, x_809.y) * vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y)) + vec4<f32>(x_815.x, x_815.w, x_815.z, x_815.w));
        let x_819 : vec4<f32> = u_xlat7;
        let x_821 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_819.x, x_819.x, x_819.x, x_819.y) * vec4<f32>(x_821.z, x_821.w, x_821.y, x_821.z));
        let x_825 : vec4<f32> = u_xlat7;
        let x_827 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_825.y, x_825.y, x_825.z, x_825.z) * x_827);
        let x_830 : f32 = u_xlat7.z;
        let x_832 : f32 = u_xlat12.y;
        u_xlat6.x = (x_830 * x_832);
        let x_836 : vec4<f32> = u_xlat10;
        let x_837 : vec2<f32> = vec2<f32>(x_836.x, x_836.y);
        let x_839 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_847 : vec3<f32> = txVec4;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat31 = x_849;
        let x_851 : vec4<f32> = u_xlat10;
        let x_852 : vec2<f32> = vec2<f32>(x_851.z, x_851.w);
        let x_854 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec5;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat7.x = x_863;
        let x_866 : f32 = u_xlat7.x;
        let x_868 : f32 = u_xlat13.y;
        u_xlat7.x = (x_866 * x_868);
        let x_872 : f32 = u_xlat13.x;
        let x_873 : f32 = u_xlat31;
        let x_876 : f32 = u_xlat7.x;
        u_xlat31 = ((x_872 * x_873) + x_876);
        let x_879 : vec2<f32> = u_xlat56;
        let x_881 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec6;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat56.x = x_890;
        let x_893 : f32 = u_xlat13.z;
        let x_895 : f32 = u_xlat56.x;
        let x_897 : f32 = u_xlat31;
        u_xlat31 = ((x_893 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat9;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec7;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat56.x = x_912;
        let x_915 : f32 = u_xlat13.w;
        let x_917 : f32 = u_xlat56.x;
        let x_919 : f32 = u_xlat31;
        u_xlat31 = ((x_915 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat11;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec8;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat56.x = x_934;
        let x_937 : f32 = u_xlat14.x;
        let x_939 : f32 = u_xlat56.x;
        let x_941 : f32 = u_xlat31;
        u_xlat31 = ((x_937 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat11;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec9;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat56.x = x_956;
        let x_959 : f32 = u_xlat14.y;
        let x_961 : f32 = u_xlat56.x;
        let x_963 : f32 = u_xlat31;
        u_xlat31 = ((x_959 * x_961) + x_963);
        let x_966 : vec4<f32> = u_xlat9;
        let x_967 : vec2<f32> = vec2<f32>(x_966.z, x_966.w);
        let x_969 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_967.x, x_967.y, x_969);
        let x_976 : vec3<f32> = txVec10;
        let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
        u_xlat56.x = x_978;
        let x_981 : f32 = u_xlat14.z;
        let x_983 : f32 = u_xlat56.x;
        let x_985 : f32 = u_xlat31;
        u_xlat31 = ((x_981 * x_983) + x_985);
        let x_988 : vec4<f32> = u_xlat8;
        let x_989 : vec2<f32> = vec2<f32>(x_988.x, x_988.y);
        let x_991 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_998 : vec3<f32> = txVec11;
        let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
        u_xlat56.x = x_1000;
        let x_1003 : f32 = u_xlat14.w;
        let x_1005 : f32 = u_xlat56.x;
        let x_1007 : f32 = u_xlat31;
        u_xlat31 = ((x_1003 * x_1005) + x_1007);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
        let x_1013 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
        let x_1020 : vec3<f32> = txVec12;
        let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1020.xy, x_1020.z);
        u_xlat56.x = x_1022;
        let x_1025 : f32 = u_xlat6.x;
        let x_1027 : f32 = u_xlat56.x;
        let x_1029 : f32 = u_xlat31;
        u_xlat80 = ((x_1025 * x_1027) + x_1029);
      } else {
        let x_1032 : vec4<f32> = u_xlat2;
        let x_1035 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1032.x, x_1032.y) * vec2<f32>(x_1035.z, x_1035.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1039 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1043 : vec2<f32> = floor(vec2<f32>(x_1041.x, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat2;
        let x_1049 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.z, x_1049.w)) + -(vec2<f32>(x_1052.x, x_1052.y)));
        let x_1056 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1056.x, x_1056.x, x_1056.y, x_1056.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1059.x, x_1059.x, x_1059.z, x_1059.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.z, x_1061.z));
        let x_1064 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = (vec2<f32>(x_1064.y, x_1064.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1069.x, x_1068.x, x_1069.z, x_1068.y);
        let x_1071 : vec4<f32> = u_xlat8;
        let x_1074 : vec2<f32> = u_xlat56;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1074));
        let x_1077 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1076.x, x_1077.y, x_1076.y, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat56;
        let x_1081 : vec2<f32> = (-(x_1079) + vec2<f32>(1.0f, 1.0f));
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1084, vec2<f32>(0.0f, 0.0f));
        let x_1086 : vec2<f32> = u_xlat58;
        let x_1088 : vec2<f32> = u_xlat58;
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1092 : vec2<f32> = ((-(x_1086) * x_1088) + vec2<f32>(x_1090.x, x_1090.y));
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1095, vec2<f32>(0.0f, 0.0f));
        let x_1098 : vec2<f32> = u_xlat58;
        let x_1100 : vec2<f32> = u_xlat58;
        let x_1102 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = ((-(x_1098) * x_1100) + vec2<f32>(x_1102.y, x_1102.w));
        let x_1105 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1104.x, x_1105.y, x_1104.y);
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1107.x, x_1107.y) + vec2<f32>(2.0f, 2.0f));
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec3<f32> = u_xlat32;
        let x_1115 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.z) + vec2<f32>(2.0f, 2.0f));
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1116.x, x_1115.x, x_1116.z, x_1115.y);
        let x_1119 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1119 * 0.08163200318813323975f);
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1126 : vec3<f32> = (vec3<f32>(x_1123.z, x_1123.x, x_1123.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat8;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1136 : f32 = u_xlat11.y;
        u_xlat10.x = x_1136;
        let x_1138 : vec2<f32> = u_xlat56;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1148 : vec2<f32> = u_xlat56;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1156 : f32 = u_xlat7.x;
        u_xlat8.y = x_1156;
        let x_1159 : f32 = u_xlat9.y;
        u_xlat8.w = x_1159;
        let x_1161 : vec4<f32> = u_xlat8;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1161 + x_1162);
        let x_1164 : vec2<f32> = u_xlat56;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1164.y, x_1164.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec2<f32> = u_xlat56;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1174.w);
        let x_1177 : f32 = u_xlat7.y;
        u_xlat9.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1180 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1179 + x_1180);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1182 / x_1183);
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1185 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1191 / x_1192);
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1194 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1199 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1196.w, x_1196.x, x_1196.y, x_1196.z) * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x));
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1205 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1202.x, x_1202.w, x_1202.y, x_1202.z) * vec4<f32>(x_1205.y, x_1205.y, x_1205.y, x_1205.y));
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1209 : vec3<f32> = vec3<f32>(x_1208.y, x_1208.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1209.z);
        let x_1213 : f32 = u_xlat9.x;
        u_xlat11.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1234 : f32 = u_xlat11.y;
        u_xlat8.y = x_1234;
        let x_1237 : f32 = u_xlat9.z;
        u_xlat11.y = x_1237;
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1245.y));
        let x_1248 : vec4<f32> = u_xlat6;
        let x_1251 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.w, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
        let x_1260 : f32 = u_xlat11.y;
        u_xlat8.z = x_1260;
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1266 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.z));
        let x_1273 : f32 = u_xlat9.w;
        u_xlat11.y = x_1273;
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1279 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.y));
        let x_1286 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1296 : f32 = u_xlat11.y;
        u_xlat8.w = x_1296;
        let x_1299 : vec4<f32> = u_xlat6;
        let x_1302 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.x, x_1305.w));
        let x_1308 : vec4<f32> = u_xlat11;
        let x_1309 : vec3<f32> = vec3<f32>(x_1308.x, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1309.z);
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y) * vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y)) + vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.y));
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1332 : f32 = u_xlat8.x;
        u_xlat9.x = x_1332;
        let x_1334 : vec4<f32> = u_xlat6;
        let x_1337 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.x, x_1337.y)) + vec2<f32>(x_1340.x, x_1340.y));
        let x_1343 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1346.x, x_1346.x, x_1346.x, x_1346.x) * x_1348);
        let x_1351 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1351.y, x_1351.y, x_1351.y, x_1351.y) * x_1353);
        let x_1356 : vec4<f32> = u_xlat7;
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1356.z, x_1356.z, x_1356.z, x_1356.z) * x_1358);
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1360.w, x_1360.w, x_1360.w, x_1360.w) * x_1362);
        let x_1365 : vec4<f32> = u_xlat12;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
        let x_1368 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec13;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat8.x = x_1377;
        let x_1380 : vec4<f32> = u_xlat12;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.z, x_1380.w);
        let x_1383 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1391 : vec3<f32> = txVec14;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat83 = x_1393;
        let x_1394 : f32 = u_xlat83;
        let x_1396 : f32 = u_xlat17.y;
        u_xlat83 = (x_1394 * x_1396);
        let x_1399 : f32 = u_xlat17.x;
        let x_1401 : f32 = u_xlat8.x;
        let x_1403 : f32 = u_xlat83;
        u_xlat8.x = ((x_1399 * x_1401) + x_1403);
        let x_1407 : vec2<f32> = u_xlat56;
        let x_1409 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec15;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat56.x = x_1418;
        let x_1421 : f32 = u_xlat17.z;
        let x_1423 : f32 = u_xlat56.x;
        let x_1426 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1421 * x_1423) + x_1426);
        let x_1430 : vec4<f32> = u_xlat15;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.x, x_1430.y);
        let x_1433 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1441 : vec3<f32> = txVec16;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat81 = x_1443;
        let x_1445 : f32 = u_xlat17.w;
        let x_1446 : f32 = u_xlat81;
        let x_1449 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1445 * x_1446) + x_1449);
        let x_1453 : vec4<f32> = u_xlat13;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec17;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat81 = x_1465;
        let x_1467 : f32 = u_xlat18.x;
        let x_1468 : f32 = u_xlat81;
        let x_1471 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1467 * x_1468) + x_1471);
        let x_1475 : vec4<f32> = u_xlat13;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.z, x_1475.w);
        let x_1478 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec18;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat81 = x_1487;
        let x_1489 : f32 = u_xlat18.y;
        let x_1490 : f32 = u_xlat81;
        let x_1493 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1489 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat14;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec19;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat81 = x_1509;
        let x_1511 : f32 = u_xlat18.z;
        let x_1512 : f32 = u_xlat81;
        let x_1515 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat15;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec20;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat81 = x_1531;
        let x_1533 : f32 = u_xlat18.w;
        let x_1534 : f32 = u_xlat81;
        let x_1537 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec4<f32> = u_xlat16;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.x, x_1541.y);
        let x_1544 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec21;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat81 = x_1553;
        let x_1555 : f32 = u_xlat19.x;
        let x_1556 : f32 = u_xlat81;
        let x_1559 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1555 * x_1556) + x_1559);
        let x_1563 : vec4<f32> = u_xlat16;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.z, x_1563.w);
        let x_1566 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec22;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1573.xy, x_1573.z);
        u_xlat81 = x_1575;
        let x_1577 : f32 = u_xlat19.y;
        let x_1578 : f32 = u_xlat81;
        let x_1581 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1577 * x_1578) + x_1581);
        let x_1585 : vec2<f32> = u_xlat33;
        let x_1587 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec23;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat81 = x_1596;
        let x_1598 : f32 = u_xlat19.z;
        let x_1599 : f32 = u_xlat81;
        let x_1602 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1598 * x_1599) + x_1602);
        let x_1606 : vec2<f32> = u_xlat64;
        let x_1608 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec24;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat81 = x_1617;
        let x_1619 : f32 = u_xlat19.w;
        let x_1620 : f32 = u_xlat81;
        let x_1623 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1619 * x_1620) + x_1623);
        let x_1627 : vec4<f32> = u_xlat11;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec25;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat81 = x_1639;
        let x_1641 : f32 = u_xlat7.x;
        let x_1642 : f32 = u_xlat81;
        let x_1645 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1641 * x_1642) + x_1645);
        let x_1649 : vec4<f32> = u_xlat11;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.z, x_1649.w);
        let x_1652 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec26;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat81 = x_1661;
        let x_1663 : f32 = u_xlat7.y;
        let x_1664 : f32 = u_xlat81;
        let x_1667 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1663 * x_1664) + x_1667);
        let x_1671 : vec2<f32> = u_xlat59;
        let x_1673 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec27;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1680.xy, x_1680.z);
        u_xlat81 = x_1682;
        let x_1684 : f32 = u_xlat7.z;
        let x_1685 : f32 = u_xlat81;
        let x_1688 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1684 * x_1685) + x_1688);
        let x_1692 : vec4<f32> = u_xlat6;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
        let x_1695 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec28;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1702.xy, x_1702.z);
        u_xlat6.x = x_1704;
        let x_1707 : f32 = u_xlat7.w;
        let x_1709 : f32 = u_xlat6.x;
        let x_1712 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1707 * x_1709) + x_1712);
      }
    }
  } else {
    let x_1716 : vec4<f32> = u_xlat2;
    let x_1717 : vec2<f32> = vec2<f32>(x_1716.x, x_1716.y);
    let x_1719 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
    let x_1726 : vec3<f32> = txVec29;
    let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
    u_xlat80 = x_1728;
  }
  let x_1730 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1730) + 1.0f);
  let x_1734 : f32 = u_xlat80;
  let x_1736 : f32 = x_174.x_MainLightShadowParams.x;
  let x_1739 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1734 * x_1736) + x_1739);
  let x_1744 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_1744);
  let x_1748 : f32 = u_xlat2.z;
  u_xlatb52 = (x_1748 >= 1.0f);
  let x_1750 : bool = u_xlatb52;
  let x_1751 : bool = u_xlatb27;
  u_xlatb27 = (x_1750 | x_1751);
  let x_1753 : bool = u_xlatb27;
  if (x_1753) {
    x_1754 = 1.0f;
  } else {
    let x_1759 : f32 = u_xlat2.x;
    x_1754 = x_1759;
  }
  let x_1760 : f32 = x_1754;
  u_xlat2.x = x_1760;
  let x_1762 : vec3<f32> = vs_TEXCOORD7;
  let x_1764 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1766 : vec3<f32> = (x_1762 + -(x_1764));
  let x_1767 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
  let x_1769 : vec4<f32> = u_xlat6;
  let x_1771 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_1769.x, x_1769.y, x_1769.z), vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1777 : f32 = u_xlat27.x;
  let x_1779 : f32 = x_174.x_MainLightShadowParams.z;
  let x_1782 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat52 = ((x_1777 * x_1779) + x_1782);
  let x_1784 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1784, 0.0f, 1.0f);
  let x_1787 : f32 = u_xlat2.x;
  u_xlat80 = (-(x_1787) + 1.0f);
  let x_1790 : f32 = u_xlat52;
  let x_1791 : f32 = u_xlat80;
  let x_1794 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1790 * x_1791) + x_1794);
  let x_1797 : vec3<f32> = u_xlat3;
  let x_1799 : vec3<f32> = u_xlat26;
  u_xlat52 = dot(-(x_1797), x_1799);
  let x_1801 : f32 = u_xlat52;
  let x_1802 : f32 = u_xlat52;
  u_xlat52 = (x_1801 + x_1802);
  let x_1804 : vec3<f32> = u_xlat26;
  let x_1805 : f32 = u_xlat52;
  let x_1809 : vec3<f32> = u_xlat3;
  let x_1811 : vec3<f32> = ((x_1804 * -(vec3<f32>(x_1805, x_1805, x_1805))) + -(x_1809));
  let x_1812 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
  let x_1814 : vec3<f32> = u_xlat26;
  let x_1815 : vec3<f32> = u_xlat3;
  u_xlat52 = dot(x_1814, x_1815);
  let x_1817 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1817, 0.0f, 1.0f);
  let x_1819 : f32 = u_xlat52;
  u_xlat52 = (-(x_1819) + 1.0f);
  let x_1822 : f32 = u_xlat52;
  let x_1823 : f32 = u_xlat52;
  u_xlat52 = (x_1822 * x_1823);
  let x_1825 : f32 = u_xlat52;
  let x_1826 : f32 = u_xlat52;
  u_xlat52 = (x_1825 * x_1826);
  let x_1828 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1828) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1834 : f32 = u_xlat1;
  let x_1835 : f32 = u_xlat80;
  u_xlat1 = (x_1834 * x_1835);
  let x_1837 : f32 = u_xlat1;
  u_xlat1 = (x_1837 * 6.0f);
  let x_1848 : vec4<f32> = u_xlat6;
  let x_1850 : f32 = u_xlat1;
  let x_1851 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1848.x, x_1848.y, x_1848.z), x_1850);
  u_xlat6 = x_1851;
  let x_1853 : f32 = u_xlat6.w;
  u_xlat1 = (x_1853 + -1.0f);
  let x_1860 : f32 = x_1858.unity_SpecCube0_HDR.w;
  let x_1861 : f32 = u_xlat1;
  u_xlat1 = ((x_1860 * x_1861) + 1.0f);
  let x_1864 : f32 = u_xlat1;
  u_xlat1 = max(x_1864, 0.0f);
  let x_1866 : f32 = u_xlat1;
  u_xlat1 = log2(x_1866);
  let x_1868 : f32 = u_xlat1;
  let x_1870 : f32 = x_1858.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1868 * x_1870);
  let x_1872 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1872);
  let x_1874 : f32 = u_xlat1;
  let x_1876 : f32 = x_1858.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1874 * x_1876);
  let x_1878 : vec4<f32> = u_xlat6;
  let x_1880 : f32 = u_xlat1;
  let x_1882 : vec3<f32> = (vec3<f32>(x_1878.x, x_1878.y, x_1878.z) * vec3<f32>(x_1880, x_1880, x_1880));
  let x_1883 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
  let x_1885 : f32 = u_xlat77;
  let x_1887 : f32 = u_xlat77;
  let x_1891 : vec2<f32> = ((vec2<f32>(x_1885, x_1885) * vec2<f32>(x_1887, x_1887)) + vec2<f32>(-1.0f, 1.0f));
  let x_1892 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1891.x, x_1891.y, x_1892.z, x_1892.w);
  let x_1895 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1895);
  let x_1897 : vec4<f32> = u_xlat0;
  let x_1900 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1897.x, x_1897.y, x_1897.z)) + vec3<f32>(x_1900, x_1900, x_1900));
  let x_1903 : f32 = u_xlat52;
  let x_1905 : vec3<f32> = u_xlat32;
  let x_1907 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1903, x_1903, x_1903) * x_1905) + vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : f32 = u_xlat1;
  let x_1912 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1910, x_1910, x_1910) * x_1912);
  let x_1914 : vec4<f32> = u_xlat6;
  let x_1916 : vec3<f32> = u_xlat32;
  let x_1917 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) * x_1916);
  let x_1918 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : vec4<f32> = u_xlat4;
  let x_1922 : vec3<f32> = u_xlat5;
  let x_1924 : vec4<f32> = u_xlat6;
  let x_1926 : vec3<f32> = ((vec3<f32>(x_1920.x, x_1920.y, x_1920.z) * x_1922) + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1930 : f32 = u_xlat2.x;
  let x_1932 : f32 = x_1858.unity_LightData.z;
  u_xlat75 = (x_1930 * x_1932);
  let x_1934 : vec3<f32> = u_xlat26;
  let x_1936 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1934, vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1939, 0.0f, 1.0f);
  let x_1941 : f32 = u_xlat75;
  let x_1942 : f32 = u_xlat1;
  u_xlat75 = (x_1941 * x_1942);
  let x_1944 : f32 = u_xlat75;
  let x_1947 : vec4<f32> = x_29.x_MainLightColor;
  let x_1949 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1949.x, x_1950.y, x_1949.y, x_1949.z);
  let x_1952 : vec3<f32> = u_xlat3;
  let x_1954 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1956 : vec3<f32> = (x_1952 + vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
  let x_1959 : vec4<f32> = u_xlat6;
  let x_1961 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat75;
  u_xlat75 = max(x_1964, 1.17549435e-38f);
  let x_1967 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1967);
  let x_1969 : f32 = u_xlat75;
  let x_1971 : vec4<f32> = u_xlat6;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1969, x_1969, x_1969) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec3<f32> = u_xlat26;
  let x_1977 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1976, vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1980, 0.0f, 1.0f);
  let x_1983 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1985 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1988, 0.0f, 1.0f);
  let x_1990 : f32 = u_xlat75;
  let x_1991 : f32 = u_xlat75;
  u_xlat75 = (x_1990 * x_1991);
  let x_1993 : f32 = u_xlat75;
  let x_1995 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1993 * x_1995) + 1.00001001358032226562f);
  let x_1999 : f32 = u_xlat1;
  let x_2000 : f32 = u_xlat1;
  u_xlat1 = (x_1999 * x_2000);
  let x_2002 : f32 = u_xlat75;
  let x_2003 : f32 = u_xlat75;
  u_xlat75 = (x_2002 * x_2003);
  let x_2005 : f32 = u_xlat1;
  u_xlat1 = max(x_2005, 0.10000000149011611938f);
  let x_2008 : f32 = u_xlat75;
  let x_2009 : f32 = u_xlat1;
  u_xlat75 = (x_2008 * x_2009);
  let x_2011 : f32 = u_xlat78;
  let x_2012 : f32 = u_xlat75;
  u_xlat75 = (x_2011 * x_2012);
  let x_2014 : f32 = u_xlat79;
  let x_2015 : f32 = u_xlat75;
  u_xlat75 = (x_2014 / x_2015);
  let x_2017 : vec4<f32> = u_xlat0;
  let x_2019 : f32 = u_xlat75;
  let x_2022 : vec3<f32> = u_xlat5;
  let x_2023 : vec3<f32> = ((vec3<f32>(x_2017.x, x_2017.y, x_2017.z) * vec3<f32>(x_2019, x_2019, x_2019)) + x_2022);
  let x_2024 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
  let x_2027 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2029 : f32 = x_1858.unity_LightData.y;
  u_xlat75 = min(x_2027, x_2029);
  let x_2032 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2032));
  let x_2036 : f32 = u_xlat27.x;
  let x_2039 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_2042 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2036 * x_2039) + x_2042);
  let x_2044 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2044, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2056 : u32 = u_xlatu_loop_1;
    let x_2057 : u32 = u_xlatu75;
    if ((x_2056 < x_2057)) {
    } else {
      break;
    }
    let x_2060 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2060 >> 2u);
    let x_2063 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2063 & 3u));
    let x_2066 : u32 = u_xlatu80;
    let x_2069 : vec4<f32> = x_1858.unity_LightIndices[bitcast<i32>(x_2066)];
    let x_2079 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2084 : vec4<u32> = indexable[x_2079];
    u_xlat80 = dot(x_2069, bitcast<vec4<f32>>(x_2084));
    let x_2088 : f32 = u_xlat80;
    u_xlati80 = i32(x_2088);
    let x_2090 : vec3<f32> = vs_TEXCOORD7;
    let x_2101 : i32 = u_xlati80;
    let x_2103 : vec4<f32> = x_2100.x_AdditionalLightsPosition[x_2101];
    let x_2106 : i32 = u_xlati80;
    let x_2108 : vec4<f32> = x_2100.x_AdditionalLightsPosition[x_2106];
    let x_2110 : vec3<f32> = ((-(x_2090) * vec3<f32>(x_2103.w, x_2103.w, x_2103.w)) + vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
    let x_2113 : vec4<f32> = u_xlat8;
    let x_2115 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2118 : f32 = u_xlat81;
    u_xlat81 = max(x_2118, 0.00006103515625f);
    let x_2121 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2121);
    let x_2123 : f32 = u_xlat83;
    let x_2125 : vec4<f32> = u_xlat8;
    let x_2127 : vec3<f32> = (vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
    let x_2131 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2131);
    let x_2133 : f32 = u_xlat81;
    let x_2134 : i32 = u_xlati80;
    let x_2136 : f32 = x_2100.x_AdditionalLightsAttenuation[x_2134].x;
    u_xlat81 = (x_2133 * x_2136);
    let x_2138 : f32 = u_xlat81;
    let x_2140 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2138) * x_2140) + 1.0f);
    let x_2143 : f32 = u_xlat81;
    u_xlat81 = max(x_2143, 0.0f);
    let x_2145 : f32 = u_xlat81;
    let x_2146 : f32 = u_xlat81;
    u_xlat81 = (x_2145 * x_2146);
    let x_2148 : f32 = u_xlat81;
    let x_2149 : f32 = u_xlat84;
    u_xlat81 = (x_2148 * x_2149);
    let x_2151 : i32 = u_xlati80;
    let x_2153 : vec4<f32> = x_2100.x_AdditionalLightsSpotDir[x_2151];
    let x_2155 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2153.x, x_2153.y, x_2153.z), vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : f32 = u_xlat84;
    let x_2159 : i32 = u_xlati80;
    let x_2161 : f32 = x_2100.x_AdditionalLightsAttenuation[x_2159].z;
    let x_2163 : i32 = u_xlati80;
    let x_2165 : f32 = x_2100.x_AdditionalLightsAttenuation[x_2163].w;
    u_xlat84 = ((x_2158 * x_2161) + x_2165);
    let x_2167 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2167, 0.0f, 1.0f);
    let x_2169 : f32 = u_xlat84;
    let x_2170 : f32 = u_xlat84;
    u_xlat84 = (x_2169 * x_2170);
    let x_2172 : f32 = u_xlat81;
    let x_2173 : f32 = u_xlat84;
    u_xlat81 = (x_2172 * x_2173);
    let x_2177 : i32 = u_xlati80;
    let x_2179 : f32 = x_174.x_AdditionalShadowParams[x_2177].w;
    u_xlati84 = i32(x_2179);
    let x_2184 : i32 = u_xlati84;
    u_xlatb10.x = (x_2184 >= 0i);
    let x_2188 : bool = u_xlatb10.x;
    if (x_2188) {
      let x_2192 : i32 = u_xlati80;
      let x_2194 : f32 = x_174.x_AdditionalShadowParams[x_2192].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2194, x_2194, x_2194, x_2194))));
      let x_2200 : bool = u_xlatb10.x;
      if (x_2200) {
        let x_2203 : vec4<f32> = u_xlat9;
        let x_2206 : vec4<f32> = u_xlat9;
        let x_2209 : vec4<bool> = (abs(vec4<f32>(x_2203.z, x_2203.z, x_2203.y, x_2203.z)) >= abs(vec4<f32>(x_2206.x, x_2206.y, x_2206.x, x_2206.x)));
        u_xlatb10 = vec3<bool>(x_2209.x, x_2209.y, x_2209.z);
        let x_2212 : bool = u_xlatb10.y;
        let x_2214 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2212 & x_2214);
        let x_2218 : vec4<f32> = u_xlat9;
        let x_2221 : vec4<bool> = (-(vec4<f32>(x_2218.z, x_2218.y, x_2218.x, x_2218.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2221.x, x_2221.y, x_2221.z);
        let x_2225 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2225);
        let x_2230 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2230);
        let x_2234 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2234);
        let x_2239 : bool = u_xlatb10.z;
        if (x_2239) {
          let x_2244 : f32 = u_xlat35.z;
          x_2240 = x_2244;
        } else {
          let x_2247 : f32 = u_xlat11.x;
          x_2240 = x_2247;
        }
        let x_2248 : f32 = x_2240;
        u_xlat60 = x_2248;
        let x_2250 : bool = u_xlatb10.x;
        if (x_2250) {
          let x_2255 : f32 = u_xlat35.x;
          x_2251 = x_2255;
        } else {
          let x_2257 : f32 = u_xlat60;
          x_2251 = x_2257;
        }
        let x_2258 : f32 = x_2251;
        u_xlat10.x = x_2258;
        let x_2260 : i32 = u_xlati80;
        let x_2262 : f32 = x_174.x_AdditionalShadowParams[x_2260].w;
        u_xlat35.x = trunc(x_2262);
        let x_2266 : f32 = u_xlat10.x;
        let x_2268 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2266 + x_2268);
        let x_2272 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2272);
      }
      let x_2274 : i32 = u_xlati84;
      u_xlati84 = (x_2274 << bitcast<u32>(2i));
      let x_2276 : vec3<f32> = vs_TEXCOORD7;
      let x_2279 : i32 = u_xlati84;
      let x_2282 : i32 = u_xlati84;
      let x_2286 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2279 + 1i) / 4i)][((x_2282 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2276.y, x_2276.y, x_2276.y, x_2276.y) * x_2286);
      let x_2288 : i32 = u_xlati84;
      let x_2290 : i32 = u_xlati84;
      let x_2293 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_2288 / 4i)][(x_2290 % 4i)];
      let x_2294 : vec3<f32> = vs_TEXCOORD7;
      let x_2297 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2293 * vec4<f32>(x_2294.x, x_2294.x, x_2294.x, x_2294.x)) + x_2297);
      let x_2299 : i32 = u_xlati84;
      let x_2302 : i32 = u_xlati84;
      let x_2306 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2299 + 2i) / 4i)][((x_2302 + 2i) % 4i)];
      let x_2307 : vec3<f32> = vs_TEXCOORD7;
      let x_2310 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2306 * vec4<f32>(x_2307.z, x_2307.z, x_2307.z, x_2307.z)) + x_2310);
      let x_2312 : vec4<f32> = u_xlat10;
      let x_2313 : i32 = u_xlati84;
      let x_2316 : i32 = u_xlati84;
      let x_2320 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2313 + 3i) / 4i)][((x_2316 + 3i) % 4i)];
      u_xlat10 = (x_2312 + x_2320);
      let x_2322 : vec4<f32> = u_xlat10;
      let x_2324 : vec4<f32> = u_xlat10;
      let x_2326 : vec3<f32> = (vec3<f32>(x_2322.x, x_2322.y, x_2322.z) / vec3<f32>(x_2324.w, x_2324.w, x_2324.w));
      let x_2327 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
      let x_2330 : i32 = u_xlati80;
      let x_2332 : f32 = x_174.x_AdditionalShadowParams[x_2330].y;
      u_xlatb84 = (0.0f < x_2332);
      let x_2334 : bool = u_xlatb84;
      if (x_2334) {
        let x_2337 : i32 = u_xlati80;
        let x_2339 : f32 = x_174.x_AdditionalShadowParams[x_2337].y;
        u_xlatb84 = (1.0f == x_2339);
        let x_2341 : bool = u_xlatb84;
        if (x_2341) {
          let x_2344 : vec4<f32> = u_xlat10;
          let x_2348 : vec4<f32> = x_174.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2344.x, x_2344.y, x_2344.x, x_2344.y) + x_2348);
          let x_2351 : vec4<f32> = u_xlat11;
          let x_2352 : vec2<f32> = vec2<f32>(x_2351.x, x_2351.y);
          let x_2354 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
          let x_2362 : vec3<f32> = txVec30;
          let x_2364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
          u_xlat12.x = x_2364;
          let x_2367 : vec4<f32> = u_xlat11;
          let x_2368 : vec2<f32> = vec2<f32>(x_2367.z, x_2367.w);
          let x_2370 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2368.x, x_2368.y, x_2370);
          let x_2377 : vec3<f32> = txVec31;
          let x_2379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
          u_xlat12.y = x_2379;
          let x_2381 : vec4<f32> = u_xlat10;
          let x_2385 : vec4<f32> = x_174.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2381.x, x_2381.y, x_2381.x, x_2381.y) + x_2385);
          let x_2388 : vec4<f32> = u_xlat11;
          let x_2389 : vec2<f32> = vec2<f32>(x_2388.x, x_2388.y);
          let x_2391 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2389.x, x_2389.y, x_2391);
          let x_2398 : vec3<f32> = txVec32;
          let x_2400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2398.xy, x_2398.z);
          u_xlat12.z = x_2400;
          let x_2403 : vec4<f32> = u_xlat11;
          let x_2404 : vec2<f32> = vec2<f32>(x_2403.z, x_2403.w);
          let x_2406 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2404.x, x_2404.y, x_2406);
          let x_2413 : vec3<f32> = txVec33;
          let x_2415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2413.xy, x_2413.z);
          u_xlat12.w = x_2415;
          let x_2417 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2417, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2421 : i32 = u_xlati80;
          let x_2423 : f32 = x_174.x_AdditionalShadowParams[x_2421].y;
          u_xlatb85 = (2.0f == x_2423);
          let x_2425 : bool = u_xlatb85;
          if (x_2425) {
            let x_2428 : vec4<f32> = u_xlat10;
            let x_2432 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2435 : vec2<f32> = ((vec2<f32>(x_2428.x, x_2428.y) * vec2<f32>(x_2432.z, x_2432.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2436 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2435.x, x_2435.y, x_2436.z, x_2436.w);
            let x_2438 : vec4<f32> = u_xlat11;
            let x_2440 : vec2<f32> = floor(vec2<f32>(x_2438.x, x_2438.y));
            let x_2441 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
            let x_2444 : vec4<f32> = u_xlat10;
            let x_2447 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2450 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2444.x, x_2444.y) * vec2<f32>(x_2447.z, x_2447.w)) + -(vec2<f32>(x_2450.x, x_2450.y)));
            let x_2454 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2454.x, x_2454.x, x_2454.y, x_2454.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2457 : vec4<f32> = u_xlat12;
            let x_2459 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2457.x, x_2457.x, x_2457.z, x_2457.z) * vec4<f32>(x_2459.x, x_2459.x, x_2459.z, x_2459.z));
            let x_2462 : vec4<f32> = u_xlat13;
            let x_2464 : vec2<f32> = (vec2<f32>(x_2462.y, x_2462.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2465 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2464.x, x_2465.y, x_2464.y, x_2465.w);
            let x_2467 : vec4<f32> = u_xlat13;
            let x_2470 : vec2<f32> = u_xlat61;
            let x_2472 : vec2<f32> = ((vec2<f32>(x_2467.x, x_2467.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2470));
            let x_2473 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
            let x_2476 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2476) + vec2<f32>(1.0f, 1.0f));
            let x_2479 : vec2<f32> = u_xlat61;
            let x_2480 : vec2<f32> = min(x_2479, vec2<f32>(0.0f, 0.0f));
            let x_2481 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat14;
            let x_2486 : vec4<f32> = u_xlat14;
            let x_2489 : vec2<f32> = u_xlat63;
            let x_2490 : vec2<f32> = ((-(vec2<f32>(x_2483.x, x_2483.y)) * vec2<f32>(x_2486.x, x_2486.y)) + x_2489);
            let x_2491 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2490.x, x_2490.y, x_2491.z, x_2491.w);
            let x_2493 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2493, vec2<f32>(0.0f, 0.0f));
            let x_2495 : vec2<f32> = u_xlat61;
            let x_2497 : vec2<f32> = u_xlat61;
            let x_2499 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2495) * x_2497) + vec2<f32>(x_2499.y, x_2499.w));
            let x_2502 : vec4<f32> = u_xlat14;
            let x_2504 : vec2<f32> = (vec2<f32>(x_2502.x, x_2502.y) + vec2<f32>(1.0f, 1.0f));
            let x_2505 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2504.x, x_2504.y, x_2505.z, x_2505.w);
            let x_2507 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2507 + vec2<f32>(1.0f, 1.0f));
            let x_2509 : vec4<f32> = u_xlat13;
            let x_2511 : vec2<f32> = (vec2<f32>(x_2509.x, x_2509.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2512 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
            let x_2514 : vec2<f32> = u_xlat63;
            let x_2515 : vec2<f32> = (x_2514 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2516 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2515.x, x_2515.y, x_2516.z, x_2516.w);
            let x_2518 : vec4<f32> = u_xlat14;
            let x_2520 : vec2<f32> = (vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2521 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2520.x, x_2520.y, x_2521.z, x_2521.w);
            let x_2523 : vec2<f32> = u_xlat61;
            let x_2524 : vec2<f32> = (x_2523 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2525 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2524.x, x_2524.y, x_2525.z, x_2525.w);
            let x_2527 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2527.y, x_2527.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2531 : f32 = u_xlat14.x;
            u_xlat15.z = x_2531;
            let x_2534 : f32 = u_xlat61.x;
            u_xlat15.w = x_2534;
            let x_2537 : f32 = u_xlat16.x;
            u_xlat13.z = x_2537;
            let x_2540 : f32 = u_xlat12.x;
            u_xlat13.w = x_2540;
            let x_2542 : vec4<f32> = u_xlat13;
            let x_2544 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2542.z, x_2542.w, x_2542.x, x_2542.z) + vec4<f32>(x_2544.z, x_2544.w, x_2544.x, x_2544.z));
            let x_2548 : f32 = u_xlat15.y;
            u_xlat14.z = x_2548;
            let x_2551 : f32 = u_xlat61.y;
            u_xlat14.w = x_2551;
            let x_2554 : f32 = u_xlat13.y;
            u_xlat16.z = x_2554;
            let x_2557 : f32 = u_xlat12.z;
            u_xlat16.w = x_2557;
            let x_2559 : vec4<f32> = u_xlat14;
            let x_2561 : vec4<f32> = u_xlat16;
            let x_2563 : vec3<f32> = (vec3<f32>(x_2559.z, x_2559.y, x_2559.w) + vec3<f32>(x_2561.z, x_2561.y, x_2561.w));
            let x_2564 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat13;
            let x_2568 : vec4<f32> = u_xlat17;
            let x_2570 : vec3<f32> = (vec3<f32>(x_2566.x, x_2566.z, x_2566.w) / vec3<f32>(x_2568.z, x_2568.w, x_2568.y));
            let x_2571 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat13;
            let x_2575 : vec3<f32> = (vec3<f32>(x_2573.x, x_2573.y, x_2573.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2576 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat16;
            let x_2580 : vec4<f32> = u_xlat12;
            let x_2582 : vec3<f32> = (vec3<f32>(x_2578.z, x_2578.y, x_2578.w) / vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
            let x_2583 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
            let x_2585 : vec4<f32> = u_xlat14;
            let x_2587 : vec3<f32> = (vec3<f32>(x_2585.x, x_2585.y, x_2585.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2588 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat13;
            let x_2593 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2595 : vec3<f32> = (vec3<f32>(x_2590.y, x_2590.x, x_2590.z) * vec3<f32>(x_2593.x, x_2593.x, x_2593.x));
            let x_2596 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
            let x_2598 : vec4<f32> = u_xlat14;
            let x_2601 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2603 : vec3<f32> = (vec3<f32>(x_2598.x, x_2598.y, x_2598.z) * vec3<f32>(x_2601.y, x_2601.y, x_2601.y));
            let x_2604 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
            let x_2607 : f32 = u_xlat14.x;
            u_xlat13.w = x_2607;
            let x_2609 : vec4<f32> = u_xlat11;
            let x_2612 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2615 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y) * vec4<f32>(x_2612.x, x_2612.y, x_2612.x, x_2612.y)) + vec4<f32>(x_2615.y, x_2615.w, x_2615.x, x_2615.w));
            let x_2618 : vec4<f32> = u_xlat11;
            let x_2621 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2624 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(x_2621.x, x_2621.y)) + vec2<f32>(x_2624.z, x_2624.w));
            let x_2628 : f32 = u_xlat13.y;
            u_xlat14.w = x_2628;
            let x_2630 : vec4<f32> = u_xlat14;
            let x_2631 : vec2<f32> = vec2<f32>(x_2630.y, x_2630.z);
            let x_2632 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2632.x, x_2631.x, x_2632.z, x_2631.y);
            let x_2634 : vec4<f32> = u_xlat11;
            let x_2637 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2640 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.y) * vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.y)) + vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2640.y));
            let x_2643 : vec4<f32> = u_xlat11;
            let x_2646 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2649 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y) * vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.y)) + vec4<f32>(x_2649.w, x_2649.y, x_2649.w, x_2649.z));
            let x_2652 : vec4<f32> = u_xlat11;
            let x_2655 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2658 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2652.x, x_2652.y, x_2652.x, x_2652.y) * vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y)) + vec4<f32>(x_2658.x, x_2658.w, x_2658.z, x_2658.w));
            let x_2661 : vec4<f32> = u_xlat12;
            let x_2663 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2661.x, x_2661.x, x_2661.x, x_2661.y) * vec4<f32>(x_2663.z, x_2663.w, x_2663.y, x_2663.z));
            let x_2666 : vec4<f32> = u_xlat12;
            let x_2668 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2666.y, x_2666.y, x_2666.z, x_2666.z) * x_2668);
            let x_2672 : f32 = u_xlat12.z;
            let x_2674 : f32 = u_xlat17.y;
            u_xlat85 = (x_2672 * x_2674);
            let x_2677 : vec4<f32> = u_xlat15;
            let x_2678 : vec2<f32> = vec2<f32>(x_2677.x, x_2677.y);
            let x_2680 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2678.x, x_2678.y, x_2680);
            let x_2687 : vec3<f32> = txVec34;
            let x_2689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2687.xy, x_2687.z);
            u_xlat11.x = x_2689;
            let x_2692 : vec4<f32> = u_xlat15;
            let x_2693 : vec2<f32> = vec2<f32>(x_2692.z, x_2692.w);
            let x_2695 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2693.x, x_2693.y, x_2695);
            let x_2703 : vec3<f32> = txVec35;
            let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
            u_xlat36 = x_2705;
            let x_2706 : f32 = u_xlat36;
            let x_2708 : f32 = u_xlat18.y;
            u_xlat36 = (x_2706 * x_2708);
            let x_2711 : f32 = u_xlat18.x;
            let x_2713 : f32 = u_xlat11.x;
            let x_2715 : f32 = u_xlat36;
            u_xlat11.x = ((x_2711 * x_2713) + x_2715);
            let x_2719 : vec2<f32> = u_xlat61;
            let x_2721 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2719.x, x_2719.y, x_2721);
            let x_2728 : vec3<f32> = txVec36;
            let x_2730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2728.xy, x_2728.z);
            u_xlat36 = x_2730;
            let x_2732 : f32 = u_xlat18.z;
            let x_2733 : f32 = u_xlat36;
            let x_2736 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2732 * x_2733) + x_2736);
            let x_2740 : vec4<f32> = u_xlat14;
            let x_2741 : vec2<f32> = vec2<f32>(x_2740.x, x_2740.y);
            let x_2743 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2741.x, x_2741.y, x_2743);
            let x_2750 : vec3<f32> = txVec37;
            let x_2752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
            u_xlat36 = x_2752;
            let x_2754 : f32 = u_xlat18.w;
            let x_2755 : f32 = u_xlat36;
            let x_2758 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2754 * x_2755) + x_2758);
            let x_2762 : vec4<f32> = u_xlat16;
            let x_2763 : vec2<f32> = vec2<f32>(x_2762.x, x_2762.y);
            let x_2765 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2763.x, x_2763.y, x_2765);
            let x_2772 : vec3<f32> = txVec38;
            let x_2774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2772.xy, x_2772.z);
            u_xlat36 = x_2774;
            let x_2776 : f32 = u_xlat19.x;
            let x_2777 : f32 = u_xlat36;
            let x_2780 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2776 * x_2777) + x_2780);
            let x_2784 : vec4<f32> = u_xlat16;
            let x_2785 : vec2<f32> = vec2<f32>(x_2784.z, x_2784.w);
            let x_2787 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2785.x, x_2785.y, x_2787);
            let x_2794 : vec3<f32> = txVec39;
            let x_2796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2794.xy, x_2794.z);
            u_xlat36 = x_2796;
            let x_2798 : f32 = u_xlat19.y;
            let x_2799 : f32 = u_xlat36;
            let x_2802 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2798 * x_2799) + x_2802);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2807 : vec2<f32> = vec2<f32>(x_2806.z, x_2806.w);
            let x_2809 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2807.x, x_2807.y, x_2809);
            let x_2816 : vec3<f32> = txVec40;
            let x_2818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2816.xy, x_2816.z);
            u_xlat36 = x_2818;
            let x_2820 : f32 = u_xlat19.z;
            let x_2821 : f32 = u_xlat36;
            let x_2824 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2820 * x_2821) + x_2824);
            let x_2828 : vec4<f32> = u_xlat13;
            let x_2829 : vec2<f32> = vec2<f32>(x_2828.x, x_2828.y);
            let x_2831 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
            let x_2838 : vec3<f32> = txVec41;
            let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
            u_xlat36 = x_2840;
            let x_2842 : f32 = u_xlat19.w;
            let x_2843 : f32 = u_xlat36;
            let x_2846 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2842 * x_2843) + x_2846);
            let x_2850 : vec4<f32> = u_xlat13;
            let x_2851 : vec2<f32> = vec2<f32>(x_2850.z, x_2850.w);
            let x_2853 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
            let x_2860 : vec3<f32> = txVec42;
            let x_2862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
            u_xlat36 = x_2862;
            let x_2863 : f32 = u_xlat85;
            let x_2864 : f32 = u_xlat36;
            let x_2867 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2863 * x_2864) + x_2867);
          } else {
            let x_2870 : vec4<f32> = u_xlat10;
            let x_2873 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2876 : vec2<f32> = ((vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(x_2873.z, x_2873.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2877 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2876.x, x_2876.y, x_2877.z, x_2877.w);
            let x_2879 : vec4<f32> = u_xlat11;
            let x_2881 : vec2<f32> = floor(vec2<f32>(x_2879.x, x_2879.y));
            let x_2882 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
            let x_2884 : vec4<f32> = u_xlat10;
            let x_2887 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2890 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2884.x, x_2884.y) * vec2<f32>(x_2887.z, x_2887.w)) + -(vec2<f32>(x_2890.x, x_2890.y)));
            let x_2894 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2894.x, x_2894.x, x_2894.y, x_2894.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2897 : vec4<f32> = u_xlat12;
            let x_2899 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2897.x, x_2897.x, x_2897.z, x_2897.z) * vec4<f32>(x_2899.x, x_2899.x, x_2899.z, x_2899.z));
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2904 : vec2<f32> = (vec2<f32>(x_2902.y, x_2902.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2905 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2905.x, x_2904.x, x_2905.z, x_2904.y);
            let x_2907 : vec4<f32> = u_xlat13;
            let x_2910 : vec2<f32> = u_xlat61;
            let x_2912 : vec2<f32> = ((vec2<f32>(x_2907.x, x_2907.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2910));
            let x_2913 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2912.x, x_2913.y, x_2912.y, x_2913.w);
            let x_2915 : vec2<f32> = u_xlat61;
            let x_2917 : vec2<f32> = (-(x_2915) + vec2<f32>(1.0f, 1.0f));
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2917.x, x_2917.y, x_2918.z, x_2918.w);
            let x_2920 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2920, vec2<f32>(0.0f, 0.0f));
            let x_2922 : vec2<f32> = u_xlat63;
            let x_2924 : vec2<f32> = u_xlat63;
            let x_2926 : vec4<f32> = u_xlat13;
            let x_2928 : vec2<f32> = ((-(x_2922) * x_2924) + vec2<f32>(x_2926.x, x_2926.y));
            let x_2929 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
            let x_2931 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2931, vec2<f32>(0.0f, 0.0f));
            let x_2934 : vec2<f32> = u_xlat63;
            let x_2936 : vec2<f32> = u_xlat63;
            let x_2938 : vec4<f32> = u_xlat12;
            let x_2940 : vec2<f32> = ((-(x_2934) * x_2936) + vec2<f32>(x_2938.y, x_2938.w));
            let x_2941 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2940.x, x_2941.y, x_2940.y);
            let x_2943 : vec4<f32> = u_xlat13;
            let x_2945 : vec2<f32> = (vec2<f32>(x_2943.x, x_2943.y) + vec2<f32>(2.0f, 2.0f));
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
            let x_2948 : vec3<f32> = u_xlat37;
            let x_2950 : vec2<f32> = (vec2<f32>(x_2948.x, x_2948.z) + vec2<f32>(2.0f, 2.0f));
            let x_2951 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2951.x, x_2950.x, x_2951.z, x_2950.y);
            let x_2954 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2954 * 0.08163200318813323975f);
            let x_2957 : vec4<f32> = u_xlat12;
            let x_2959 : vec3<f32> = (vec3<f32>(x_2957.z, x_2957.x, x_2957.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2960 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
            let x_2962 : vec4<f32> = u_xlat13;
            let x_2964 : vec2<f32> = (vec2<f32>(x_2962.x, x_2962.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2965 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2964.x, x_2964.y, x_2965.z, x_2965.w);
            let x_2968 : f32 = u_xlat16.y;
            u_xlat15.x = x_2968;
            let x_2970 : vec2<f32> = u_xlat61;
            let x_2973 : vec2<f32> = ((vec2<f32>(x_2970.x, x_2970.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2974 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2974.x, x_2973.x, x_2974.z, x_2973.y);
            let x_2976 : vec2<f32> = u_xlat61;
            let x_2979 : vec2<f32> = ((vec2<f32>(x_2976.x, x_2976.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2980 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2979.x, x_2980.y, x_2979.y, x_2980.w);
            let x_2983 : f32 = u_xlat12.x;
            u_xlat13.y = x_2983;
            let x_2986 : f32 = u_xlat14.y;
            u_xlat13.w = x_2986;
            let x_2988 : vec4<f32> = u_xlat13;
            let x_2989 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2988 + x_2989);
            let x_2991 : vec2<f32> = u_xlat61;
            let x_2994 : vec2<f32> = ((vec2<f32>(x_2991.y, x_2991.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2995 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2995.x, x_2994.x, x_2995.z, x_2994.y);
            let x_2997 : vec2<f32> = u_xlat61;
            let x_3000 : vec2<f32> = ((vec2<f32>(x_2997.y, x_2997.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3000.x, x_3001.y, x_3000.y, x_3001.w);
            let x_3004 : f32 = u_xlat12.y;
            u_xlat14.y = x_3004;
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3007 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3006 + x_3007);
            let x_3009 : vec4<f32> = u_xlat13;
            let x_3010 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3009 / x_3010);
            let x_3012 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3012 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3015 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3014 / x_3015);
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3017 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3019 : vec4<f32> = u_xlat13;
            let x_3022 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3019.w, x_3019.x, x_3019.y, x_3019.z) * vec4<f32>(x_3022.x, x_3022.x, x_3022.x, x_3022.x));
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3028 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3025.x, x_3025.w, x_3025.y, x_3025.z) * vec4<f32>(x_3028.y, x_3028.y, x_3028.y, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat13;
            let x_3032 : vec3<f32> = vec3<f32>(x_3031.y, x_3031.z, x_3031.w);
            let x_3033 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3032.x, x_3033.y, x_3032.y, x_3032.z);
            let x_3036 : f32 = u_xlat14.x;
            u_xlat16.y = x_3036;
            let x_3038 : vec4<f32> = u_xlat11;
            let x_3041 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3044 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3038.x, x_3038.y, x_3038.x, x_3038.y) * vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.y)) + vec4<f32>(x_3044.x, x_3044.y, x_3044.z, x_3044.y));
            let x_3047 : vec4<f32> = u_xlat11;
            let x_3050 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3047.x, x_3047.y) * vec2<f32>(x_3050.x, x_3050.y)) + vec2<f32>(x_3053.w, x_3053.y));
            let x_3057 : f32 = u_xlat16.y;
            u_xlat13.y = x_3057;
            let x_3060 : f32 = u_xlat14.z;
            u_xlat16.y = x_3060;
            let x_3062 : vec4<f32> = u_xlat11;
            let x_3065 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y) * vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y)) + vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3068.y));
            let x_3071 : vec4<f32> = u_xlat11;
            let x_3074 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat16;
            let x_3079 : vec2<f32> = ((vec2<f32>(x_3071.x, x_3071.y) * vec2<f32>(x_3074.x, x_3074.y)) + vec2<f32>(x_3077.w, x_3077.y));
            let x_3080 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3079.x, x_3079.y, x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat16.y;
            u_xlat13.z = x_3083;
            let x_3086 : vec4<f32> = u_xlat11;
            let x_3089 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3092 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3086.x, x_3086.y, x_3086.x, x_3086.y) * vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y)) + vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.z));
            let x_3096 : f32 = u_xlat14.w;
            u_xlat16.y = x_3096;
            let x_3099 : vec4<f32> = u_xlat11;
            let x_3102 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3105 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y) * vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y)) + vec4<f32>(x_3105.x, x_3105.y, x_3105.z, x_3105.y));
            let x_3109 : vec4<f32> = u_xlat11;
            let x_3112 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3109.x, x_3109.y) * vec2<f32>(x_3112.x, x_3112.y)) + vec2<f32>(x_3115.w, x_3115.y));
            let x_3119 : f32 = u_xlat16.y;
            u_xlat13.w = x_3119;
            let x_3122 : vec4<f32> = u_xlat11;
            let x_3125 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3128 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3122.x, x_3122.y) * vec2<f32>(x_3125.x, x_3125.y)) + vec2<f32>(x_3128.x, x_3128.w));
            let x_3131 : vec4<f32> = u_xlat16;
            let x_3132 : vec3<f32> = vec3<f32>(x_3131.x, x_3131.z, x_3131.w);
            let x_3133 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3132.x, x_3133.y, x_3132.y, x_3132.z);
            let x_3135 : vec4<f32> = u_xlat11;
            let x_3138 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3141 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3135.x, x_3135.y, x_3135.x, x_3135.y) * vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y)) + vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3141.y));
            let x_3144 : vec4<f32> = u_xlat11;
            let x_3147 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3144.x, x_3144.y) * vec2<f32>(x_3147.x, x_3147.y)) + vec2<f32>(x_3150.w, x_3150.y));
            let x_3154 : f32 = u_xlat13.x;
            u_xlat14.x = x_3154;
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat14;
            let x_3164 : vec2<f32> = ((vec2<f32>(x_3156.x, x_3156.y) * vec2<f32>(x_3159.x, x_3159.y)) + vec2<f32>(x_3162.x, x_3162.y));
            let x_3165 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
            let x_3168 : vec4<f32> = u_xlat12;
            let x_3170 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3168.x, x_3168.x, x_3168.x, x_3168.x) * x_3170);
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3175 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3173.y, x_3173.y, x_3173.y, x_3173.y) * x_3175);
            let x_3178 : vec4<f32> = u_xlat12;
            let x_3180 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3178.z, x_3178.z, x_3178.z, x_3178.z) * x_3180);
            let x_3182 : vec4<f32> = u_xlat12;
            let x_3184 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3182.w, x_3182.w, x_3182.w, x_3182.w) * x_3184);
            let x_3187 : vec4<f32> = u_xlat17;
            let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
            let x_3190 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3197 : vec3<f32> = txVec43;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat85 = x_3199;
            let x_3201 : vec4<f32> = u_xlat17;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.z, x_3201.w);
            let x_3204 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec44;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat13.x = x_3213;
            let x_3216 : f32 = u_xlat13.x;
            let x_3218 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3216 * x_3218);
            let x_3222 : f32 = u_xlat22.x;
            let x_3223 : f32 = u_xlat85;
            let x_3226 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3222 * x_3223) + x_3226);
            let x_3229 : vec2<f32> = u_xlat61;
            let x_3231 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec45;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat61.x = x_3240;
            let x_3243 : f32 = u_xlat22.z;
            let x_3245 : f32 = u_xlat61.x;
            let x_3247 : f32 = u_xlat85;
            u_xlat85 = ((x_3243 * x_3245) + x_3247);
            let x_3250 : vec4<f32> = u_xlat20;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.x, x_3250.y);
            let x_3253 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec46;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat61.x = x_3262;
            let x_3265 : f32 = u_xlat22.w;
            let x_3267 : f32 = u_xlat61.x;
            let x_3269 : f32 = u_xlat85;
            u_xlat85 = ((x_3265 * x_3267) + x_3269);
            let x_3272 : vec4<f32> = u_xlat18;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.x, x_3272.y);
            let x_3275 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec47;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat61.x = x_3284;
            let x_3287 : f32 = u_xlat23.x;
            let x_3289 : f32 = u_xlat61.x;
            let x_3291 : f32 = u_xlat85;
            u_xlat85 = ((x_3287 * x_3289) + x_3291);
            let x_3294 : vec4<f32> = u_xlat18;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.z, x_3294.w);
            let x_3297 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec48;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat61.x = x_3306;
            let x_3309 : f32 = u_xlat23.y;
            let x_3311 : f32 = u_xlat61.x;
            let x_3313 : f32 = u_xlat85;
            u_xlat85 = ((x_3309 * x_3311) + x_3313);
            let x_3316 : vec4<f32> = u_xlat19;
            let x_3317 : vec2<f32> = vec2<f32>(x_3316.x, x_3316.y);
            let x_3319 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
            let x_3326 : vec3<f32> = txVec49;
            let x_3328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
            u_xlat61.x = x_3328;
            let x_3331 : f32 = u_xlat23.z;
            let x_3333 : f32 = u_xlat61.x;
            let x_3335 : f32 = u_xlat85;
            u_xlat85 = ((x_3331 * x_3333) + x_3335);
            let x_3338 : vec4<f32> = u_xlat20;
            let x_3339 : vec2<f32> = vec2<f32>(x_3338.z, x_3338.w);
            let x_3341 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec50;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat61.x = x_3350;
            let x_3353 : f32 = u_xlat23.w;
            let x_3355 : f32 = u_xlat61.x;
            let x_3357 : f32 = u_xlat85;
            u_xlat85 = ((x_3353 * x_3355) + x_3357);
            let x_3360 : vec4<f32> = u_xlat21;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.x, x_3360.y);
            let x_3363 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec51;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat61.x = x_3372;
            let x_3375 : f32 = u_xlat24.x;
            let x_3377 : f32 = u_xlat61.x;
            let x_3379 : f32 = u_xlat85;
            u_xlat85 = ((x_3375 * x_3377) + x_3379);
            let x_3382 : vec4<f32> = u_xlat21;
            let x_3383 : vec2<f32> = vec2<f32>(x_3382.z, x_3382.w);
            let x_3385 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec52;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat61.x = x_3394;
            let x_3397 : f32 = u_xlat24.y;
            let x_3399 : f32 = u_xlat61.x;
            let x_3401 : f32 = u_xlat85;
            u_xlat85 = ((x_3397 * x_3399) + x_3401);
            let x_3404 : vec2<f32> = u_xlat38;
            let x_3406 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec53;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat61.x = x_3415;
            let x_3418 : f32 = u_xlat24.z;
            let x_3420 : f32 = u_xlat61.x;
            let x_3422 : f32 = u_xlat85;
            u_xlat85 = ((x_3418 * x_3420) + x_3422);
            let x_3425 : vec2<f32> = u_xlat69;
            let x_3427 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec54;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat61.x = x_3436;
            let x_3439 : f32 = u_xlat24.w;
            let x_3441 : f32 = u_xlat61.x;
            let x_3443 : f32 = u_xlat85;
            u_xlat85 = ((x_3439 * x_3441) + x_3443);
            let x_3446 : vec4<f32> = u_xlat16;
            let x_3447 : vec2<f32> = vec2<f32>(x_3446.x, x_3446.y);
            let x_3449 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec55;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat61.x = x_3458;
            let x_3461 : f32 = u_xlat12.x;
            let x_3463 : f32 = u_xlat61.x;
            let x_3465 : f32 = u_xlat85;
            u_xlat85 = ((x_3461 * x_3463) + x_3465);
            let x_3468 : vec4<f32> = u_xlat16;
            let x_3469 : vec2<f32> = vec2<f32>(x_3468.z, x_3468.w);
            let x_3471 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3469.x, x_3469.y, x_3471);
            let x_3478 : vec3<f32> = txVec56;
            let x_3480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3478.xy, x_3478.z);
            u_xlat61.x = x_3480;
            let x_3483 : f32 = u_xlat12.y;
            let x_3485 : f32 = u_xlat61.x;
            let x_3487 : f32 = u_xlat85;
            u_xlat85 = ((x_3483 * x_3485) + x_3487);
            let x_3490 : vec2<f32> = u_xlat64;
            let x_3492 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec57;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat61.x = x_3501;
            let x_3504 : f32 = u_xlat12.z;
            let x_3506 : f32 = u_xlat61.x;
            let x_3508 : f32 = u_xlat85;
            u_xlat85 = ((x_3504 * x_3506) + x_3508);
            let x_3511 : vec4<f32> = u_xlat11;
            let x_3512 : vec2<f32> = vec2<f32>(x_3511.x, x_3511.y);
            let x_3514 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3512.x, x_3512.y, x_3514);
            let x_3521 : vec3<f32> = txVec58;
            let x_3523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3521.xy, x_3521.z);
            u_xlat11.x = x_3523;
            let x_3526 : f32 = u_xlat12.w;
            let x_3528 : f32 = u_xlat11.x;
            let x_3530 : f32 = u_xlat85;
            u_xlat84 = ((x_3526 * x_3528) + x_3530);
          }
        }
      } else {
        let x_3534 : vec4<f32> = u_xlat10;
        let x_3535 : vec2<f32> = vec2<f32>(x_3534.x, x_3534.y);
        let x_3537 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
        let x_3544 : vec3<f32> = txVec59;
        let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
        u_xlat84 = x_3546;
      }
      let x_3547 : i32 = u_xlati80;
      let x_3549 : f32 = x_174.x_AdditionalShadowParams[x_3547].x;
      u_xlat10.x = (1.0f + -(x_3549));
      let x_3553 : f32 = u_xlat84;
      let x_3554 : i32 = u_xlati80;
      let x_3556 : f32 = x_174.x_AdditionalShadowParams[x_3554].x;
      let x_3559 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3553 * x_3556) + x_3559);
      let x_3562 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3562);
      let x_3567 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3567 >= 1.0f);
      let x_3569 : bool = u_xlatb35;
      let x_3571 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3569 | x_3571);
      let x_3575 : bool = u_xlatb10.x;
      let x_3576 : f32 = u_xlat84;
      u_xlat84 = select(x_3576, 1.0f, x_3575);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3579 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3579) + 1.0f);
    let x_3583 : f32 = u_xlat1;
    let x_3585 : f32 = u_xlat10.x;
    let x_3587 : f32 = u_xlat84;
    u_xlat84 = ((x_3583 * x_3585) + x_3587);
    let x_3589 : f32 = u_xlat81;
    let x_3590 : f32 = u_xlat84;
    u_xlat81 = (x_3589 * x_3590);
    let x_3592 : vec3<f32> = u_xlat26;
    let x_3593 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3592, vec3<f32>(x_3593.x, x_3593.y, x_3593.z));
    let x_3596 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3596, 0.0f, 1.0f);
    let x_3598 : f32 = u_xlat81;
    let x_3599 : f32 = u_xlat84;
    u_xlat81 = (x_3598 * x_3599);
    let x_3601 : f32 = u_xlat81;
    let x_3603 : i32 = u_xlati80;
    let x_3605 : vec4<f32> = x_2100.x_AdditionalLightsColor[x_3603];
    let x_3607 : vec3<f32> = (vec3<f32>(x_3601, x_3601, x_3601) * vec3<f32>(x_3605.x, x_3605.y, x_3605.z));
    let x_3608 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3607.x, x_3607.y, x_3607.z, x_3608.w);
    let x_3610 : vec4<f32> = u_xlat8;
    let x_3612 : f32 = u_xlat83;
    let x_3615 : vec3<f32> = u_xlat3;
    let x_3616 : vec3<f32> = ((vec3<f32>(x_3610.x, x_3610.y, x_3610.z) * vec3<f32>(x_3612, x_3612, x_3612)) + x_3615);
    let x_3617 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3616.x, x_3616.y, x_3616.z, x_3617.w);
    let x_3619 : vec4<f32> = u_xlat8;
    let x_3621 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3619.x, x_3619.y, x_3619.z), vec3<f32>(x_3621.x, x_3621.y, x_3621.z));
    let x_3624 : f32 = u_xlat80;
    u_xlat80 = max(x_3624, 1.17549435e-38f);
    let x_3626 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3626);
    let x_3628 : f32 = u_xlat80;
    let x_3630 : vec4<f32> = u_xlat8;
    let x_3632 : vec3<f32> = (vec3<f32>(x_3628, x_3628, x_3628) * vec3<f32>(x_3630.x, x_3630.y, x_3630.z));
    let x_3633 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
    let x_3635 : vec3<f32> = u_xlat26;
    let x_3636 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(x_3635, vec3<f32>(x_3636.x, x_3636.y, x_3636.z));
    let x_3639 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3639, 0.0f, 1.0f);
    let x_3641 : vec4<f32> = u_xlat9;
    let x_3643 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3641.x, x_3641.y, x_3641.z), vec3<f32>(x_3643.x, x_3643.y, x_3643.z));
    let x_3646 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3646, 0.0f, 1.0f);
    let x_3648 : f32 = u_xlat80;
    let x_3649 : f32 = u_xlat80;
    u_xlat80 = (x_3648 * x_3649);
    let x_3651 : f32 = u_xlat80;
    let x_3653 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3651 * x_3653) + 1.00001001358032226562f);
    let x_3656 : f32 = u_xlat81;
    let x_3657 : f32 = u_xlat81;
    u_xlat81 = (x_3656 * x_3657);
    let x_3659 : f32 = u_xlat80;
    let x_3660 : f32 = u_xlat80;
    u_xlat80 = (x_3659 * x_3660);
    let x_3662 : f32 = u_xlat81;
    u_xlat81 = max(x_3662, 0.10000000149011611938f);
    let x_3664 : f32 = u_xlat80;
    let x_3665 : f32 = u_xlat81;
    u_xlat80 = (x_3664 * x_3665);
    let x_3667 : f32 = u_xlat78;
    let x_3668 : f32 = u_xlat80;
    u_xlat80 = (x_3667 * x_3668);
    let x_3670 : f32 = u_xlat79;
    let x_3671 : f32 = u_xlat80;
    u_xlat80 = (x_3670 / x_3671);
    let x_3673 : vec4<f32> = u_xlat0;
    let x_3675 : f32 = u_xlat80;
    let x_3678 : vec3<f32> = u_xlat5;
    let x_3679 : vec3<f32> = ((vec3<f32>(x_3673.x, x_3673.y, x_3673.z) * vec3<f32>(x_3675, x_3675, x_3675)) + x_3678);
    let x_3680 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3679.x, x_3679.y, x_3679.z, x_3680.w);
    let x_3682 : vec4<f32> = u_xlat8;
    let x_3684 : vec4<f32> = u_xlat10;
    let x_3687 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3682.x, x_3682.y, x_3682.z) * vec3<f32>(x_3684.x, x_3684.y, x_3684.z)) + x_3687);

    continuing {
      let x_3689 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3689 + bitcast<u32>(1i));
    }
  }
  let x_3691 : vec4<f32> = u_xlat6;
  let x_3693 : vec4<f32> = u_xlat2;
  let x_3696 : vec4<f32> = u_xlat4;
  let x_3698 : vec3<f32> = ((vec3<f32>(x_3691.x, x_3691.y, x_3691.z) * vec3<f32>(x_3693.x, x_3693.z, x_3693.w)) + vec3<f32>(x_3696.x, x_3696.y, x_3696.z));
  let x_3699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3698.x, x_3698.y, x_3698.z, x_3699.w);
  let x_3703 : vec3<f32> = u_xlat32;
  let x_3704 : vec4<f32> = u_xlat0;
  let x_3706 : vec3<f32> = (x_3703 + vec3<f32>(x_3704.x, x_3704.y, x_3704.z));
  let x_3707 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3706.x, x_3706.y, x_3706.z, x_3707.w);
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


