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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_150 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1834 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2076 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
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
  var x_1730 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2216 : f32;
  var x_2227 : f32;
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
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat51;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : bool = u_xlatb26;
  if (x_89) {
    let x_95 : f32 = u_xlat2.x;
    x_91 = x_95;
  } else {
    let x_100 : f32 = x_29.unity_MatrixV[0i].z;
    x_91 = x_100;
  }
  let x_101 : f32 = x_91;
  u_xlat3.x = x_101;
  let x_103 : bool = u_xlatb26;
  if (x_103) {
    let x_109 : f32 = u_xlat2.y;
    x_104 = x_109;
  } else {
    let x_113 : f32 = x_29.unity_MatrixV[1i].z;
    x_104 = x_113;
  }
  let x_114 : f32 = x_104;
  u_xlat3.y = x_114;
  let x_116 : bool = u_xlatb26;
  if (x_116) {
    let x_121 : f32 = u_xlat2.z;
    x_117 = x_121;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[2i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.z = x_126;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_135);
  let x_138 : vec3<f32> = u_xlat26;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_138.x, x_138.x, x_138.x) * x_140);
  let x_142 : vec3<f32> = vs_TEXCOORD7;
  let x_153 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres0;
  let x_156 : vec3<f32> = (x_142 + -(vec3<f32>(x_153.x, x_153.y, x_153.z)));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec3<f32> = vs_TEXCOORD7;
  let x_162 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres1;
  let x_165 : vec3<f32> = (x_160 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_172 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_169 + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_177 : vec3<f32> = vs_TEXCOORD7;
  let x_179 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres3;
  let x_182 : vec3<f32> = (x_177 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec3<f32> = u_xlat5;
  let x_198 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_197, x_198);
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec4<f32> = x_150.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_210 < x_212);
  let x_215 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_215);
  let x_220 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_220);
  let x_224 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_247.y, x_247.z, x_247.w));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_255 : vec3<f32> = max(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_255.x, x_255.y, x_255.z);
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_258, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_266) + 4.0f);
  let x_273 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_273);
  let x_277 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_277) << bitcast<u32>(2i));
  let x_281 : vec3<f32> = vs_TEXCOORD7;
  let x_283 : i32 = u_xlati2;
  let x_286 : i32 = u_xlati2;
  let x_290 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_283 + 1i) / 4i)][((x_286 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_281.y, x_281.y, x_281.y) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : i32 = u_xlati2;
  let x_295 : i32 = u_xlati2;
  let x_298 : vec4<f32> = x_150.x_MainLightWorldToShadow[(x_293 / 4i)][(x_295 % 4i)];
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_303 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.x, x_300.x, x_300.x)) + x_303);
  let x_305 : i32 = u_xlati2;
  let x_308 : i32 = u_xlati2;
  let x_312 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_305 + 2i) / 4i)][((x_308 + 2i) % 4i)];
  let x_314 : vec3<f32> = vs_TEXCOORD7;
  let x_317 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.z, x_314.z, x_314.z)) + x_317);
  let x_319 : vec3<f32> = u_xlat27;
  let x_320 : i32 = u_xlati2;
  let x_323 : i32 = u_xlati2;
  let x_327 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_320 + 3i) / 4i)][((x_323 + 3i) % 4i)];
  let x_329 : vec3<f32> = (x_319 + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_337 : vec4<f32> = vs_TEXCOORD0;
  let x_340 : f32 = x_29.x_GlobalMipBias.x;
  let x_341 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_337.z, x_337.w), x_340);
  u_xlat4 = x_341;
  let x_346 : vec4<f32> = vs_TEXCOORD0;
  let x_349 : f32 = x_29.x_GlobalMipBias.x;
  let x_350 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_346.z, x_346.w), x_349);
  u_xlat5 = vec3<f32>(x_350.x, x_350.y, x_350.z);
  let x_352 : vec4<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec3<f32> = u_xlat26;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat77;
  u_xlat77 = (x_364 + 0.5f);
  let x_367 : f32 = u_xlat77;
  let x_369 : vec3<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat4.w;
  u_xlat77 = max(x_374, 0.00009999999747378752f);
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : f32 = u_xlat77;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) / vec3<f32>(x_379, x_379, x_379));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  u_xlat77 = ((-(x_384) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_390 : f32 = u_xlat77;
  u_xlat78 = (-(x_390) + 1.0f);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : f32 = u_xlat77;
  u_xlat5 = (vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395, x_395, x_395));
  let x_398 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  let x_407 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_416) + 1.0f);
  let x_419 : f32 = u_xlat1;
  let x_420 : f32 = u_xlat1;
  u_xlat77 = (x_419 * x_420);
  let x_422 : f32 = u_xlat77;
  u_xlat77 = max(x_422, 0.0078125f);
  let x_426 : f32 = u_xlat77;
  let x_427 : f32 = u_xlat77;
  u_xlat79 = (x_426 * x_427);
  let x_431 : f32 = u_xlat0.w;
  let x_432 : f32 = u_xlat78;
  u_xlat75 = (x_431 + x_432);
  let x_434 : f32 = u_xlat75;
  u_xlat75 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat77;
  u_xlat78 = ((x_436 * 4.0f) + 2.0f);
  let x_442 : f32 = x_150.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_442);
  let x_444 : bool = u_xlatb80;
  if (x_444) {
    let x_448 : f32 = x_150.x_MainLightShadowParams.y;
    u_xlatb80 = (x_448 == 1.0f);
    let x_450 : bool = u_xlatb80;
    if (x_450) {
      let x_453 : vec4<f32> = u_xlat2;
      let x_456 : vec4<f32> = x_150.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_453.x, x_453.y, x_453.x, x_453.y) + x_456);
      let x_460 : vec4<f32> = u_xlat6;
      let x_461 : vec2<f32> = vec2<f32>(x_460.x, x_460.y);
      let x_463 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_461.x, x_461.y, x_463);
      let x_476 : vec3<f32> = txVec0;
      let x_478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_476.xy, x_476.z);
      u_xlat7.x = x_478;
      let x_481 : vec4<f32> = u_xlat6;
      let x_482 : vec2<f32> = vec2<f32>(x_481.z, x_481.w);
      let x_484 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_491 : vec3<f32> = txVec1;
      let x_493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_491.xy, x_491.z);
      u_xlat7.y = x_493;
      let x_495 : vec4<f32> = u_xlat2;
      let x_499 : vec4<f32> = x_150.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_495.x, x_495.y, x_495.x, x_495.y) + x_499);
      let x_502 : vec4<f32> = u_xlat6;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_512 : vec3<f32> = txVec2;
      let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_512.xy, x_512.z);
      u_xlat7.z = x_514;
      let x_517 : vec4<f32> = u_xlat6;
      let x_518 : vec2<f32> = vec2<f32>(x_517.z, x_517.w);
      let x_520 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_518.x, x_518.y, x_520);
      let x_527 : vec3<f32> = txVec3;
      let x_529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_527.xy, x_527.z);
      u_xlat7.w = x_529;
      let x_532 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_532, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_539 : f32 = x_150.x_MainLightShadowParams.y;
      u_xlatb6 = (x_539 == 2.0f);
      let x_541 : bool = u_xlatb6;
      if (x_541) {
        let x_544 : vec4<f32> = u_xlat2;
        let x_548 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_552 : vec2<f32> = ((vec2<f32>(x_544.x, x_544.y) * vec2<f32>(x_548.z, x_548.w)) + vec2<f32>(0.5f, 0.5f));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_557 : vec2<f32> = floor(vec2<f32>(x_555.x, x_555.y));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_562 : vec4<f32> = u_xlat2;
        let x_565 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_565.z, x_565.w)) + -(vec2<f32>(x_568.x, x_568.y)));
        let x_572 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_572.x, x_572.x, x_572.y, x_572.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_577 : vec4<f32> = u_xlat7;
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_577.x, x_577.x, x_577.z, x_577.z) * vec4<f32>(x_579.x, x_579.x, x_579.z, x_579.z));
        let x_582 : vec4<f32> = u_xlat8;
        let x_586 : vec2<f32> = (vec2<f32>(x_582.y, x_582.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_587.y, x_586.y, x_587.w);
        let x_589 : vec4<f32> = u_xlat8;
        let x_592 : vec2<f32> = u_xlat56;
        let x_594 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.z) * vec2<f32>(0.5f, 0.5f)) + -(x_592));
        let x_595 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_598 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_598) + vec2<f32>(1.0f, 1.0f));
        let x_603 : vec2<f32> = u_xlat56;
        let x_605 : vec2<f32> = min(x_603, vec2<f32>(0.0f, 0.0f));
        let x_606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat9;
        let x_611 : vec4<f32> = u_xlat9;
        let x_614 : vec2<f32> = u_xlat58;
        let x_615 : vec2<f32> = ((-(vec2<f32>(x_608.x, x_608.y)) * vec2<f32>(x_611.x, x_611.y)) + x_614);
        let x_616 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
        let x_618 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_618, vec2<f32>(0.0f, 0.0f));
        let x_620 : vec2<f32> = u_xlat56;
        let x_622 : vec2<f32> = u_xlat56;
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_620) * x_622) + vec2<f32>(x_624.y, x_624.w));
        let x_627 : vec4<f32> = u_xlat9;
        let x_629 : vec2<f32> = (vec2<f32>(x_627.x, x_627.y) + vec2<f32>(1.0f, 1.0f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_632 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_632 + vec2<f32>(1.0f, 1.0f));
        let x_635 : vec4<f32> = u_xlat8;
        let x_639 : vec2<f32> = (vec2<f32>(x_635.x, x_635.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_640 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
        let x_642 : vec2<f32> = u_xlat58;
        let x_643 : vec2<f32> = (x_642 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_646 : vec4<f32> = u_xlat9;
        let x_648 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_652 : vec2<f32> = u_xlat56;
        let x_653 : vec2<f32> = (x_652 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_656.y, x_656.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_660 : f32 = u_xlat9.x;
        u_xlat10.z = x_660;
        let x_663 : f32 = u_xlat56.x;
        u_xlat10.w = x_663;
        let x_666 : f32 = u_xlat11.x;
        u_xlat8.z = x_666;
        let x_669 : f32 = u_xlat7.x;
        u_xlat8.w = x_669;
        let x_672 : vec4<f32> = u_xlat8;
        let x_674 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_672.z, x_672.w, x_672.x, x_672.z) + vec4<f32>(x_674.z, x_674.w, x_674.x, x_674.z));
        let x_678 : f32 = u_xlat10.y;
        u_xlat9.z = x_678;
        let x_681 : f32 = u_xlat56.y;
        u_xlat9.w = x_681;
        let x_684 : f32 = u_xlat8.y;
        u_xlat11.z = x_684;
        let x_687 : f32 = u_xlat7.z;
        u_xlat11.w = x_687;
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec4<f32> = u_xlat11;
        let x_693 : vec3<f32> = (vec3<f32>(x_689.z, x_689.y, x_689.w) + vec3<f32>(x_691.z, x_691.y, x_691.w));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat8;
        let x_698 : vec4<f32> = u_xlat12;
        let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.z, x_696.w) / vec3<f32>(x_698.z, x_698.w, x_698.y));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat8;
        let x_708 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat11;
        let x_713 : vec4<f32> = u_xlat7;
        let x_715 : vec3<f32> = (vec3<f32>(x_711.z, x_711.y, x_711.w) / vec3<f32>(x_713.x, x_713.y, x_713.z));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat9;
        let x_720 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_721 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat8;
        let x_726 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_728 : vec3<f32> = (vec3<f32>(x_723.y, x_723.x, x_723.z) * vec3<f32>(x_726.x, x_726.x, x_726.x));
        let x_729 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat9;
        let x_734 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_736 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_734.y, x_734.y, x_734.y));
        let x_737 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_740 : f32 = u_xlat9.x;
        u_xlat8.w = x_740;
        let x_742 : vec4<f32> = u_xlat6;
        let x_745 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) * vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y)) + vec4<f32>(x_748.y, x_748.w, x_748.x, x_748.w));
        let x_751 : vec4<f32> = u_xlat6;
        let x_754 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_751.x, x_751.y) * vec2<f32>(x_754.x, x_754.y)) + vec2<f32>(x_757.z, x_757.w));
        let x_761 : f32 = u_xlat8.y;
        u_xlat9.w = x_761;
        let x_763 : vec4<f32> = u_xlat9;
        let x_764 : vec2<f32> = vec2<f32>(x_763.y, x_763.z);
        let x_765 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_765.x, x_764.x, x_765.z, x_764.y);
        let x_767 : vec4<f32> = u_xlat6;
        let x_770 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y) * vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y)) + vec4<f32>(x_773.x, x_773.y, x_773.z, x_773.y));
        let x_776 : vec4<f32> = u_xlat6;
        let x_779 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_782 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y) * vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y)) + vec4<f32>(x_782.w, x_782.y, x_782.w, x_782.z));
        let x_785 : vec4<f32> = u_xlat6;
        let x_788 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y) * vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y)) + vec4<f32>(x_791.x, x_791.w, x_791.z, x_791.w));
        let x_795 : vec4<f32> = u_xlat7;
        let x_797 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_795.x, x_795.x, x_795.x, x_795.y) * vec4<f32>(x_797.z, x_797.w, x_797.y, x_797.z));
        let x_801 : vec4<f32> = u_xlat7;
        let x_803 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_801.y, x_801.y, x_801.z, x_801.z) * x_803);
        let x_806 : f32 = u_xlat7.z;
        let x_808 : f32 = u_xlat12.y;
        u_xlat6.x = (x_806 * x_808);
        let x_812 : vec4<f32> = u_xlat10;
        let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
        let x_815 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_823 : vec3<f32> = txVec4;
        let x_825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_823.xy, x_823.z);
        u_xlat31 = x_825;
        let x_827 : vec4<f32> = u_xlat10;
        let x_828 : vec2<f32> = vec2<f32>(x_827.z, x_827.w);
        let x_830 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec5;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat7.x = x_839;
        let x_842 : f32 = u_xlat7.x;
        let x_844 : f32 = u_xlat13.y;
        u_xlat7.x = (x_842 * x_844);
        let x_848 : f32 = u_xlat13.x;
        let x_849 : f32 = u_xlat31;
        let x_852 : f32 = u_xlat7.x;
        u_xlat31 = ((x_848 * x_849) + x_852);
        let x_855 : vec2<f32> = u_xlat56;
        let x_857 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec6;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat56.x = x_866;
        let x_869 : f32 = u_xlat13.z;
        let x_871 : f32 = u_xlat56.x;
        let x_873 : f32 = u_xlat31;
        u_xlat31 = ((x_869 * x_871) + x_873);
        let x_876 : vec4<f32> = u_xlat9;
        let x_877 : vec2<f32> = vec2<f32>(x_876.x, x_876.y);
        let x_879 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec7;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
        u_xlat56.x = x_888;
        let x_891 : f32 = u_xlat13.w;
        let x_893 : f32 = u_xlat56.x;
        let x_895 : f32 = u_xlat31;
        u_xlat31 = ((x_891 * x_893) + x_895);
        let x_898 : vec4<f32> = u_xlat11;
        let x_899 : vec2<f32> = vec2<f32>(x_898.x, x_898.y);
        let x_901 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_908 : vec3<f32> = txVec8;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat56.x = x_910;
        let x_913 : f32 = u_xlat14.x;
        let x_915 : f32 = u_xlat56.x;
        let x_917 : f32 = u_xlat31;
        u_xlat31 = ((x_913 * x_915) + x_917);
        let x_920 : vec4<f32> = u_xlat11;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec9;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat56.x = x_932;
        let x_935 : f32 = u_xlat14.y;
        let x_937 : f32 = u_xlat56.x;
        let x_939 : f32 = u_xlat31;
        u_xlat31 = ((x_935 * x_937) + x_939);
        let x_942 : vec4<f32> = u_xlat9;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec10;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat56.x = x_954;
        let x_957 : f32 = u_xlat14.z;
        let x_959 : f32 = u_xlat56.x;
        let x_961 : f32 = u_xlat31;
        u_xlat31 = ((x_957 * x_959) + x_961);
        let x_964 : vec4<f32> = u_xlat8;
        let x_965 : vec2<f32> = vec2<f32>(x_964.x, x_964.y);
        let x_967 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_965.x, x_965.y, x_967);
        let x_974 : vec3<f32> = txVec11;
        let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_974.xy, x_974.z);
        u_xlat56.x = x_976;
        let x_979 : f32 = u_xlat14.w;
        let x_981 : f32 = u_xlat56.x;
        let x_983 : f32 = u_xlat31;
        u_xlat31 = ((x_979 * x_981) + x_983);
        let x_986 : vec4<f32> = u_xlat8;
        let x_987 : vec2<f32> = vec2<f32>(x_986.z, x_986.w);
        let x_989 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_996 : vec3<f32> = txVec12;
        let x_998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_996.xy, x_996.z);
        u_xlat56.x = x_998;
        let x_1001 : f32 = u_xlat6.x;
        let x_1003 : f32 = u_xlat56.x;
        let x_1005 : f32 = u_xlat31;
        u_xlat80 = ((x_1001 * x_1003) + x_1005);
      } else {
        let x_1008 : vec4<f32> = u_xlat2;
        let x_1011 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat2;
        let x_1025 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1032.x, x_1032.x, x_1032.y, x_1032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1035.x, x_1035.x, x_1035.z, x_1035.z) * vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.y, x_1040.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1050 : vec2<f32> = u_xlat56;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1050));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat56;
        let x_1057 : vec2<f32> = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1060, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec2<f32> = u_xlat58;
        let x_1064 : vec2<f32> = u_xlat58;
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = ((-(x_1062) * x_1064) + vec2<f32>(x_1066.x, x_1066.y));
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1071, vec2<f32>(0.0f, 0.0f));
        let x_1074 : vec2<f32> = u_xlat58;
        let x_1076 : vec2<f32> = u_xlat58;
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec2<f32> = ((-(x_1074) * x_1076) + vec2<f32>(x_1078.y, x_1078.w));
        let x_1081 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1086 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(2.0f, 2.0f));
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec3<f32> = u_xlat32;
        let x_1091 : vec2<f32> = (vec2<f32>(x_1089.x, x_1089.z) + vec2<f32>(2.0f, 2.0f));
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1095 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1095 * 0.08163200318813323975f);
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1102 : vec3<f32> = (vec3<f32>(x_1099.z, x_1099.x, x_1099.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : f32 = u_xlat11.y;
        u_xlat10.x = x_1112;
        let x_1114 : vec2<f32> = u_xlat56;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1122 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1124 : vec2<f32> = u_xlat56;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1132 : f32 = u_xlat7.x;
        u_xlat8.y = x_1132;
        let x_1135 : f32 = u_xlat9.y;
        u_xlat8.w = x_1135;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1137 + x_1138);
        let x_1140 : vec2<f32> = u_xlat56;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec2<f32> = u_xlat56;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1146.y, x_1146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1153 : f32 = u_xlat7.y;
        u_xlat9.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat9;
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1155 + x_1156);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1167 / x_1168);
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1170 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1172.w, x_1172.x, x_1172.y, x_1172.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x));
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1181 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1178.x, x_1178.w, x_1178.y, x_1178.z) * vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y));
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1185 : vec3<f32> = vec3<f32>(x_1184.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1185.z);
        let x_1189 : f32 = u_xlat9.x;
        u_xlat11.y = x_1189;
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1194 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat6;
        let x_1203 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat11.y;
        u_xlat8.y = x_1210;
        let x_1213 : f32 = u_xlat9.z;
        u_xlat11.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat11;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1236 : f32 = u_xlat11.y;
        u_xlat8.z = x_1236;
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.z));
        let x_1249 : f32 = u_xlat9.w;
        u_xlat11.y = x_1249;
        let x_1252 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1272 : f32 = u_xlat11.y;
        u_xlat8.w = x_1272;
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.x, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.x, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1291 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1308 : f32 = u_xlat8.x;
        u_xlat9.x = x_1308;
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1313 : vec4<f32> = x_150.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat9;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.x, x_1316.y));
        let x_1319 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
        let x_1322 : vec4<f32> = u_xlat7;
        let x_1324 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1322.x, x_1322.x, x_1322.x, x_1322.x) * x_1324);
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1327.y, x_1327.y, x_1327.y, x_1327.y) * x_1329);
        let x_1332 : vec4<f32> = u_xlat7;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1332.z, x_1332.z, x_1332.z, x_1332.z) * x_1334);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1336.w, x_1336.w, x_1336.w, x_1336.w) * x_1338);
        let x_1341 : vec4<f32> = u_xlat12;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec13;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat8.x = x_1353;
        let x_1356 : vec4<f32> = u_xlat12;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1367 : vec3<f32> = txVec14;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat83 = x_1369;
        let x_1370 : f32 = u_xlat83;
        let x_1372 : f32 = u_xlat17.y;
        u_xlat83 = (x_1370 * x_1372);
        let x_1375 : f32 = u_xlat17.x;
        let x_1377 : f32 = u_xlat8.x;
        let x_1379 : f32 = u_xlat83;
        u_xlat8.x = ((x_1375 * x_1377) + x_1379);
        let x_1383 : vec2<f32> = u_xlat56;
        let x_1385 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec15;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat56.x = x_1394;
        let x_1397 : f32 = u_xlat17.z;
        let x_1399 : f32 = u_xlat56.x;
        let x_1402 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1397 * x_1399) + x_1402);
        let x_1406 : vec4<f32> = u_xlat15;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1417 : vec3<f32> = txVec16;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat81 = x_1419;
        let x_1421 : f32 = u_xlat17.w;
        let x_1422 : f32 = u_xlat81;
        let x_1425 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1421 * x_1422) + x_1425);
        let x_1429 : vec4<f32> = u_xlat13;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec17;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat81 = x_1441;
        let x_1443 : f32 = u_xlat18.x;
        let x_1444 : f32 = u_xlat81;
        let x_1447 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1443 * x_1444) + x_1447);
        let x_1451 : vec4<f32> = u_xlat13;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec18;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat81 = x_1463;
        let x_1465 : f32 = u_xlat18.y;
        let x_1466 : f32 = u_xlat81;
        let x_1469 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1465 * x_1466) + x_1469);
        let x_1473 : vec4<f32> = u_xlat14;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec19;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat81 = x_1485;
        let x_1487 : f32 = u_xlat18.z;
        let x_1488 : f32 = u_xlat81;
        let x_1491 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1487 * x_1488) + x_1491);
        let x_1495 : vec4<f32> = u_xlat15;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec20;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
        u_xlat81 = x_1507;
        let x_1509 : f32 = u_xlat18.w;
        let x_1510 : f32 = u_xlat81;
        let x_1513 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1509 * x_1510) + x_1513);
        let x_1517 : vec4<f32> = u_xlat16;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
        let x_1520 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec21;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat81 = x_1529;
        let x_1531 : f32 = u_xlat19.x;
        let x_1532 : f32 = u_xlat81;
        let x_1535 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1531 * x_1532) + x_1535);
        let x_1539 : vec4<f32> = u_xlat16;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.z, x_1539.w);
        let x_1542 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec22;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1549.xy, x_1549.z);
        u_xlat81 = x_1551;
        let x_1553 : f32 = u_xlat19.y;
        let x_1554 : f32 = u_xlat81;
        let x_1557 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1553 * x_1554) + x_1557);
        let x_1561 : vec2<f32> = u_xlat33;
        let x_1563 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec23;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat81 = x_1572;
        let x_1574 : f32 = u_xlat19.z;
        let x_1575 : f32 = u_xlat81;
        let x_1578 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1574 * x_1575) + x_1578);
        let x_1582 : vec2<f32> = u_xlat64;
        let x_1584 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec24;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1591.xy, x_1591.z);
        u_xlat81 = x_1593;
        let x_1595 : f32 = u_xlat19.w;
        let x_1596 : f32 = u_xlat81;
        let x_1599 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1595 * x_1596) + x_1599);
        let x_1603 : vec4<f32> = u_xlat11;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.x, x_1603.y);
        let x_1606 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec25;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat81 = x_1615;
        let x_1617 : f32 = u_xlat7.x;
        let x_1618 : f32 = u_xlat81;
        let x_1621 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1617 * x_1618) + x_1621);
        let x_1625 : vec4<f32> = u_xlat11;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec26;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat81 = x_1637;
        let x_1639 : f32 = u_xlat7.y;
        let x_1640 : f32 = u_xlat81;
        let x_1643 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1639 * x_1640) + x_1643);
        let x_1647 : vec2<f32> = u_xlat59;
        let x_1649 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec27;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1656.xy, x_1656.z);
        u_xlat81 = x_1658;
        let x_1660 : f32 = u_xlat7.z;
        let x_1661 : f32 = u_xlat81;
        let x_1664 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1660 * x_1661) + x_1664);
        let x_1668 : vec4<f32> = u_xlat6;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
        let x_1671 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec28;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1678.xy, x_1678.z);
        u_xlat6.x = x_1680;
        let x_1683 : f32 = u_xlat7.w;
        let x_1685 : f32 = u_xlat6.x;
        let x_1688 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1683 * x_1685) + x_1688);
      }
    }
  } else {
    let x_1692 : vec4<f32> = u_xlat2;
    let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
    let x_1695 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
    let x_1702 : vec3<f32> = txVec29;
    let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1702.xy, x_1702.z);
    u_xlat80 = x_1704;
  }
  let x_1706 : f32 = x_150.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1706) + 1.0f);
  let x_1710 : f32 = u_xlat80;
  let x_1712 : f32 = x_150.x_MainLightShadowParams.x;
  let x_1715 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1710 * x_1712) + x_1715);
  let x_1720 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_1720);
  let x_1724 : f32 = u_xlat2.z;
  u_xlatb52 = (x_1724 >= 1.0f);
  let x_1726 : bool = u_xlatb52;
  let x_1727 : bool = u_xlatb27;
  u_xlatb27 = (x_1726 | x_1727);
  let x_1729 : bool = u_xlatb27;
  if (x_1729) {
    x_1730 = 1.0f;
  } else {
    let x_1735 : f32 = u_xlat2.x;
    x_1730 = x_1735;
  }
  let x_1736 : f32 = x_1730;
  u_xlat2.x = x_1736;
  let x_1738 : vec3<f32> = vs_TEXCOORD7;
  let x_1740 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1742 : vec3<f32> = (x_1738 + -(x_1740));
  let x_1743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
  let x_1745 : vec4<f32> = u_xlat6;
  let x_1747 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_1745.x, x_1745.y, x_1745.z), vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
  let x_1753 : f32 = u_xlat27.x;
  let x_1755 : f32 = x_150.x_MainLightShadowParams.z;
  let x_1758 : f32 = x_150.x_MainLightShadowParams.w;
  u_xlat52 = ((x_1753 * x_1755) + x_1758);
  let x_1760 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1760, 0.0f, 1.0f);
  let x_1763 : f32 = u_xlat2.x;
  u_xlat80 = (-(x_1763) + 1.0f);
  let x_1766 : f32 = u_xlat52;
  let x_1767 : f32 = u_xlat80;
  let x_1770 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1766 * x_1767) + x_1770);
  let x_1773 : vec3<f32> = u_xlat3;
  let x_1775 : vec3<f32> = u_xlat26;
  u_xlat52 = dot(-(x_1773), x_1775);
  let x_1777 : f32 = u_xlat52;
  let x_1778 : f32 = u_xlat52;
  u_xlat52 = (x_1777 + x_1778);
  let x_1780 : vec3<f32> = u_xlat26;
  let x_1781 : f32 = u_xlat52;
  let x_1785 : vec3<f32> = u_xlat3;
  let x_1787 : vec3<f32> = ((x_1780 * -(vec3<f32>(x_1781, x_1781, x_1781))) + -(x_1785));
  let x_1788 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  let x_1790 : vec3<f32> = u_xlat26;
  let x_1791 : vec3<f32> = u_xlat3;
  u_xlat52 = dot(x_1790, x_1791);
  let x_1793 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1793, 0.0f, 1.0f);
  let x_1795 : f32 = u_xlat52;
  u_xlat52 = (-(x_1795) + 1.0f);
  let x_1798 : f32 = u_xlat52;
  let x_1799 : f32 = u_xlat52;
  u_xlat52 = (x_1798 * x_1799);
  let x_1801 : f32 = u_xlat52;
  let x_1802 : f32 = u_xlat52;
  u_xlat52 = (x_1801 * x_1802);
  let x_1804 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1804) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1810 : f32 = u_xlat1;
  let x_1811 : f32 = u_xlat80;
  u_xlat1 = (x_1810 * x_1811);
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = (x_1813 * 6.0f);
  let x_1824 : vec4<f32> = u_xlat6;
  let x_1826 : f32 = u_xlat1;
  let x_1827 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1824.x, x_1824.y, x_1824.z), x_1826);
  u_xlat6 = x_1827;
  let x_1829 : f32 = u_xlat6.w;
  u_xlat1 = (x_1829 + -1.0f);
  let x_1836 : f32 = x_1834.unity_SpecCube0_HDR.w;
  let x_1837 : f32 = u_xlat1;
  u_xlat1 = ((x_1836 * x_1837) + 1.0f);
  let x_1840 : f32 = u_xlat1;
  u_xlat1 = max(x_1840, 0.0f);
  let x_1842 : f32 = u_xlat1;
  u_xlat1 = log2(x_1842);
  let x_1844 : f32 = u_xlat1;
  let x_1846 : f32 = x_1834.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1844 * x_1846);
  let x_1848 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1848);
  let x_1850 : f32 = u_xlat1;
  let x_1852 : f32 = x_1834.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1850 * x_1852);
  let x_1854 : vec4<f32> = u_xlat6;
  let x_1856 : f32 = u_xlat1;
  let x_1858 : vec3<f32> = (vec3<f32>(x_1854.x, x_1854.y, x_1854.z) * vec3<f32>(x_1856, x_1856, x_1856));
  let x_1859 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1861 : f32 = u_xlat77;
  let x_1863 : f32 = u_xlat77;
  let x_1867 : vec2<f32> = ((vec2<f32>(x_1861, x_1861) * vec2<f32>(x_1863, x_1863)) + vec2<f32>(-1.0f, 1.0f));
  let x_1868 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
  let x_1871 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1871);
  let x_1873 : vec4<f32> = u_xlat0;
  let x_1876 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1873.x, x_1873.y, x_1873.z)) + vec3<f32>(x_1876, x_1876, x_1876));
  let x_1879 : f32 = u_xlat52;
  let x_1881 : vec3<f32> = u_xlat32;
  let x_1883 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1879, x_1879, x_1879) * x_1881) + vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
  let x_1886 : f32 = u_xlat1;
  let x_1888 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1886, x_1886, x_1886) * x_1888);
  let x_1890 : vec4<f32> = u_xlat6;
  let x_1892 : vec3<f32> = u_xlat32;
  let x_1893 : vec3<f32> = (vec3<f32>(x_1890.x, x_1890.y, x_1890.z) * x_1892);
  let x_1894 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : vec4<f32> = u_xlat4;
  let x_1898 : vec3<f32> = u_xlat5;
  let x_1900 : vec4<f32> = u_xlat6;
  let x_1902 : vec3<f32> = ((vec3<f32>(x_1896.x, x_1896.y, x_1896.z) * x_1898) + vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1906 : f32 = u_xlat2.x;
  let x_1908 : f32 = x_1834.unity_LightData.z;
  u_xlat75 = (x_1906 * x_1908);
  let x_1910 : vec3<f32> = u_xlat26;
  let x_1912 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1910, vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1915, 0.0f, 1.0f);
  let x_1917 : f32 = u_xlat75;
  let x_1918 : f32 = u_xlat1;
  u_xlat75 = (x_1917 * x_1918);
  let x_1920 : f32 = u_xlat75;
  let x_1923 : vec4<f32> = x_29.x_MainLightColor;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1920, x_1920, x_1920) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1925.x, x_1926.y, x_1925.y, x_1925.z);
  let x_1928 : vec3<f32> = u_xlat3;
  let x_1930 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1932 : vec3<f32> = (x_1928 + vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
  let x_1933 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
  let x_1935 : vec4<f32> = u_xlat6;
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : f32 = u_xlat75;
  u_xlat75 = max(x_1940, 1.17549435e-38f);
  let x_1943 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1943);
  let x_1945 : f32 = u_xlat75;
  let x_1947 : vec4<f32> = u_xlat6;
  let x_1949 : vec3<f32> = (vec3<f32>(x_1945, x_1945, x_1945) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
  let x_1952 : vec3<f32> = u_xlat26;
  let x_1953 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1952, vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1956, 0.0f, 1.0f);
  let x_1959 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1961 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1964, 0.0f, 1.0f);
  let x_1966 : f32 = u_xlat75;
  let x_1967 : f32 = u_xlat75;
  u_xlat75 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat75;
  let x_1971 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1969 * x_1971) + 1.00001001358032226562f);
  let x_1975 : f32 = u_xlat1;
  let x_1976 : f32 = u_xlat1;
  u_xlat1 = (x_1975 * x_1976);
  let x_1978 : f32 = u_xlat75;
  let x_1979 : f32 = u_xlat75;
  u_xlat75 = (x_1978 * x_1979);
  let x_1981 : f32 = u_xlat1;
  u_xlat1 = max(x_1981, 0.10000000149011611938f);
  let x_1984 : f32 = u_xlat75;
  let x_1985 : f32 = u_xlat1;
  u_xlat75 = (x_1984 * x_1985);
  let x_1987 : f32 = u_xlat78;
  let x_1988 : f32 = u_xlat75;
  u_xlat75 = (x_1987 * x_1988);
  let x_1990 : f32 = u_xlat79;
  let x_1991 : f32 = u_xlat75;
  u_xlat75 = (x_1990 / x_1991);
  let x_1993 : vec4<f32> = u_xlat0;
  let x_1995 : f32 = u_xlat75;
  let x_1998 : vec3<f32> = u_xlat5;
  let x_1999 : vec3<f32> = ((vec3<f32>(x_1993.x, x_1993.y, x_1993.z) * vec3<f32>(x_1995, x_1995, x_1995)) + x_1998);
  let x_2000 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2003 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2005 : f32 = x_1834.unity_LightData.y;
  u_xlat75 = min(x_2003, x_2005);
  let x_2008 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2008));
  let x_2012 : f32 = u_xlat27.x;
  let x_2015 : f32 = x_150.x_AdditionalShadowFadeParams.x;
  let x_2018 : f32 = x_150.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2012 * x_2015) + x_2018);
  let x_2020 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2020, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2032 : u32 = u_xlatu_loop_1;
    let x_2033 : u32 = u_xlatu75;
    if ((x_2032 < x_2033)) {
    } else {
      break;
    }
    let x_2036 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2036 >> 2u);
    let x_2039 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2039 & 3u));
    let x_2042 : u32 = u_xlatu80;
    let x_2045 : vec4<f32> = x_1834.unity_LightIndices[bitcast<i32>(x_2042)];
    let x_2055 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2060 : vec4<u32> = indexable[x_2055];
    u_xlat80 = dot(x_2045, bitcast<vec4<f32>>(x_2060));
    let x_2064 : f32 = u_xlat80;
    u_xlati80 = i32(x_2064);
    let x_2066 : vec3<f32> = vs_TEXCOORD7;
    let x_2077 : i32 = u_xlati80;
    let x_2079 : vec4<f32> = x_2076.x_AdditionalLightsPosition[x_2077];
    let x_2082 : i32 = u_xlati80;
    let x_2084 : vec4<f32> = x_2076.x_AdditionalLightsPosition[x_2082];
    let x_2086 : vec3<f32> = ((-(x_2066) * vec3<f32>(x_2079.w, x_2079.w, x_2079.w)) + vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
    let x_2087 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
    let x_2089 : vec4<f32> = u_xlat8;
    let x_2091 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2089.x, x_2089.y, x_2089.z), vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
    let x_2094 : f32 = u_xlat81;
    u_xlat81 = max(x_2094, 0.00006103515625f);
    let x_2097 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2097);
    let x_2099 : f32 = u_xlat83;
    let x_2101 : vec4<f32> = u_xlat8;
    let x_2103 : vec3<f32> = (vec3<f32>(x_2099, x_2099, x_2099) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2107 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2107);
    let x_2109 : f32 = u_xlat81;
    let x_2110 : i32 = u_xlati80;
    let x_2112 : f32 = x_2076.x_AdditionalLightsAttenuation[x_2110].x;
    u_xlat81 = (x_2109 * x_2112);
    let x_2114 : f32 = u_xlat81;
    let x_2116 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2114) * x_2116) + 1.0f);
    let x_2119 : f32 = u_xlat81;
    u_xlat81 = max(x_2119, 0.0f);
    let x_2121 : f32 = u_xlat81;
    let x_2122 : f32 = u_xlat81;
    u_xlat81 = (x_2121 * x_2122);
    let x_2124 : f32 = u_xlat81;
    let x_2125 : f32 = u_xlat84;
    u_xlat81 = (x_2124 * x_2125);
    let x_2127 : i32 = u_xlati80;
    let x_2129 : vec4<f32> = x_2076.x_AdditionalLightsSpotDir[x_2127];
    let x_2131 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2129.x, x_2129.y, x_2129.z), vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
    let x_2134 : f32 = u_xlat84;
    let x_2135 : i32 = u_xlati80;
    let x_2137 : f32 = x_2076.x_AdditionalLightsAttenuation[x_2135].z;
    let x_2139 : i32 = u_xlati80;
    let x_2141 : f32 = x_2076.x_AdditionalLightsAttenuation[x_2139].w;
    u_xlat84 = ((x_2134 * x_2137) + x_2141);
    let x_2143 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2143, 0.0f, 1.0f);
    let x_2145 : f32 = u_xlat84;
    let x_2146 : f32 = u_xlat84;
    u_xlat84 = (x_2145 * x_2146);
    let x_2148 : f32 = u_xlat81;
    let x_2149 : f32 = u_xlat84;
    u_xlat81 = (x_2148 * x_2149);
    let x_2153 : i32 = u_xlati80;
    let x_2155 : f32 = x_150.x_AdditionalShadowParams[x_2153].w;
    u_xlati84 = i32(x_2155);
    let x_2160 : i32 = u_xlati84;
    u_xlatb10.x = (x_2160 >= 0i);
    let x_2164 : bool = u_xlatb10.x;
    if (x_2164) {
      let x_2168 : i32 = u_xlati80;
      let x_2170 : f32 = x_150.x_AdditionalShadowParams[x_2168].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2170, x_2170, x_2170, x_2170))));
      let x_2176 : bool = u_xlatb10.x;
      if (x_2176) {
        let x_2179 : vec4<f32> = u_xlat9;
        let x_2182 : vec4<f32> = u_xlat9;
        let x_2185 : vec4<bool> = (abs(vec4<f32>(x_2179.z, x_2179.z, x_2179.y, x_2179.z)) >= abs(vec4<f32>(x_2182.x, x_2182.y, x_2182.x, x_2182.x)));
        u_xlatb10 = vec3<bool>(x_2185.x, x_2185.y, x_2185.z);
        let x_2188 : bool = u_xlatb10.y;
        let x_2190 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2188 & x_2190);
        let x_2194 : vec4<f32> = u_xlat9;
        let x_2197 : vec4<bool> = (-(vec4<f32>(x_2194.z, x_2194.y, x_2194.x, x_2194.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2197.x, x_2197.y, x_2197.z);
        let x_2201 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2201);
        let x_2206 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2206);
        let x_2210 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2210);
        let x_2215 : bool = u_xlatb10.z;
        if (x_2215) {
          let x_2220 : f32 = u_xlat35.z;
          x_2216 = x_2220;
        } else {
          let x_2223 : f32 = u_xlat11.x;
          x_2216 = x_2223;
        }
        let x_2224 : f32 = x_2216;
        u_xlat60 = x_2224;
        let x_2226 : bool = u_xlatb10.x;
        if (x_2226) {
          let x_2231 : f32 = u_xlat35.x;
          x_2227 = x_2231;
        } else {
          let x_2233 : f32 = u_xlat60;
          x_2227 = x_2233;
        }
        let x_2234 : f32 = x_2227;
        u_xlat10.x = x_2234;
        let x_2236 : i32 = u_xlati80;
        let x_2238 : f32 = x_150.x_AdditionalShadowParams[x_2236].w;
        u_xlat35.x = trunc(x_2238);
        let x_2242 : f32 = u_xlat10.x;
        let x_2244 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2242 + x_2244);
        let x_2248 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2248);
      }
      let x_2250 : i32 = u_xlati84;
      u_xlati84 = (x_2250 << bitcast<u32>(2i));
      let x_2252 : vec3<f32> = vs_TEXCOORD7;
      let x_2255 : i32 = u_xlati84;
      let x_2258 : i32 = u_xlati84;
      let x_2262 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_2255 + 1i) / 4i)][((x_2258 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2252.y, x_2252.y, x_2252.y, x_2252.y) * x_2262);
      let x_2264 : i32 = u_xlati84;
      let x_2266 : i32 = u_xlati84;
      let x_2269 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[(x_2264 / 4i)][(x_2266 % 4i)];
      let x_2270 : vec3<f32> = vs_TEXCOORD7;
      let x_2273 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2269 * vec4<f32>(x_2270.x, x_2270.x, x_2270.x, x_2270.x)) + x_2273);
      let x_2275 : i32 = u_xlati84;
      let x_2278 : i32 = u_xlati84;
      let x_2282 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_2275 + 2i) / 4i)][((x_2278 + 2i) % 4i)];
      let x_2283 : vec3<f32> = vs_TEXCOORD7;
      let x_2286 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2282 * vec4<f32>(x_2283.z, x_2283.z, x_2283.z, x_2283.z)) + x_2286);
      let x_2288 : vec4<f32> = u_xlat10;
      let x_2289 : i32 = u_xlati84;
      let x_2292 : i32 = u_xlati84;
      let x_2296 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_2289 + 3i) / 4i)][((x_2292 + 3i) % 4i)];
      u_xlat10 = (x_2288 + x_2296);
      let x_2298 : vec4<f32> = u_xlat10;
      let x_2300 : vec4<f32> = u_xlat10;
      let x_2302 : vec3<f32> = (vec3<f32>(x_2298.x, x_2298.y, x_2298.z) / vec3<f32>(x_2300.w, x_2300.w, x_2300.w));
      let x_2303 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
      let x_2306 : i32 = u_xlati80;
      let x_2308 : f32 = x_150.x_AdditionalShadowParams[x_2306].y;
      u_xlatb84 = (0.0f < x_2308);
      let x_2310 : bool = u_xlatb84;
      if (x_2310) {
        let x_2313 : i32 = u_xlati80;
        let x_2315 : f32 = x_150.x_AdditionalShadowParams[x_2313].y;
        u_xlatb84 = (1.0f == x_2315);
        let x_2317 : bool = u_xlatb84;
        if (x_2317) {
          let x_2320 : vec4<f32> = u_xlat10;
          let x_2324 : vec4<f32> = x_150.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2320.x, x_2320.y, x_2320.x, x_2320.y) + x_2324);
          let x_2327 : vec4<f32> = u_xlat11;
          let x_2328 : vec2<f32> = vec2<f32>(x_2327.x, x_2327.y);
          let x_2330 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
          let x_2338 : vec3<f32> = txVec30;
          let x_2340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
          u_xlat12.x = x_2340;
          let x_2343 : vec4<f32> = u_xlat11;
          let x_2344 : vec2<f32> = vec2<f32>(x_2343.z, x_2343.w);
          let x_2346 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2344.x, x_2344.y, x_2346);
          let x_2353 : vec3<f32> = txVec31;
          let x_2355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2353.xy, x_2353.z);
          u_xlat12.y = x_2355;
          let x_2357 : vec4<f32> = u_xlat10;
          let x_2361 : vec4<f32> = x_150.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y) + x_2361);
          let x_2364 : vec4<f32> = u_xlat11;
          let x_2365 : vec2<f32> = vec2<f32>(x_2364.x, x_2364.y);
          let x_2367 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2365.x, x_2365.y, x_2367);
          let x_2374 : vec3<f32> = txVec32;
          let x_2376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2374.xy, x_2374.z);
          u_xlat12.z = x_2376;
          let x_2379 : vec4<f32> = u_xlat11;
          let x_2380 : vec2<f32> = vec2<f32>(x_2379.z, x_2379.w);
          let x_2382 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
          let x_2389 : vec3<f32> = txVec33;
          let x_2391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
          u_xlat12.w = x_2391;
          let x_2393 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2393, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2397 : i32 = u_xlati80;
          let x_2399 : f32 = x_150.x_AdditionalShadowParams[x_2397].y;
          u_xlatb85 = (2.0f == x_2399);
          let x_2401 : bool = u_xlatb85;
          if (x_2401) {
            let x_2404 : vec4<f32> = u_xlat10;
            let x_2408 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2411 : vec2<f32> = ((vec2<f32>(x_2404.x, x_2404.y) * vec2<f32>(x_2408.z, x_2408.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2412 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2411.x, x_2411.y, x_2412.z, x_2412.w);
            let x_2414 : vec4<f32> = u_xlat11;
            let x_2416 : vec2<f32> = floor(vec2<f32>(x_2414.x, x_2414.y));
            let x_2417 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
            let x_2420 : vec4<f32> = u_xlat10;
            let x_2423 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2426 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2420.x, x_2420.y) * vec2<f32>(x_2423.z, x_2423.w)) + -(vec2<f32>(x_2426.x, x_2426.y)));
            let x_2430 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2430.x, x_2430.x, x_2430.y, x_2430.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2433 : vec4<f32> = u_xlat12;
            let x_2435 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2433.x, x_2433.x, x_2433.z, x_2433.z) * vec4<f32>(x_2435.x, x_2435.x, x_2435.z, x_2435.z));
            let x_2438 : vec4<f32> = u_xlat13;
            let x_2440 : vec2<f32> = (vec2<f32>(x_2438.y, x_2438.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2441 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2440.x, x_2441.y, x_2440.y, x_2441.w);
            let x_2443 : vec4<f32> = u_xlat13;
            let x_2446 : vec2<f32> = u_xlat61;
            let x_2448 : vec2<f32> = ((vec2<f32>(x_2443.x, x_2443.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2446));
            let x_2449 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
            let x_2452 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2452) + vec2<f32>(1.0f, 1.0f));
            let x_2455 : vec2<f32> = u_xlat61;
            let x_2456 : vec2<f32> = min(x_2455, vec2<f32>(0.0f, 0.0f));
            let x_2457 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2456.x, x_2456.y, x_2457.z, x_2457.w);
            let x_2459 : vec4<f32> = u_xlat14;
            let x_2462 : vec4<f32> = u_xlat14;
            let x_2465 : vec2<f32> = u_xlat63;
            let x_2466 : vec2<f32> = ((-(vec2<f32>(x_2459.x, x_2459.y)) * vec2<f32>(x_2462.x, x_2462.y)) + x_2465);
            let x_2467 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
            let x_2469 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2469, vec2<f32>(0.0f, 0.0f));
            let x_2471 : vec2<f32> = u_xlat61;
            let x_2473 : vec2<f32> = u_xlat61;
            let x_2475 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2471) * x_2473) + vec2<f32>(x_2475.y, x_2475.w));
            let x_2478 : vec4<f32> = u_xlat14;
            let x_2480 : vec2<f32> = (vec2<f32>(x_2478.x, x_2478.y) + vec2<f32>(1.0f, 1.0f));
            let x_2481 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
            let x_2483 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2483 + vec2<f32>(1.0f, 1.0f));
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2488 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec2<f32> = u_xlat63;
            let x_2491 : vec2<f32> = (x_2490 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2492 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2491.x, x_2491.y, x_2492.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat14;
            let x_2496 : vec2<f32> = (vec2<f32>(x_2494.x, x_2494.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2497 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2496.x, x_2496.y, x_2497.z, x_2497.w);
            let x_2499 : vec2<f32> = u_xlat61;
            let x_2500 : vec2<f32> = (x_2499 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2501 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
            let x_2503 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2503.y, x_2503.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2507 : f32 = u_xlat14.x;
            u_xlat15.z = x_2507;
            let x_2510 : f32 = u_xlat61.x;
            u_xlat15.w = x_2510;
            let x_2513 : f32 = u_xlat16.x;
            u_xlat13.z = x_2513;
            let x_2516 : f32 = u_xlat12.x;
            u_xlat13.w = x_2516;
            let x_2518 : vec4<f32> = u_xlat13;
            let x_2520 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2518.z, x_2518.w, x_2518.x, x_2518.z) + vec4<f32>(x_2520.z, x_2520.w, x_2520.x, x_2520.z));
            let x_2524 : f32 = u_xlat15.y;
            u_xlat14.z = x_2524;
            let x_2527 : f32 = u_xlat61.y;
            u_xlat14.w = x_2527;
            let x_2530 : f32 = u_xlat13.y;
            u_xlat16.z = x_2530;
            let x_2533 : f32 = u_xlat12.z;
            u_xlat16.w = x_2533;
            let x_2535 : vec4<f32> = u_xlat14;
            let x_2537 : vec4<f32> = u_xlat16;
            let x_2539 : vec3<f32> = (vec3<f32>(x_2535.z, x_2535.y, x_2535.w) + vec3<f32>(x_2537.z, x_2537.y, x_2537.w));
            let x_2540 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
            let x_2542 : vec4<f32> = u_xlat13;
            let x_2544 : vec4<f32> = u_xlat17;
            let x_2546 : vec3<f32> = (vec3<f32>(x_2542.x, x_2542.z, x_2542.w) / vec3<f32>(x_2544.z, x_2544.w, x_2544.y));
            let x_2547 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
            let x_2549 : vec4<f32> = u_xlat13;
            let x_2551 : vec3<f32> = (vec3<f32>(x_2549.x, x_2549.y, x_2549.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2552 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
            let x_2554 : vec4<f32> = u_xlat16;
            let x_2556 : vec4<f32> = u_xlat12;
            let x_2558 : vec3<f32> = (vec3<f32>(x_2554.z, x_2554.y, x_2554.w) / vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
            let x_2559 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
            let x_2561 : vec4<f32> = u_xlat14;
            let x_2563 : vec3<f32> = (vec3<f32>(x_2561.x, x_2561.y, x_2561.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2564 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat13;
            let x_2569 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2571 : vec3<f32> = (vec3<f32>(x_2566.y, x_2566.x, x_2566.z) * vec3<f32>(x_2569.x, x_2569.x, x_2569.x));
            let x_2572 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
            let x_2574 : vec4<f32> = u_xlat14;
            let x_2577 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2579 : vec3<f32> = (vec3<f32>(x_2574.x, x_2574.y, x_2574.z) * vec3<f32>(x_2577.y, x_2577.y, x_2577.y));
            let x_2580 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
            let x_2583 : f32 = u_xlat14.x;
            u_xlat13.w = x_2583;
            let x_2585 : vec4<f32> = u_xlat11;
            let x_2588 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2591 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2585.x, x_2585.y, x_2585.x, x_2585.y) * vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y)) + vec4<f32>(x_2591.y, x_2591.w, x_2591.x, x_2591.w));
            let x_2594 : vec4<f32> = u_xlat11;
            let x_2597 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2600 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2594.x, x_2594.y) * vec2<f32>(x_2597.x, x_2597.y)) + vec2<f32>(x_2600.z, x_2600.w));
            let x_2604 : f32 = u_xlat13.y;
            u_xlat14.w = x_2604;
            let x_2606 : vec4<f32> = u_xlat14;
            let x_2607 : vec2<f32> = vec2<f32>(x_2606.y, x_2606.z);
            let x_2608 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2608.x, x_2607.x, x_2608.z, x_2607.y);
            let x_2610 : vec4<f32> = u_xlat11;
            let x_2613 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2616 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y) * vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y)) + vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2616.y));
            let x_2619 : vec4<f32> = u_xlat11;
            let x_2622 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2625 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y) * vec4<f32>(x_2622.x, x_2622.y, x_2622.x, x_2622.y)) + vec4<f32>(x_2625.w, x_2625.y, x_2625.w, x_2625.z));
            let x_2628 : vec4<f32> = u_xlat11;
            let x_2631 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2634 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2628.x, x_2628.y, x_2628.x, x_2628.y) * vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.y)) + vec4<f32>(x_2634.x, x_2634.w, x_2634.z, x_2634.w));
            let x_2637 : vec4<f32> = u_xlat12;
            let x_2639 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2637.x, x_2637.x, x_2637.x, x_2637.y) * vec4<f32>(x_2639.z, x_2639.w, x_2639.y, x_2639.z));
            let x_2642 : vec4<f32> = u_xlat12;
            let x_2644 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2642.y, x_2642.y, x_2642.z, x_2642.z) * x_2644);
            let x_2648 : f32 = u_xlat12.z;
            let x_2650 : f32 = u_xlat17.y;
            u_xlat85 = (x_2648 * x_2650);
            let x_2653 : vec4<f32> = u_xlat15;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.x, x_2653.y);
            let x_2656 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec34;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat11.x = x_2665;
            let x_2668 : vec4<f32> = u_xlat15;
            let x_2669 : vec2<f32> = vec2<f32>(x_2668.z, x_2668.w);
            let x_2671 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2669.x, x_2669.y, x_2671);
            let x_2679 : vec3<f32> = txVec35;
            let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
            u_xlat36 = x_2681;
            let x_2682 : f32 = u_xlat36;
            let x_2684 : f32 = u_xlat18.y;
            u_xlat36 = (x_2682 * x_2684);
            let x_2687 : f32 = u_xlat18.x;
            let x_2689 : f32 = u_xlat11.x;
            let x_2691 : f32 = u_xlat36;
            u_xlat11.x = ((x_2687 * x_2689) + x_2691);
            let x_2695 : vec2<f32> = u_xlat61;
            let x_2697 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2695.x, x_2695.y, x_2697);
            let x_2704 : vec3<f32> = txVec36;
            let x_2706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2704.xy, x_2704.z);
            u_xlat36 = x_2706;
            let x_2708 : f32 = u_xlat18.z;
            let x_2709 : f32 = u_xlat36;
            let x_2712 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2708 * x_2709) + x_2712);
            let x_2716 : vec4<f32> = u_xlat14;
            let x_2717 : vec2<f32> = vec2<f32>(x_2716.x, x_2716.y);
            let x_2719 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2717.x, x_2717.y, x_2719);
            let x_2726 : vec3<f32> = txVec37;
            let x_2728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
            u_xlat36 = x_2728;
            let x_2730 : f32 = u_xlat18.w;
            let x_2731 : f32 = u_xlat36;
            let x_2734 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2730 * x_2731) + x_2734);
            let x_2738 : vec4<f32> = u_xlat16;
            let x_2739 : vec2<f32> = vec2<f32>(x_2738.x, x_2738.y);
            let x_2741 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2739.x, x_2739.y, x_2741);
            let x_2748 : vec3<f32> = txVec38;
            let x_2750 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2748.xy, x_2748.z);
            u_xlat36 = x_2750;
            let x_2752 : f32 = u_xlat19.x;
            let x_2753 : f32 = u_xlat36;
            let x_2756 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2752 * x_2753) + x_2756);
            let x_2760 : vec4<f32> = u_xlat16;
            let x_2761 : vec2<f32> = vec2<f32>(x_2760.z, x_2760.w);
            let x_2763 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2761.x, x_2761.y, x_2763);
            let x_2770 : vec3<f32> = txVec39;
            let x_2772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2770.xy, x_2770.z);
            u_xlat36 = x_2772;
            let x_2774 : f32 = u_xlat19.y;
            let x_2775 : f32 = u_xlat36;
            let x_2778 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2774 * x_2775) + x_2778);
            let x_2782 : vec4<f32> = u_xlat14;
            let x_2783 : vec2<f32> = vec2<f32>(x_2782.z, x_2782.w);
            let x_2785 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2783.x, x_2783.y, x_2785);
            let x_2792 : vec3<f32> = txVec40;
            let x_2794 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2792.xy, x_2792.z);
            u_xlat36 = x_2794;
            let x_2796 : f32 = u_xlat19.z;
            let x_2797 : f32 = u_xlat36;
            let x_2800 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2796 * x_2797) + x_2800);
            let x_2804 : vec4<f32> = u_xlat13;
            let x_2805 : vec2<f32> = vec2<f32>(x_2804.x, x_2804.y);
            let x_2807 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2805.x, x_2805.y, x_2807);
            let x_2814 : vec3<f32> = txVec41;
            let x_2816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2814.xy, x_2814.z);
            u_xlat36 = x_2816;
            let x_2818 : f32 = u_xlat19.w;
            let x_2819 : f32 = u_xlat36;
            let x_2822 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2818 * x_2819) + x_2822);
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2827 : vec2<f32> = vec2<f32>(x_2826.z, x_2826.w);
            let x_2829 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2827.x, x_2827.y, x_2829);
            let x_2836 : vec3<f32> = txVec42;
            let x_2838 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2836.xy, x_2836.z);
            u_xlat36 = x_2838;
            let x_2839 : f32 = u_xlat85;
            let x_2840 : f32 = u_xlat36;
            let x_2843 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2839 * x_2840) + x_2843);
          } else {
            let x_2846 : vec4<f32> = u_xlat10;
            let x_2849 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2852 : vec2<f32> = ((vec2<f32>(x_2846.x, x_2846.y) * vec2<f32>(x_2849.z, x_2849.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2853 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
            let x_2855 : vec4<f32> = u_xlat11;
            let x_2857 : vec2<f32> = floor(vec2<f32>(x_2855.x, x_2855.y));
            let x_2858 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2857.x, x_2857.y, x_2858.z, x_2858.w);
            let x_2860 : vec4<f32> = u_xlat10;
            let x_2863 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_2866 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2860.x, x_2860.y) * vec2<f32>(x_2863.z, x_2863.w)) + -(vec2<f32>(x_2866.x, x_2866.y)));
            let x_2870 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2870.x, x_2870.x, x_2870.y, x_2870.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2873 : vec4<f32> = u_xlat12;
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2873.x, x_2873.x, x_2873.z, x_2873.z) * vec4<f32>(x_2875.x, x_2875.x, x_2875.z, x_2875.z));
            let x_2878 : vec4<f32> = u_xlat13;
            let x_2880 : vec2<f32> = (vec2<f32>(x_2878.y, x_2878.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2881 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2881.x, x_2880.x, x_2881.z, x_2880.y);
            let x_2883 : vec4<f32> = u_xlat13;
            let x_2886 : vec2<f32> = u_xlat61;
            let x_2888 : vec2<f32> = ((vec2<f32>(x_2883.x, x_2883.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2886));
            let x_2889 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2888.x, x_2889.y, x_2888.y, x_2889.w);
            let x_2891 : vec2<f32> = u_xlat61;
            let x_2893 : vec2<f32> = (-(x_2891) + vec2<f32>(1.0f, 1.0f));
            let x_2894 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2896, vec2<f32>(0.0f, 0.0f));
            let x_2898 : vec2<f32> = u_xlat63;
            let x_2900 : vec2<f32> = u_xlat63;
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2904 : vec2<f32> = ((-(x_2898) * x_2900) + vec2<f32>(x_2902.x, x_2902.y));
            let x_2905 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2907 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2907, vec2<f32>(0.0f, 0.0f));
            let x_2910 : vec2<f32> = u_xlat63;
            let x_2912 : vec2<f32> = u_xlat63;
            let x_2914 : vec4<f32> = u_xlat12;
            let x_2916 : vec2<f32> = ((-(x_2910) * x_2912) + vec2<f32>(x_2914.y, x_2914.w));
            let x_2917 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2916.x, x_2917.y, x_2916.y);
            let x_2919 : vec4<f32> = u_xlat13;
            let x_2921 : vec2<f32> = (vec2<f32>(x_2919.x, x_2919.y) + vec2<f32>(2.0f, 2.0f));
            let x_2922 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2921.x, x_2921.y, x_2922.z, x_2922.w);
            let x_2924 : vec3<f32> = u_xlat37;
            let x_2926 : vec2<f32> = (vec2<f32>(x_2924.x, x_2924.z) + vec2<f32>(2.0f, 2.0f));
            let x_2927 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2927.x, x_2926.x, x_2927.z, x_2926.y);
            let x_2930 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2930 * 0.08163200318813323975f);
            let x_2933 : vec4<f32> = u_xlat12;
            let x_2935 : vec3<f32> = (vec3<f32>(x_2933.z, x_2933.x, x_2933.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2936 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2935.x, x_2935.y, x_2935.z, x_2936.w);
            let x_2938 : vec4<f32> = u_xlat13;
            let x_2940 : vec2<f32> = (vec2<f32>(x_2938.x, x_2938.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2941 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2940.x, x_2940.y, x_2941.z, x_2941.w);
            let x_2944 : f32 = u_xlat16.y;
            u_xlat15.x = x_2944;
            let x_2946 : vec2<f32> = u_xlat61;
            let x_2949 : vec2<f32> = ((vec2<f32>(x_2946.x, x_2946.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2950 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2950.x, x_2949.x, x_2950.z, x_2949.y);
            let x_2952 : vec2<f32> = u_xlat61;
            let x_2955 : vec2<f32> = ((vec2<f32>(x_2952.x, x_2952.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2956 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2955.x, x_2956.y, x_2955.y, x_2956.w);
            let x_2959 : f32 = u_xlat12.x;
            u_xlat13.y = x_2959;
            let x_2962 : f32 = u_xlat14.y;
            u_xlat13.w = x_2962;
            let x_2964 : vec4<f32> = u_xlat13;
            let x_2965 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2964 + x_2965);
            let x_2967 : vec2<f32> = u_xlat61;
            let x_2970 : vec2<f32> = ((vec2<f32>(x_2967.y, x_2967.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2971 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2971.x, x_2970.x, x_2971.z, x_2970.y);
            let x_2973 : vec2<f32> = u_xlat61;
            let x_2976 : vec2<f32> = ((vec2<f32>(x_2973.y, x_2973.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2977 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2976.x, x_2977.y, x_2976.y, x_2977.w);
            let x_2980 : f32 = u_xlat12.y;
            u_xlat14.y = x_2980;
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2983 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2982 + x_2983);
            let x_2985 : vec4<f32> = u_xlat13;
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2985 / x_2986);
            let x_2988 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2988 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2991 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2990 / x_2991);
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2993 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2995 : vec4<f32> = u_xlat13;
            let x_2998 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2995.w, x_2995.x, x_2995.y, x_2995.z) * vec4<f32>(x_2998.x, x_2998.x, x_2998.x, x_2998.x));
            let x_3001 : vec4<f32> = u_xlat14;
            let x_3004 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3001.x, x_3001.w, x_3001.y, x_3001.z) * vec4<f32>(x_3004.y, x_3004.y, x_3004.y, x_3004.y));
            let x_3007 : vec4<f32> = u_xlat13;
            let x_3008 : vec3<f32> = vec3<f32>(x_3007.y, x_3007.z, x_3007.w);
            let x_3009 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3008.x, x_3009.y, x_3008.y, x_3008.z);
            let x_3012 : f32 = u_xlat14.x;
            u_xlat16.y = x_3012;
            let x_3014 : vec4<f32> = u_xlat11;
            let x_3017 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3020 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3014.x, x_3014.y, x_3014.x, x_3014.y) * vec4<f32>(x_3017.x, x_3017.y, x_3017.x, x_3017.y)) + vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3020.y));
            let x_3023 : vec4<f32> = u_xlat11;
            let x_3026 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3029 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3023.x, x_3023.y) * vec2<f32>(x_3026.x, x_3026.y)) + vec2<f32>(x_3029.w, x_3029.y));
            let x_3033 : f32 = u_xlat16.y;
            u_xlat13.y = x_3033;
            let x_3036 : f32 = u_xlat14.z;
            u_xlat16.y = x_3036;
            let x_3038 : vec4<f32> = u_xlat11;
            let x_3041 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3044 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3038.x, x_3038.y, x_3038.x, x_3038.y) * vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.y)) + vec4<f32>(x_3044.x, x_3044.y, x_3044.z, x_3044.y));
            let x_3047 : vec4<f32> = u_xlat11;
            let x_3050 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat16;
            let x_3055 : vec2<f32> = ((vec2<f32>(x_3047.x, x_3047.y) * vec2<f32>(x_3050.x, x_3050.y)) + vec2<f32>(x_3053.w, x_3053.y));
            let x_3056 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3059 : f32 = u_xlat16.y;
            u_xlat13.z = x_3059;
            let x_3062 : vec4<f32> = u_xlat11;
            let x_3065 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y) * vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y)) + vec4<f32>(x_3068.x, x_3068.y, x_3068.x, x_3068.z));
            let x_3072 : f32 = u_xlat14.w;
            u_xlat16.y = x_3072;
            let x_3075 : vec4<f32> = u_xlat11;
            let x_3078 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y) * vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y)) + vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3081.y));
            let x_3085 : vec4<f32> = u_xlat11;
            let x_3088 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3085.x, x_3085.y) * vec2<f32>(x_3088.x, x_3088.y)) + vec2<f32>(x_3091.w, x_3091.y));
            let x_3095 : f32 = u_xlat16.y;
            u_xlat13.w = x_3095;
            let x_3098 : vec4<f32> = u_xlat11;
            let x_3101 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3098.x, x_3098.y) * vec2<f32>(x_3101.x, x_3101.y)) + vec2<f32>(x_3104.x, x_3104.w));
            let x_3107 : vec4<f32> = u_xlat16;
            let x_3108 : vec3<f32> = vec3<f32>(x_3107.x, x_3107.z, x_3107.w);
            let x_3109 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3108.x, x_3109.y, x_3108.y, x_3108.z);
            let x_3111 : vec4<f32> = u_xlat11;
            let x_3114 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3117 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3111.x, x_3111.y, x_3111.x, x_3111.y) * vec4<f32>(x_3114.x, x_3114.y, x_3114.x, x_3114.y)) + vec4<f32>(x_3117.x, x_3117.y, x_3117.z, x_3117.y));
            let x_3120 : vec4<f32> = u_xlat11;
            let x_3123 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3120.x, x_3120.y) * vec2<f32>(x_3123.x, x_3123.y)) + vec2<f32>(x_3126.w, x_3126.y));
            let x_3130 : f32 = u_xlat13.x;
            u_xlat14.x = x_3130;
            let x_3132 : vec4<f32> = u_xlat11;
            let x_3135 : vec4<f32> = x_150.x_AdditionalShadowmapSize;
            let x_3138 : vec4<f32> = u_xlat14;
            let x_3140 : vec2<f32> = ((vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(x_3135.x, x_3135.y)) + vec2<f32>(x_3138.x, x_3138.y));
            let x_3141 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3140.x, x_3140.y, x_3141.z, x_3141.w);
            let x_3144 : vec4<f32> = u_xlat12;
            let x_3146 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3144.x, x_3144.x, x_3144.x, x_3144.x) * x_3146);
            let x_3149 : vec4<f32> = u_xlat12;
            let x_3151 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3149.y, x_3149.y, x_3149.y, x_3149.y) * x_3151);
            let x_3154 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3154.z, x_3154.z, x_3154.z, x_3154.z) * x_3156);
            let x_3158 : vec4<f32> = u_xlat12;
            let x_3160 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3158.w, x_3158.w, x_3158.w, x_3158.w) * x_3160);
            let x_3163 : vec4<f32> = u_xlat17;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec43;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat85 = x_3175;
            let x_3177 : vec4<f32> = u_xlat17;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.z, x_3177.w);
            let x_3180 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec44;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat13.x = x_3189;
            let x_3192 : f32 = u_xlat13.x;
            let x_3194 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3192 * x_3194);
            let x_3198 : f32 = u_xlat22.x;
            let x_3199 : f32 = u_xlat85;
            let x_3202 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3198 * x_3199) + x_3202);
            let x_3205 : vec2<f32> = u_xlat61;
            let x_3207 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
            let x_3214 : vec3<f32> = txVec45;
            let x_3216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
            u_xlat61.x = x_3216;
            let x_3219 : f32 = u_xlat22.z;
            let x_3221 : f32 = u_xlat61.x;
            let x_3223 : f32 = u_xlat85;
            u_xlat85 = ((x_3219 * x_3221) + x_3223);
            let x_3226 : vec4<f32> = u_xlat20;
            let x_3227 : vec2<f32> = vec2<f32>(x_3226.x, x_3226.y);
            let x_3229 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
            let x_3236 : vec3<f32> = txVec46;
            let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
            u_xlat61.x = x_3238;
            let x_3241 : f32 = u_xlat22.w;
            let x_3243 : f32 = u_xlat61.x;
            let x_3245 : f32 = u_xlat85;
            u_xlat85 = ((x_3241 * x_3243) + x_3245);
            let x_3248 : vec4<f32> = u_xlat18;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec47;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat61.x = x_3260;
            let x_3263 : f32 = u_xlat23.x;
            let x_3265 : f32 = u_xlat61.x;
            let x_3267 : f32 = u_xlat85;
            u_xlat85 = ((x_3263 * x_3265) + x_3267);
            let x_3270 : vec4<f32> = u_xlat18;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.z, x_3270.w);
            let x_3273 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec48;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat61.x = x_3282;
            let x_3285 : f32 = u_xlat23.y;
            let x_3287 : f32 = u_xlat61.x;
            let x_3289 : f32 = u_xlat85;
            u_xlat85 = ((x_3285 * x_3287) + x_3289);
            let x_3292 : vec4<f32> = u_xlat19;
            let x_3293 : vec2<f32> = vec2<f32>(x_3292.x, x_3292.y);
            let x_3295 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec49;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat61.x = x_3304;
            let x_3307 : f32 = u_xlat23.z;
            let x_3309 : f32 = u_xlat61.x;
            let x_3311 : f32 = u_xlat85;
            u_xlat85 = ((x_3307 * x_3309) + x_3311);
            let x_3314 : vec4<f32> = u_xlat20;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec50;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat61.x = x_3326;
            let x_3329 : f32 = u_xlat23.w;
            let x_3331 : f32 = u_xlat61.x;
            let x_3333 : f32 = u_xlat85;
            u_xlat85 = ((x_3329 * x_3331) + x_3333);
            let x_3336 : vec4<f32> = u_xlat21;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec51;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat61.x = x_3348;
            let x_3351 : f32 = u_xlat24.x;
            let x_3353 : f32 = u_xlat61.x;
            let x_3355 : f32 = u_xlat85;
            u_xlat85 = ((x_3351 * x_3353) + x_3355);
            let x_3358 : vec4<f32> = u_xlat21;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.z, x_3358.w);
            let x_3361 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec52;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat61.x = x_3370;
            let x_3373 : f32 = u_xlat24.y;
            let x_3375 : f32 = u_xlat61.x;
            let x_3377 : f32 = u_xlat85;
            u_xlat85 = ((x_3373 * x_3375) + x_3377);
            let x_3380 : vec2<f32> = u_xlat38;
            let x_3382 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec53;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat61.x = x_3391;
            let x_3394 : f32 = u_xlat24.z;
            let x_3396 : f32 = u_xlat61.x;
            let x_3398 : f32 = u_xlat85;
            u_xlat85 = ((x_3394 * x_3396) + x_3398);
            let x_3401 : vec2<f32> = u_xlat69;
            let x_3403 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec54;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat61.x = x_3412;
            let x_3415 : f32 = u_xlat24.w;
            let x_3417 : f32 = u_xlat61.x;
            let x_3419 : f32 = u_xlat85;
            u_xlat85 = ((x_3415 * x_3417) + x_3419);
            let x_3422 : vec4<f32> = u_xlat16;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.x, x_3422.y);
            let x_3425 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec55;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat61.x = x_3434;
            let x_3437 : f32 = u_xlat12.x;
            let x_3439 : f32 = u_xlat61.x;
            let x_3441 : f32 = u_xlat85;
            u_xlat85 = ((x_3437 * x_3439) + x_3441);
            let x_3444 : vec4<f32> = u_xlat16;
            let x_3445 : vec2<f32> = vec2<f32>(x_3444.z, x_3444.w);
            let x_3447 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec56;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat61.x = x_3456;
            let x_3459 : f32 = u_xlat12.y;
            let x_3461 : f32 = u_xlat61.x;
            let x_3463 : f32 = u_xlat85;
            u_xlat85 = ((x_3459 * x_3461) + x_3463);
            let x_3466 : vec2<f32> = u_xlat64;
            let x_3468 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec57;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat61.x = x_3477;
            let x_3480 : f32 = u_xlat12.z;
            let x_3482 : f32 = u_xlat61.x;
            let x_3484 : f32 = u_xlat85;
            u_xlat85 = ((x_3480 * x_3482) + x_3484);
            let x_3487 : vec4<f32> = u_xlat11;
            let x_3488 : vec2<f32> = vec2<f32>(x_3487.x, x_3487.y);
            let x_3490 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3488.x, x_3488.y, x_3490);
            let x_3497 : vec3<f32> = txVec58;
            let x_3499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3497.xy, x_3497.z);
            u_xlat11.x = x_3499;
            let x_3502 : f32 = u_xlat12.w;
            let x_3504 : f32 = u_xlat11.x;
            let x_3506 : f32 = u_xlat85;
            u_xlat84 = ((x_3502 * x_3504) + x_3506);
          }
        }
      } else {
        let x_3510 : vec4<f32> = u_xlat10;
        let x_3511 : vec2<f32> = vec2<f32>(x_3510.x, x_3510.y);
        let x_3513 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3511.x, x_3511.y, x_3513);
        let x_3520 : vec3<f32> = txVec59;
        let x_3522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3520.xy, x_3520.z);
        u_xlat84 = x_3522;
      }
      let x_3523 : i32 = u_xlati80;
      let x_3525 : f32 = x_150.x_AdditionalShadowParams[x_3523].x;
      u_xlat10.x = (1.0f + -(x_3525));
      let x_3529 : f32 = u_xlat84;
      let x_3530 : i32 = u_xlati80;
      let x_3532 : f32 = x_150.x_AdditionalShadowParams[x_3530].x;
      let x_3535 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3529 * x_3532) + x_3535);
      let x_3538 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3538);
      let x_3543 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3543 >= 1.0f);
      let x_3545 : bool = u_xlatb35;
      let x_3547 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3545 | x_3547);
      let x_3551 : bool = u_xlatb10.x;
      let x_3552 : f32 = u_xlat84;
      u_xlat84 = select(x_3552, 1.0f, x_3551);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3555 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3555) + 1.0f);
    let x_3559 : f32 = u_xlat1;
    let x_3561 : f32 = u_xlat10.x;
    let x_3563 : f32 = u_xlat84;
    u_xlat84 = ((x_3559 * x_3561) + x_3563);
    let x_3565 : f32 = u_xlat81;
    let x_3566 : f32 = u_xlat84;
    u_xlat81 = (x_3565 * x_3566);
    let x_3568 : vec3<f32> = u_xlat26;
    let x_3569 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3568, vec3<f32>(x_3569.x, x_3569.y, x_3569.z));
    let x_3572 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3572, 0.0f, 1.0f);
    let x_3574 : f32 = u_xlat81;
    let x_3575 : f32 = u_xlat84;
    u_xlat81 = (x_3574 * x_3575);
    let x_3577 : f32 = u_xlat81;
    let x_3579 : i32 = u_xlati80;
    let x_3581 : vec4<f32> = x_2076.x_AdditionalLightsColor[x_3579];
    let x_3583 : vec3<f32> = (vec3<f32>(x_3577, x_3577, x_3577) * vec3<f32>(x_3581.x, x_3581.y, x_3581.z));
    let x_3584 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3583.x, x_3583.y, x_3583.z, x_3584.w);
    let x_3586 : vec4<f32> = u_xlat8;
    let x_3588 : f32 = u_xlat83;
    let x_3591 : vec3<f32> = u_xlat3;
    let x_3592 : vec3<f32> = ((vec3<f32>(x_3586.x, x_3586.y, x_3586.z) * vec3<f32>(x_3588, x_3588, x_3588)) + x_3591);
    let x_3593 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3592.x, x_3592.y, x_3592.z, x_3593.w);
    let x_3595 : vec4<f32> = u_xlat8;
    let x_3597 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3595.x, x_3595.y, x_3595.z), vec3<f32>(x_3597.x, x_3597.y, x_3597.z));
    let x_3600 : f32 = u_xlat80;
    u_xlat80 = max(x_3600, 1.17549435e-38f);
    let x_3602 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3602);
    let x_3604 : f32 = u_xlat80;
    let x_3606 : vec4<f32> = u_xlat8;
    let x_3608 : vec3<f32> = (vec3<f32>(x_3604, x_3604, x_3604) * vec3<f32>(x_3606.x, x_3606.y, x_3606.z));
    let x_3609 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3608.x, x_3608.y, x_3608.z, x_3609.w);
    let x_3611 : vec3<f32> = u_xlat26;
    let x_3612 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(x_3611, vec3<f32>(x_3612.x, x_3612.y, x_3612.z));
    let x_3615 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3615, 0.0f, 1.0f);
    let x_3617 : vec4<f32> = u_xlat9;
    let x_3619 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3617.x, x_3617.y, x_3617.z), vec3<f32>(x_3619.x, x_3619.y, x_3619.z));
    let x_3622 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3622, 0.0f, 1.0f);
    let x_3624 : f32 = u_xlat80;
    let x_3625 : f32 = u_xlat80;
    u_xlat80 = (x_3624 * x_3625);
    let x_3627 : f32 = u_xlat80;
    let x_3629 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3627 * x_3629) + 1.00001001358032226562f);
    let x_3632 : f32 = u_xlat81;
    let x_3633 : f32 = u_xlat81;
    u_xlat81 = (x_3632 * x_3633);
    let x_3635 : f32 = u_xlat80;
    let x_3636 : f32 = u_xlat80;
    u_xlat80 = (x_3635 * x_3636);
    let x_3638 : f32 = u_xlat81;
    u_xlat81 = max(x_3638, 0.10000000149011611938f);
    let x_3640 : f32 = u_xlat80;
    let x_3641 : f32 = u_xlat81;
    u_xlat80 = (x_3640 * x_3641);
    let x_3643 : f32 = u_xlat78;
    let x_3644 : f32 = u_xlat80;
    u_xlat80 = (x_3643 * x_3644);
    let x_3646 : f32 = u_xlat79;
    let x_3647 : f32 = u_xlat80;
    u_xlat80 = (x_3646 / x_3647);
    let x_3649 : vec4<f32> = u_xlat0;
    let x_3651 : f32 = u_xlat80;
    let x_3654 : vec3<f32> = u_xlat5;
    let x_3655 : vec3<f32> = ((vec3<f32>(x_3649.x, x_3649.y, x_3649.z) * vec3<f32>(x_3651, x_3651, x_3651)) + x_3654);
    let x_3656 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3655.x, x_3655.y, x_3655.z, x_3656.w);
    let x_3658 : vec4<f32> = u_xlat8;
    let x_3660 : vec4<f32> = u_xlat10;
    let x_3663 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3658.x, x_3658.y, x_3658.z) * vec3<f32>(x_3660.x, x_3660.y, x_3660.z)) + x_3663);

    continuing {
      let x_3665 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3665 + bitcast<u32>(1i));
    }
  }
  let x_3667 : vec4<f32> = u_xlat6;
  let x_3669 : vec4<f32> = u_xlat2;
  let x_3672 : vec4<f32> = u_xlat4;
  let x_3674 : vec3<f32> = ((vec3<f32>(x_3667.x, x_3667.y, x_3667.z) * vec3<f32>(x_3669.x, x_3669.z, x_3669.w)) + vec3<f32>(x_3672.x, x_3672.y, x_3672.z));
  let x_3675 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3674.x, x_3674.y, x_3674.z, x_3675.w);
  let x_3679 : vec3<f32> = u_xlat32;
  let x_3680 : vec4<f32> = u_xlat0;
  let x_3682 : vec3<f32> = (x_3679 + vec3<f32>(x_3680.x, x_3680.y, x_3680.z));
  let x_3683 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3682.x, x_3682.y, x_3682.z, x_3683.w);
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


