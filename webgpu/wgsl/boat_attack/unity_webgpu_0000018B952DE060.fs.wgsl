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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_128 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlatu77 : u32;

var<private> u_xlati77 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1837 : UnityPerDraw;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2079 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_99 : vec3<f32>;
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
  var x_1732 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2227 : f32;
  var x_2240 : f32;
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
  var x_3573 : f32;
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
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_64) + x_69);
  let x_72 : vec3<f32> = u_xlat2;
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat51 = dot(x_72, x_73);
  let x_75 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_75);
  let x_77 : f32 = u_xlat51;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_85 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_85;
  let x_89 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_89;
  let x_94 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_94;
  let x_97 : bool = u_xlatb26;
  if (x_97) {
    let x_102 : vec3<f32> = u_xlat2;
    x_99 = x_102;
  } else {
    let x_104 : vec4<f32> = u_xlat3;
    x_99 = vec3<f32>(x_104.x, x_104.y, x_104.z);
  }
  let x_106 : vec3<f32> = x_99;
  u_xlat26 = x_106;
  let x_108 : vec3<f32> = vs_TEXCOORD3;
  let x_109 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_108, x_109);
  let x_113 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_113);
  let x_116 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres0;
  let x_134 : vec3<f32> = (x_120 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres1;
  let x_143 : vec3<f32> = (x_138 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_155 : vec3<f32> = vs_TEXCOORD7;
  let x_157 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres3;
  let x_160 : vec3<f32> = (x_155 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = u_xlat5;
  let x_176 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_175, x_176);
  let x_179 : vec4<f32> = u_xlat6;
  let x_181 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_188 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = x_128.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_188 < x_191);
  let x_194 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_194);
  let x_199 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_211);
  let x_217 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_217);
  let x_221 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_221);
  let x_224 : vec4<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.y, x_226.z, x_226.w));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec3<f32> = max(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_238, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat77;
  u_xlat77 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat77;
  u_xlatu77 = u32(x_249);
  let x_253 : u32 = u_xlatu77;
  u_xlati77 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_TEXCOORD7;
  let x_258 : i32 = u_xlati77;
  let x_261 : i32 = u_xlati77;
  let x_265 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati77;
  let x_272 : i32 = u_xlati77;
  let x_275 : vec4<f32> = x_128.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_TEXCOORD7;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati77;
  let x_288 : i32 = u_xlati77;
  let x_292 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD7;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : i32 = u_xlati77;
  let x_307 : i32 = u_xlati77;
  let x_311 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = vs_TEXCOORD7.y;
  let x_320 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat77 = (x_318 * x_320);
  let x_323 : f32 = x_29.unity_MatrixV[0i].z;
  let x_325 : f32 = vs_TEXCOORD7.x;
  let x_327 : f32 = u_xlat77;
  u_xlat77 = ((x_323 * x_325) + x_327);
  let x_330 : f32 = x_29.unity_MatrixV[2i].z;
  let x_332 : f32 = vs_TEXCOORD7.z;
  let x_334 : f32 = u_xlat77;
  u_xlat77 = ((x_330 * x_332) + x_334);
  let x_336 : f32 = u_xlat77;
  let x_338 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat77 = (x_336 + x_338);
  let x_340 : f32 = u_xlat77;
  let x_343 : f32 = x_29.x_ProjectionParams.y;
  u_xlat77 = (-(x_340) + -(x_343));
  let x_346 : f32 = u_xlat77;
  u_xlat77 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat77;
  let x_351 : f32 = x_29.unity_FogParams.x;
  u_xlat77 = (x_348 * x_351);
  let x_358 : vec4<f32> = vs_TEXCOORD0;
  let x_361 : f32 = x_29.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_358.z, x_358.w), x_361);
  u_xlat4 = x_362;
  let x_367 : vec4<f32> = vs_TEXCOORD0;
  let x_370 : f32 = x_29.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_367.z, x_367.w), x_370);
  u_xlat5 = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_381, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : f32 = u_xlat78;
  u_xlat78 = (x_385 + 0.5f);
  let x_388 : f32 = u_xlat78;
  let x_390 : vec3<f32> = u_xlat5;
  let x_391 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * x_390);
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat4.w;
  u_xlat78 = max(x_395, 0.00009999999747378752f);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : f32 = u_xlat78;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) / vec3<f32>(x_400, x_400, x_400));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  u_xlat78 = ((-(x_405) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_411 : f32 = u_xlat78;
  u_xlat79 = (-(x_411) + 1.0f);
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : f32 = u_xlat78;
  u_xlat5 = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416, x_416, x_416));
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : f32 = u_xlat1;
  let x_428 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426, x_426, x_426) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat1;
  let x_441 : f32 = u_xlat1;
  u_xlat78 = (x_440 * x_441);
  let x_443 : f32 = u_xlat78;
  u_xlat78 = max(x_443, 0.0078125f);
  let x_447 : f32 = u_xlat78;
  let x_448 : f32 = u_xlat78;
  u_xlat80 = (x_447 * x_448);
  let x_452 : f32 = u_xlat0.w;
  let x_453 : f32 = u_xlat79;
  u_xlat75 = (x_452 + x_453);
  let x_455 : f32 = u_xlat75;
  u_xlat75 = clamp(x_455, 0.0f, 1.0f);
  let x_457 : f32 = u_xlat78;
  u_xlat79 = ((x_457 * 4.0f) + 2.0f);
  let x_463 : f32 = x_128.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_463);
  let x_465 : bool = u_xlatb6;
  if (x_465) {
    let x_469 : f32 = x_128.x_MainLightShadowParams.y;
    u_xlatb6 = (x_469 == 1.0f);
    let x_471 : bool = u_xlatb6;
    if (x_471) {
      let x_474 : vec4<f32> = u_xlat3;
      let x_477 : vec4<f32> = x_128.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) + x_477);
      let x_480 : vec4<f32> = u_xlat6;
      let x_481 : vec2<f32> = vec2<f32>(x_480.x, x_480.y);
      let x_483 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_481.x, x_481.y, x_483);
      let x_496 : vec3<f32> = txVec0;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
      u_xlat7.x = x_498;
      let x_501 : vec4<f32> = u_xlat6;
      let x_502 : vec2<f32> = vec2<f32>(x_501.z, x_501.w);
      let x_504 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec1;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_511.xy, x_511.z);
      u_xlat7.y = x_513;
      let x_515 : vec4<f32> = u_xlat3;
      let x_518 : vec4<f32> = x_128.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) + x_518);
      let x_521 : vec4<f32> = u_xlat6;
      let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
      let x_524 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_531 : vec3<f32> = txVec2;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_531.xy, x_531.z);
      u_xlat7.z = x_533;
      let x_536 : vec4<f32> = u_xlat6;
      let x_537 : vec2<f32> = vec2<f32>(x_536.z, x_536.w);
      let x_539 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_537.x, x_537.y, x_539);
      let x_546 : vec3<f32> = txVec3;
      let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_546.xy, x_546.z);
      u_xlat7.w = x_548;
      let x_550 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_550, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_558 : f32 = x_128.x_MainLightShadowParams.y;
      u_xlatb31 = (x_558 == 2.0f);
      let x_560 : bool = u_xlatb31;
      if (x_560) {
        let x_565 : vec4<f32> = u_xlat3;
        let x_568 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_568.z, x_568.w)) + vec2<f32>(0.5f, 0.5f));
        let x_573 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_573);
        let x_575 : vec4<f32> = u_xlat3;
        let x_578 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_581 : vec2<f32> = u_xlat31;
        let x_583 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_578.z, x_578.w)) + -(x_581));
        let x_584 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_587.x, x_587.x, x_587.y, x_587.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_592 : vec4<f32> = u_xlat8;
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_592.x, x_592.x, x_592.z, x_592.z) * vec4<f32>(x_594.x, x_594.x, x_594.z, x_594.z));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_598.y, x_598.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_603 : vec4<f32> = u_xlat9;
        let x_606 : vec4<f32> = u_xlat7;
        let x_609 : vec2<f32> = ((vec2<f32>(x_603.x, x_603.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_606.x, x_606.y)));
        let x_610 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_609.x, x_610.y, x_609.y, x_610.w);
        let x_612 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = (-(vec2<f32>(x_612.x, x_612.y)) + vec2<f32>(1.0f, 1.0f));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_620.x, x_620.y), vec2<f32>(0.0f, 0.0f));
        let x_624 : vec2<f32> = u_xlat59;
        let x_626 : vec2<f32> = u_xlat59;
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_624) * x_626) + vec2<f32>(x_628.x, x_628.y));
        let x_631 : vec4<f32> = u_xlat7;
        let x_633 : vec2<f32> = max(vec2<f32>(x_631.x, x_631.y), vec2<f32>(0.0f, 0.0f));
        let x_634 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat7;
        let x_639 : vec4<f32> = u_xlat7;
        let x_642 : vec4<f32> = u_xlat8;
        let x_644 : vec2<f32> = ((-(vec2<f32>(x_636.x, x_636.y)) * vec2<f32>(x_639.x, x_639.y)) + vec2<f32>(x_642.y, x_642.w));
        let x_645 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_647 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_647 + vec2<f32>(1.0f, 1.0f));
        let x_649 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) + vec2<f32>(1.0f, 1.0f));
        let x_652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_655 : vec4<f32> = u_xlat8;
        let x_659 : vec2<f32> = (vec2<f32>(x_655.x, x_655.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_660 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_663 : vec4<f32> = u_xlat9;
        let x_665 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_666 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec2<f32> = u_xlat59;
        let x_669 : vec2<f32> = (x_668 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_676 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec2<f32> = (vec2<f32>(x_678.y, x_678.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : f32 = u_xlat9.x;
        u_xlat10.z = x_684;
        let x_687 : f32 = u_xlat7.x;
        u_xlat10.w = x_687;
        let x_690 : f32 = u_xlat12.x;
        u_xlat11.z = x_690;
        let x_693 : f32 = u_xlat57.x;
        u_xlat11.w = x_693;
        let x_695 : vec4<f32> = u_xlat10;
        let x_697 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_695.z, x_695.w, x_695.x, x_695.z) + vec4<f32>(x_697.z, x_697.w, x_697.x, x_697.z));
        let x_701 : f32 = u_xlat10.y;
        u_xlat9.z = x_701;
        let x_704 : f32 = u_xlat7.y;
        u_xlat9.w = x_704;
        let x_707 : f32 = u_xlat11.y;
        u_xlat12.z = x_707;
        let x_710 : f32 = u_xlat57.y;
        u_xlat12.w = x_710;
        let x_712 : vec4<f32> = u_xlat9;
        let x_714 : vec4<f32> = u_xlat12;
        let x_716 : vec3<f32> = (vec3<f32>(x_712.z, x_712.y, x_712.w) + vec3<f32>(x_714.z, x_714.y, x_714.w));
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat11;
        let x_721 : vec4<f32> = u_xlat8;
        let x_723 : vec3<f32> = (vec3<f32>(x_719.x, x_719.z, x_719.w) / vec3<f32>(x_721.z, x_721.w, x_721.y));
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat9;
        let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat12;
        let x_736 : vec4<f32> = u_xlat7;
        let x_738 : vec3<f32> = (vec3<f32>(x_734.z, x_734.y, x_734.w) / vec3<f32>(x_736.x, x_736.y, x_736.z));
        let x_739 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat10;
        let x_743 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_744 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_749 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_751 : vec3<f32> = (vec3<f32>(x_746.y, x_746.x, x_746.z) * vec3<f32>(x_749.x, x_749.x, x_749.x));
        let x_752 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat10;
        let x_757 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_759 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_757.y, x_757.y, x_757.y));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_763 : f32 = u_xlat10.x;
        u_xlat9.w = x_763;
        let x_765 : vec2<f32> = u_xlat31;
        let x_768 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_771 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y)) + vec4<f32>(x_771.y, x_771.w, x_771.x, x_771.w));
        let x_774 : vec2<f32> = u_xlat31;
        let x_776 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat9;
        let x_781 : vec2<f32> = ((x_774 * vec2<f32>(x_776.x, x_776.y)) + vec2<f32>(x_779.z, x_779.w));
        let x_782 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_785 : f32 = u_xlat9.y;
        u_xlat10.w = x_785;
        let x_787 : vec4<f32> = u_xlat10;
        let x_788 : vec2<f32> = vec2<f32>(x_787.y, x_787.z);
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_789.x, x_788.x, x_789.z, x_788.y);
        let x_792 : vec2<f32> = u_xlat31;
        let x_795 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.x, x_798.y, x_798.z, x_798.y));
        let x_801 : vec2<f32> = u_xlat31;
        let x_804 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y) * vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y)) + vec4<f32>(x_807.w, x_807.y, x_807.w, x_807.z));
        let x_810 : vec2<f32> = u_xlat31;
        let x_813 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y) * vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y)) + vec4<f32>(x_816.x, x_816.w, x_816.z, x_816.w));
        let x_820 : vec4<f32> = u_xlat7;
        let x_822 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_820.x, x_820.x, x_820.x, x_820.y) * vec4<f32>(x_822.z, x_822.w, x_822.y, x_822.z));
        let x_826 : vec4<f32> = u_xlat7;
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_826.y, x_826.y, x_826.z, x_826.z) * x_828);
        let x_831 : f32 = u_xlat7.z;
        let x_833 : f32 = u_xlat8.y;
        u_xlat31.x = (x_831 * x_833);
        let x_837 : vec4<f32> = u_xlat11;
        let x_838 : vec2<f32> = vec2<f32>(x_837.x, x_837.y);
        let x_840 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_848 : vec3<f32> = txVec4;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat56 = x_850;
        let x_852 : vec4<f32> = u_xlat11;
        let x_853 : vec2<f32> = vec2<f32>(x_852.z, x_852.w);
        let x_855 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_863 : vec3<f32> = txVec5;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_863.xy, x_863.z);
        u_xlat81 = x_865;
        let x_866 : f32 = u_xlat81;
        let x_868 : f32 = u_xlat14.y;
        u_xlat81 = (x_866 * x_868);
        let x_871 : f32 = u_xlat14.x;
        let x_872 : f32 = u_xlat56;
        let x_874 : f32 = u_xlat81;
        u_xlat56 = ((x_871 * x_872) + x_874);
        let x_877 : vec4<f32> = u_xlat12;
        let x_878 : vec2<f32> = vec2<f32>(x_877.x, x_877.y);
        let x_880 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec6;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat81 = x_889;
        let x_891 : f32 = u_xlat14.z;
        let x_892 : f32 = u_xlat81;
        let x_894 : f32 = u_xlat56;
        u_xlat56 = ((x_891 * x_892) + x_894);
        let x_897 : vec4<f32> = u_xlat10;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec7;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
        u_xlat81 = x_909;
        let x_911 : f32 = u_xlat14.w;
        let x_912 : f32 = u_xlat81;
        let x_914 : f32 = u_xlat56;
        u_xlat56 = ((x_911 * x_912) + x_914);
        let x_917 : vec4<f32> = u_xlat13;
        let x_918 : vec2<f32> = vec2<f32>(x_917.x, x_917.y);
        let x_920 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec8;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_927.xy, x_927.z);
        u_xlat81 = x_929;
        let x_931 : f32 = u_xlat15.x;
        let x_932 : f32 = u_xlat81;
        let x_934 : f32 = u_xlat56;
        u_xlat56 = ((x_931 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat13;
        let x_938 : vec2<f32> = vec2<f32>(x_937.z, x_937.w);
        let x_940 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec9;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_947.xy, x_947.z);
        u_xlat81 = x_949;
        let x_951 : f32 = u_xlat15.y;
        let x_952 : f32 = u_xlat81;
        let x_954 : f32 = u_xlat56;
        u_xlat56 = ((x_951 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat10;
        let x_958 : vec2<f32> = vec2<f32>(x_957.z, x_957.w);
        let x_960 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec10;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_967.xy, x_967.z);
        u_xlat81 = x_969;
        let x_971 : f32 = u_xlat15.z;
        let x_972 : f32 = u_xlat81;
        let x_974 : f32 = u_xlat56;
        u_xlat56 = ((x_971 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat9;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec11;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
        u_xlat81 = x_989;
        let x_991 : f32 = u_xlat15.w;
        let x_992 : f32 = u_xlat81;
        let x_994 : f32 = u_xlat56;
        u_xlat56 = ((x_991 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat9;
        let x_998 : vec2<f32> = vec2<f32>(x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec12;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1007.xy, x_1007.z);
        u_xlat81 = x_1009;
        let x_1011 : f32 = u_xlat31.x;
        let x_1012 : f32 = u_xlat81;
        let x_1014 : f32 = u_xlat56;
        u_xlat6.x = ((x_1011 * x_1012) + x_1014);
      } else {
        let x_1018 : vec4<f32> = u_xlat3;
        let x_1021 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(x_1021.z, x_1021.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1025 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1025);
        let x_1027 : vec4<f32> = u_xlat3;
        let x_1030 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = u_xlat31;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + -(x_1033));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1038.x, x_1038.x, x_1038.y, x_1038.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1041 : vec4<f32> = u_xlat8;
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1041.x, x_1041.x, x_1041.z, x_1041.z) * vec4<f32>(x_1043.x, x_1043.x, x_1043.z, x_1043.z));
        let x_1046 : vec4<f32> = u_xlat9;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1046.y, x_1046.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1051.x, x_1050.x, x_1051.z, x_1050.y);
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1053.x, x_1053.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1056.x, x_1056.y)));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1063 : vec2<f32> = (-(vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1063.x, x_1064.y, x_1063.y, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = min(vec2<f32>(x_1066.x, x_1066.y), vec2<f32>(0.0f, 0.0f));
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1077 : vec4<f32> = u_xlat8;
        let x_1079 : vec2<f32> = ((-(vec2<f32>(x_1071.x, x_1071.y)) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.x, x_1077.z));
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat7;
        let x_1084 : vec2<f32> = max(vec2<f32>(x_1082.x, x_1082.y), vec2<f32>(0.0f, 0.0f));
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat9;
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1093 : vec4<f32> = u_xlat8;
        let x_1095 : vec2<f32> = ((-(vec2<f32>(x_1087.x, x_1087.y)) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.y, x_1093.w));
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1096.x, x_1095.x, x_1096.z, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1098 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1102 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1102 * 0.08163200318813323975f);
        let x_1106 : vec2<f32> = u_xlat57;
        let x_1109 : vec2<f32> = (vec2<f32>(x_1106.y, x_1106.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1112.x, x_1112.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1116 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1116 * 0.08163200318813323975f);
        let x_1120 : f32 = u_xlat11.y;
        u_xlat9.x = x_1120;
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1137.y, x_1136.y, x_1137.w);
        let x_1140 : f32 = u_xlat57.x;
        u_xlat8.y = x_1140;
        let x_1143 : f32 = u_xlat10.y;
        u_xlat8.w = x_1143;
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1145 + x_1146);
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1148.y, x_1148.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1151.x, x_1152.z, x_1151.y);
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec2<f32> = ((vec2<f32>(x_1154.y, x_1154.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1157.x, x_1158.y, x_1157.y, x_1158.w);
        let x_1161 : f32 = u_xlat57.y;
        u_xlat10.y = x_1161;
        let x_1163 : vec4<f32> = u_xlat10;
        let x_1164 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1163 + x_1164);
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1166 / x_1167);
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1169 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1175 / x_1176);
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1178 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1183 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1180.w, x_1180.x, x_1180.y, x_1180.z) * vec4<f32>(x_1183.x, x_1183.x, x_1183.x, x_1183.x));
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1189 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1186.x, x_1186.w, x_1186.y, x_1186.z) * vec4<f32>(x_1189.y, x_1189.y, x_1189.y, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat8;
        let x_1193 : vec3<f32> = vec3<f32>(x_1192.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1193.x, x_1194.y, x_1193.y, x_1193.z);
        let x_1197 : f32 = u_xlat10.x;
        u_xlat11.y = x_1197;
        let x_1199 : vec2<f32> = u_xlat31;
        let x_1202 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1205.y));
        let x_1208 : vec2<f32> = u_xlat31;
        let x_1210 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = ((x_1208 * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1213.w, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat11.y;
        u_xlat8.y = x_1219;
        let x_1222 : f32 = u_xlat10.z;
        u_xlat11.y = x_1222;
        let x_1224 : vec2<f32> = u_xlat31;
        let x_1227 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1234 : vec2<f32> = u_xlat31;
        let x_1236 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1234 * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.w, x_1239.y));
        let x_1243 : f32 = u_xlat11.y;
        u_xlat8.z = x_1243;
        let x_1245 : vec2<f32> = u_xlat31;
        let x_1248 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.z));
        let x_1255 : f32 = u_xlat10.w;
        u_xlat11.y = x_1255;
        let x_1258 : vec2<f32> = u_xlat31;
        let x_1261 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y) * vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y)) + vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1264.y));
        let x_1268 : vec2<f32> = u_xlat31;
        let x_1270 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1268 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1277 : f32 = u_xlat11.y;
        u_xlat8.w = x_1277;
        let x_1280 : vec2<f32> = u_xlat31;
        let x_1282 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        let x_1287 : vec2<f32> = ((x_1280 * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.x, x_1285.w));
        let x_1288 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat11;
        let x_1291 : vec3<f32> = vec3<f32>(x_1290.x, x_1290.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1291.x, x_1292.y, x_1291.y, x_1291.z);
        let x_1294 : vec2<f32> = u_xlat31;
        let x_1297 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y) * vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y)) + vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1300.y));
        let x_1304 : vec2<f32> = u_xlat31;
        let x_1306 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1304 * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.w, x_1309.y));
        let x_1313 : f32 = u_xlat8.x;
        u_xlat10.x = x_1313;
        let x_1315 : vec2<f32> = u_xlat31;
        let x_1317 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1315 * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1320.x, x_1320.y));
        let x_1324 : vec4<f32> = u_xlat7;
        let x_1326 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1324.x, x_1324.x, x_1324.x, x_1324.x) * x_1326);
        let x_1329 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1329.y, x_1329.y, x_1329.y, x_1329.y) * x_1331);
        let x_1334 : vec4<f32> = u_xlat7;
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1334.z, x_1334.z, x_1334.z, x_1334.z) * x_1336);
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1340 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1338.w, x_1338.w, x_1338.w, x_1338.w) * x_1340);
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec13;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1353.xy, x_1353.z);
        u_xlat81 = x_1355;
        let x_1357 : vec4<f32> = u_xlat12;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.z, x_1357.w);
        let x_1360 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec14;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat8.x = x_1369;
        let x_1372 : f32 = u_xlat8.x;
        let x_1374 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1372 * x_1374);
        let x_1378 : f32 = u_xlat18.x;
        let x_1379 : f32 = u_xlat81;
        let x_1382 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1378 * x_1379) + x_1382);
        let x_1385 : vec4<f32> = u_xlat13;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec15;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat8.x = x_1397;
        let x_1400 : f32 = u_xlat18.z;
        let x_1402 : f32 = u_xlat8.x;
        let x_1404 : f32 = u_xlat81;
        u_xlat81 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat15;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec16;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat8.x = x_1419;
        let x_1422 : f32 = u_xlat18.w;
        let x_1424 : f32 = u_xlat8.x;
        let x_1426 : f32 = u_xlat81;
        u_xlat81 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat14;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec17;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat8.x = x_1441;
        let x_1444 : f32 = u_xlat19.x;
        let x_1446 : f32 = u_xlat8.x;
        let x_1448 : f32 = u_xlat81;
        u_xlat81 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat14;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec18;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat8.x = x_1463;
        let x_1466 : f32 = u_xlat19.y;
        let x_1468 : f32 = u_xlat8.x;
        let x_1470 : f32 = u_xlat81;
        u_xlat81 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat63;
        let x_1475 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec19;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat8.x = x_1484;
        let x_1487 : f32 = u_xlat19.z;
        let x_1489 : f32 = u_xlat8.x;
        let x_1491 : f32 = u_xlat81;
        u_xlat81 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat15;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec20;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat8.x = x_1506;
        let x_1509 : f32 = u_xlat19.w;
        let x_1511 : f32 = u_xlat8.x;
        let x_1513 : f32 = u_xlat81;
        u_xlat81 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat16;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec21;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat8.x = x_1528;
        let x_1531 : f32 = u_xlat20.x;
        let x_1533 : f32 = u_xlat8.x;
        let x_1535 : f32 = u_xlat81;
        u_xlat81 = ((x_1531 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat16;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec22;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1548.xy, x_1548.z);
        u_xlat8.x = x_1550;
        let x_1553 : f32 = u_xlat20.y;
        let x_1555 : f32 = u_xlat8.x;
        let x_1557 : f32 = u_xlat81;
        u_xlat81 = ((x_1553 * x_1555) + x_1557);
        let x_1560 : vec2<f32> = u_xlat33;
        let x_1562 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec23;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1569.xy, x_1569.z);
        u_xlat8.x = x_1571;
        let x_1574 : f32 = u_xlat20.z;
        let x_1576 : f32 = u_xlat8.x;
        let x_1578 : f32 = u_xlat81;
        u_xlat81 = ((x_1574 * x_1576) + x_1578);
        let x_1581 : vec4<f32> = u_xlat17;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
        let x_1584 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec24;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1591.xy, x_1591.z);
        u_xlat8.x = x_1593;
        let x_1596 : f32 = u_xlat20.w;
        let x_1598 : f32 = u_xlat8.x;
        let x_1600 : f32 = u_xlat81;
        u_xlat81 = ((x_1596 * x_1598) + x_1600);
        let x_1603 : vec4<f32> = u_xlat11;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.x, x_1603.y);
        let x_1606 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec25;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat8.x = x_1615;
        let x_1618 : f32 = u_xlat7.x;
        let x_1620 : f32 = u_xlat8.x;
        let x_1622 : f32 = u_xlat81;
        u_xlat81 = ((x_1618 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat11;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec26;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat7.x = x_1637;
        let x_1640 : f32 = u_xlat7.y;
        let x_1642 : f32 = u_xlat7.x;
        let x_1644 : f32 = u_xlat81;
        u_xlat81 = ((x_1640 * x_1642) + x_1644);
        let x_1647 : vec2<f32> = u_xlat60;
        let x_1649 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec27;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1656.xy, x_1656.z);
        u_xlat7.x = x_1658;
        let x_1661 : f32 = u_xlat7.z;
        let x_1663 : f32 = u_xlat7.x;
        let x_1665 : f32 = u_xlat81;
        u_xlat81 = ((x_1661 * x_1663) + x_1665);
        let x_1668 : vec2<f32> = u_xlat31;
        let x_1670 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec28;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1677.xy, x_1677.z);
        u_xlat31.x = x_1679;
        let x_1682 : f32 = u_xlat7.w;
        let x_1684 : f32 = u_xlat31.x;
        let x_1686 : f32 = u_xlat81;
        u_xlat6.x = ((x_1682 * x_1684) + x_1686);
      }
    }
  } else {
    let x_1691 : vec4<f32> = u_xlat3;
    let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
    let x_1694 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
    let x_1701 : vec3<f32> = txVec29;
    let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
    u_xlat6.x = x_1703;
  }
  let x_1706 : f32 = x_128.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1706) + 1.0f);
  let x_1711 : f32 = u_xlat6.x;
  let x_1713 : f32 = x_128.x_MainLightShadowParams.x;
  let x_1716 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1711 * x_1713) + x_1716);
  let x_1721 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_1721);
  let x_1725 : f32 = u_xlat3.z;
  u_xlatb53 = (x_1725 >= 1.0f);
  let x_1727 : bool = u_xlatb53;
  let x_1728 : bool = u_xlatb28;
  u_xlatb28 = (x_1727 | x_1728);
  let x_1730 : bool = u_xlatb28;
  if (x_1730) {
    x_1732 = 1.0f;
  } else {
    let x_1737 : f32 = u_xlat3.x;
    x_1732 = x_1737;
  }
  let x_1738 : f32 = x_1732;
  u_xlat3.x = x_1738;
  let x_1740 : vec3<f32> = vs_TEXCOORD7;
  let x_1742 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1744 : vec3<f32> = (x_1740 + -(x_1742));
  let x_1745 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1748 : vec4<f32> = u_xlat6;
  let x_1750 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1748.x, x_1748.y, x_1748.z), vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1754 : f32 = u_xlat28;
  let x_1756 : f32 = x_128.x_MainLightShadowParams.z;
  let x_1759 : f32 = x_128.x_MainLightShadowParams.w;
  u_xlat53 = ((x_1754 * x_1756) + x_1759);
  let x_1761 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1761, 0.0f, 1.0f);
  let x_1764 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1764) + 1.0f);
  let x_1768 : f32 = u_xlat53;
  let x_1770 : f32 = u_xlat6.x;
  let x_1773 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1768 * x_1770) + x_1773);
  let x_1776 : vec3<f32> = u_xlat26;
  let x_1778 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(-(x_1776), x_1778);
  let x_1780 : f32 = u_xlat53;
  let x_1781 : f32 = u_xlat53;
  u_xlat53 = (x_1780 + x_1781);
  let x_1783 : vec3<f32> = u_xlat2;
  let x_1784 : f32 = u_xlat53;
  let x_1788 : vec3<f32> = u_xlat26;
  let x_1790 : vec3<f32> = ((x_1783 * -(vec3<f32>(x_1784, x_1784, x_1784))) + -(x_1788));
  let x_1791 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec3<f32> = u_xlat2;
  let x_1794 : vec3<f32> = u_xlat26;
  u_xlat53 = dot(x_1793, x_1794);
  let x_1796 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1796, 0.0f, 1.0f);
  let x_1798 : f32 = u_xlat53;
  u_xlat53 = (-(x_1798) + 1.0f);
  let x_1801 : f32 = u_xlat53;
  let x_1802 : f32 = u_xlat53;
  u_xlat53 = (x_1801 * x_1802);
  let x_1804 : f32 = u_xlat53;
  let x_1805 : f32 = u_xlat53;
  u_xlat53 = (x_1804 * x_1805);
  let x_1807 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1807) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1813 : f32 = u_xlat1;
  let x_1814 : f32 = u_xlat81;
  u_xlat1 = (x_1813 * x_1814);
  let x_1816 : f32 = u_xlat1;
  u_xlat1 = (x_1816 * 6.0f);
  let x_1827 : vec4<f32> = u_xlat6;
  let x_1829 : f32 = u_xlat1;
  let x_1830 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1827.x, x_1827.y, x_1827.z), x_1829);
  u_xlat6 = x_1830;
  let x_1832 : f32 = u_xlat6.w;
  u_xlat1 = (x_1832 + -1.0f);
  let x_1839 : f32 = x_1837.unity_SpecCube0_HDR.w;
  let x_1840 : f32 = u_xlat1;
  u_xlat1 = ((x_1839 * x_1840) + 1.0f);
  let x_1843 : f32 = u_xlat1;
  u_xlat1 = max(x_1843, 0.0f);
  let x_1845 : f32 = u_xlat1;
  u_xlat1 = log2(x_1845);
  let x_1847 : f32 = u_xlat1;
  let x_1849 : f32 = x_1837.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1847 * x_1849);
  let x_1851 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1851);
  let x_1853 : f32 = u_xlat1;
  let x_1855 : f32 = x_1837.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1853 * x_1855);
  let x_1857 : vec4<f32> = u_xlat6;
  let x_1859 : f32 = u_xlat1;
  let x_1861 : vec3<f32> = (vec3<f32>(x_1857.x, x_1857.y, x_1857.z) * vec3<f32>(x_1859, x_1859, x_1859));
  let x_1862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
  let x_1864 : f32 = u_xlat78;
  let x_1866 : f32 = u_xlat78;
  let x_1870 : vec2<f32> = ((vec2<f32>(x_1864, x_1864) * vec2<f32>(x_1866, x_1866)) + vec2<f32>(-1.0f, 1.0f));
  let x_1871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1870.x, x_1870.y, x_1871.z, x_1871.w);
  let x_1874 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1874);
  let x_1877 : vec4<f32> = u_xlat0;
  let x_1880 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1877.x, x_1877.y, x_1877.z)) + vec3<f32>(x_1880, x_1880, x_1880));
  let x_1883 : f32 = u_xlat53;
  let x_1885 : vec3<f32> = u_xlat32;
  let x_1887 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1883, x_1883, x_1883) * x_1885) + vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : f32 = u_xlat1;
  let x_1892 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1890, x_1890, x_1890) * x_1892);
  let x_1894 : vec4<f32> = u_xlat6;
  let x_1896 : vec3<f32> = u_xlat32;
  let x_1897 : vec3<f32> = (vec3<f32>(x_1894.x, x_1894.y, x_1894.z) * x_1896);
  let x_1898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
  let x_1900 : vec4<f32> = u_xlat4;
  let x_1902 : vec3<f32> = u_xlat5;
  let x_1904 : vec4<f32> = u_xlat6;
  let x_1906 : vec3<f32> = ((vec3<f32>(x_1900.x, x_1900.y, x_1900.z) * x_1902) + vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1910 : f32 = u_xlat3.x;
  let x_1912 : f32 = x_1837.unity_LightData.z;
  u_xlat75 = (x_1910 * x_1912);
  let x_1914 : vec3<f32> = u_xlat2;
  let x_1916 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1914, vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1919, 0.0f, 1.0f);
  let x_1921 : f32 = u_xlat75;
  let x_1922 : f32 = u_xlat1;
  u_xlat75 = (x_1921 * x_1922);
  let x_1924 : f32 = u_xlat75;
  let x_1927 : vec4<f32> = x_29.x_MainLightColor;
  let x_1929 : vec3<f32> = (vec3<f32>(x_1924, x_1924, x_1924) * vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1929.x, x_1930.y, x_1929.y, x_1929.z);
  let x_1932 : vec3<f32> = u_xlat26;
  let x_1934 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1936 : vec3<f32> = (x_1932 + vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : vec4<f32> = u_xlat6;
  let x_1941 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1939.x, x_1939.y, x_1939.z), vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : f32 = u_xlat75;
  u_xlat75 = max(x_1944, 1.17549435e-38f);
  let x_1947 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1947);
  let x_1949 : f32 = u_xlat75;
  let x_1951 : vec4<f32> = u_xlat6;
  let x_1953 : vec3<f32> = (vec3<f32>(x_1949, x_1949, x_1949) * vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
  let x_1954 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
  let x_1956 : vec3<f32> = u_xlat2;
  let x_1957 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1956, vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1960, 0.0f, 1.0f);
  let x_1963 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1965 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1968, 0.0f, 1.0f);
  let x_1970 : f32 = u_xlat75;
  let x_1971 : f32 = u_xlat75;
  u_xlat75 = (x_1970 * x_1971);
  let x_1973 : f32 = u_xlat75;
  let x_1975 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1973 * x_1975) + 1.00001001358032226562f);
  let x_1979 : f32 = u_xlat1;
  let x_1980 : f32 = u_xlat1;
  u_xlat1 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat75;
  let x_1983 : f32 = u_xlat75;
  u_xlat75 = (x_1982 * x_1983);
  let x_1985 : f32 = u_xlat1;
  u_xlat1 = max(x_1985, 0.10000000149011611938f);
  let x_1988 : f32 = u_xlat75;
  let x_1989 : f32 = u_xlat1;
  u_xlat75 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat79;
  let x_1992 : f32 = u_xlat75;
  u_xlat75 = (x_1991 * x_1992);
  let x_1994 : f32 = u_xlat80;
  let x_1995 : f32 = u_xlat75;
  u_xlat75 = (x_1994 / x_1995);
  let x_1997 : vec4<f32> = u_xlat0;
  let x_1999 : f32 = u_xlat75;
  let x_2002 : vec3<f32> = u_xlat5;
  let x_2003 : vec3<f32> = ((vec3<f32>(x_1997.x, x_1997.y, x_1997.z) * vec3<f32>(x_1999, x_1999, x_1999)) + x_2002);
  let x_2004 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
  let x_2007 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2009 : f32 = x_1837.unity_LightData.y;
  u_xlat75 = min(x_2007, x_2009);
  let x_2012 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2012));
  let x_2015 : f32 = u_xlat28;
  let x_2018 : f32 = x_128.x_AdditionalShadowFadeParams.x;
  let x_2021 : f32 = x_128.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2015 * x_2018) + x_2021);
  let x_2023 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2023, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2035 : u32 = u_xlatu_loop_1;
    let x_2036 : u32 = u_xlatu75;
    if ((x_2035 < x_2036)) {
    } else {
      break;
    }
    let x_2039 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2039 >> 2u);
    let x_2042 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2042 & 3u));
    let x_2045 : u32 = u_xlatu81;
    let x_2048 : vec4<f32> = x_1837.unity_LightIndices[bitcast<i32>(x_2045)];
    let x_2058 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2063 : vec4<u32> = indexable[x_2058];
    u_xlat81 = dot(x_2048, bitcast<vec4<f32>>(x_2063));
    let x_2067 : f32 = u_xlat81;
    u_xlati81 = i32(x_2067);
    let x_2069 : vec3<f32> = vs_TEXCOORD7;
    let x_2080 : i32 = u_xlati81;
    let x_2082 : vec4<f32> = x_2079.x_AdditionalLightsPosition[x_2080];
    let x_2085 : i32 = u_xlati81;
    let x_2087 : vec4<f32> = x_2079.x_AdditionalLightsPosition[x_2085];
    let x_2089 : vec3<f32> = ((-(x_2069) * vec3<f32>(x_2082.w, x_2082.w, x_2082.w)) + vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
    let x_2090 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
    let x_2093 : vec4<f32> = u_xlat8;
    let x_2095 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2093.x, x_2093.y, x_2093.z), vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
    let x_2098 : f32 = u_xlat83;
    u_xlat83 = max(x_2098, 0.00006103515625f);
    let x_2101 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2101);
    let x_2105 : vec4<f32> = u_xlat8;
    let x_2107 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2105.x, x_2105.y, x_2105.z) * vec3<f32>(x_2107.x, x_2107.x, x_2107.x));
    let x_2110 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2110);
    let x_2113 : f32 = u_xlat83;
    let x_2114 : i32 = u_xlati81;
    let x_2116 : f32 = x_2079.x_AdditionalLightsAttenuation[x_2114].x;
    u_xlat83 = (x_2113 * x_2116);
    let x_2118 : f32 = u_xlat83;
    let x_2120 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2118) * x_2120) + 1.0f);
    let x_2123 : f32 = u_xlat83;
    u_xlat83 = max(x_2123, 0.0f);
    let x_2125 : f32 = u_xlat83;
    let x_2126 : f32 = u_xlat83;
    u_xlat83 = (x_2125 * x_2126);
    let x_2128 : f32 = u_xlat83;
    let x_2130 : f32 = u_xlat10.x;
    u_xlat83 = (x_2128 * x_2130);
    let x_2132 : i32 = u_xlati81;
    let x_2134 : vec4<f32> = x_2079.x_AdditionalLightsSpotDir[x_2132];
    let x_2136 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2134.x, x_2134.y, x_2134.z), x_2136);
    let x_2140 : f32 = u_xlat10.x;
    let x_2141 : i32 = u_xlati81;
    let x_2143 : f32 = x_2079.x_AdditionalLightsAttenuation[x_2141].z;
    let x_2145 : i32 = u_xlati81;
    let x_2147 : f32 = x_2079.x_AdditionalLightsAttenuation[x_2145].w;
    u_xlat10.x = ((x_2140 * x_2143) + x_2147);
    let x_2151 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2151, 0.0f, 1.0f);
    let x_2155 : f32 = u_xlat10.x;
    let x_2157 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2155 * x_2157);
    let x_2160 : f32 = u_xlat83;
    let x_2162 : f32 = u_xlat10.x;
    u_xlat83 = (x_2160 * x_2162);
    let x_2166 : i32 = u_xlati81;
    let x_2168 : f32 = x_128.x_AdditionalShadowParams[x_2166].w;
    u_xlati10 = i32(x_2168);
    let x_2173 : i32 = u_xlati10;
    u_xlatb35.x = (x_2173 >= 0i);
    let x_2177 : bool = u_xlatb35.x;
    if (x_2177) {
      let x_2181 : i32 = u_xlati81;
      let x_2183 : f32 = x_128.x_AdditionalShadowParams[x_2181].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2183, x_2183, x_2183, x_2183))));
      let x_2189 : bool = u_xlatb35.x;
      if (x_2189) {
        let x_2192 : vec3<f32> = u_xlat34;
        let x_2195 : vec3<f32> = u_xlat34;
        let x_2198 : vec4<bool> = (abs(vec4<f32>(x_2192.z, x_2192.z, x_2192.y, x_2192.y)) >= abs(vec4<f32>(x_2195.x, x_2195.y, x_2195.x, x_2195.x)));
        u_xlatb35 = vec3<bool>(x_2198.x, x_2198.y, x_2198.z);
        let x_2201 : bool = u_xlatb35.y;
        let x_2203 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2201 & x_2203);
        let x_2207 : vec3<f32> = u_xlat34;
        let x_2210 : vec4<bool> = (-(vec4<f32>(x_2207.z, x_2207.y, x_2207.x, x_2207.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2210.x, x_2210.y, x_2210.z);
        let x_2213 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2213);
        let x_2218 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2218);
        let x_2222 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2222);
        let x_2226 : bool = u_xlatb35.z;
        if (x_2226) {
          let x_2231 : f32 = u_xlat11.y;
          x_2227 = x_2231;
        } else {
          let x_2234 : f32 = u_xlat60.x;
          x_2227 = x_2234;
        }
        let x_2235 : f32 = x_2227;
        u_xlat60.x = x_2235;
        let x_2239 : bool = u_xlatb35.x;
        if (x_2239) {
          let x_2244 : f32 = u_xlat11.x;
          x_2240 = x_2244;
        } else {
          let x_2247 : f32 = u_xlat60.x;
          x_2240 = x_2247;
        }
        let x_2248 : f32 = x_2240;
        u_xlat35 = x_2248;
        let x_2249 : i32 = u_xlati81;
        let x_2251 : f32 = x_128.x_AdditionalShadowParams[x_2249].w;
        u_xlat60.x = trunc(x_2251);
        let x_2254 : f32 = u_xlat35;
        let x_2256 : f32 = u_xlat60.x;
        u_xlat35 = (x_2254 + x_2256);
        let x_2258 : f32 = u_xlat35;
        u_xlati10 = i32(x_2258);
      }
      let x_2260 : i32 = u_xlati10;
      u_xlati10 = (x_2260 << bitcast<u32>(2i));
      let x_2262 : vec3<f32> = vs_TEXCOORD7;
      let x_2265 : i32 = u_xlati10;
      let x_2268 : i32 = u_xlati10;
      let x_2272 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_2265 + 1i) / 4i)][((x_2268 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2262.y, x_2262.y, x_2262.y, x_2262.y) * x_2272);
      let x_2274 : i32 = u_xlati10;
      let x_2276 : i32 = u_xlati10;
      let x_2279 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[(x_2274 / 4i)][(x_2276 % 4i)];
      let x_2280 : vec3<f32> = vs_TEXCOORD7;
      let x_2283 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2279 * vec4<f32>(x_2280.x, x_2280.x, x_2280.x, x_2280.x)) + x_2283);
      let x_2285 : i32 = u_xlati10;
      let x_2288 : i32 = u_xlati10;
      let x_2292 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_2285 + 2i) / 4i)][((x_2288 + 2i) % 4i)];
      let x_2293 : vec3<f32> = vs_TEXCOORD7;
      let x_2296 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2292 * vec4<f32>(x_2293.z, x_2293.z, x_2293.z, x_2293.z)) + x_2296);
      let x_2298 : vec4<f32> = u_xlat11;
      let x_2299 : i32 = u_xlati10;
      let x_2302 : i32 = u_xlati10;
      let x_2306 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_2299 + 3i) / 4i)][((x_2302 + 3i) % 4i)];
      u_xlat10 = (x_2298 + x_2306);
      let x_2308 : vec4<f32> = u_xlat10;
      let x_2310 : vec4<f32> = u_xlat10;
      let x_2312 : vec3<f32> = (vec3<f32>(x_2308.x, x_2308.y, x_2308.z) / vec3<f32>(x_2310.w, x_2310.w, x_2310.w));
      let x_2313 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
      let x_2316 : i32 = u_xlati81;
      let x_2318 : f32 = x_128.x_AdditionalShadowParams[x_2316].y;
      u_xlatb85 = (0.0f < x_2318);
      let x_2320 : bool = u_xlatb85;
      if (x_2320) {
        let x_2323 : i32 = u_xlati81;
        let x_2325 : f32 = x_128.x_AdditionalShadowParams[x_2323].y;
        u_xlatb85 = (1.0f == x_2325);
        let x_2327 : bool = u_xlatb85;
        if (x_2327) {
          let x_2330 : vec4<f32> = u_xlat10;
          let x_2334 : vec4<f32> = x_128.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y) + x_2334);
          let x_2337 : vec4<f32> = u_xlat11;
          let x_2338 : vec2<f32> = vec2<f32>(x_2337.x, x_2337.y);
          let x_2340 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2338.x, x_2338.y, x_2340);
          let x_2348 : vec3<f32> = txVec30;
          let x_2350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
          u_xlat12.x = x_2350;
          let x_2353 : vec4<f32> = u_xlat11;
          let x_2354 : vec2<f32> = vec2<f32>(x_2353.z, x_2353.w);
          let x_2356 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2354.x, x_2354.y, x_2356);
          let x_2363 : vec3<f32> = txVec31;
          let x_2365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
          u_xlat12.y = x_2365;
          let x_2367 : vec4<f32> = u_xlat10;
          let x_2371 : vec4<f32> = x_128.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2367.x, x_2367.y, x_2367.x, x_2367.y) + x_2371);
          let x_2374 : vec4<f32> = u_xlat11;
          let x_2375 : vec2<f32> = vec2<f32>(x_2374.x, x_2374.y);
          let x_2377 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2375.x, x_2375.y, x_2377);
          let x_2384 : vec3<f32> = txVec32;
          let x_2386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2384.xy, x_2384.z);
          u_xlat12.z = x_2386;
          let x_2389 : vec4<f32> = u_xlat11;
          let x_2390 : vec2<f32> = vec2<f32>(x_2389.z, x_2389.w);
          let x_2392 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
          let x_2399 : vec3<f32> = txVec33;
          let x_2401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
          u_xlat12.w = x_2401;
          let x_2404 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2404, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2407 : i32 = u_xlati81;
          let x_2409 : f32 = x_128.x_AdditionalShadowParams[x_2407].y;
          u_xlatb11.x = (2.0f == x_2409);
          let x_2413 : bool = u_xlatb11.x;
          if (x_2413) {
            let x_2416 : vec4<f32> = u_xlat10;
            let x_2420 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2423 : vec2<f32> = ((vec2<f32>(x_2416.x, x_2416.y) * vec2<f32>(x_2420.z, x_2420.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2424 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat11;
            let x_2428 : vec2<f32> = floor(vec2<f32>(x_2426.x, x_2426.y));
            let x_2429 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2428.x, x_2428.y, x_2429.z, x_2429.w);
            let x_2432 : vec4<f32> = u_xlat10;
            let x_2435 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2432.x, x_2432.y) * vec2<f32>(x_2435.z, x_2435.w)) + -(vec2<f32>(x_2438.x, x_2438.y)));
            let x_2442 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2442.x, x_2442.x, x_2442.y, x_2442.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2445 : vec4<f32> = u_xlat12;
            let x_2447 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2445.x, x_2445.x, x_2445.z, x_2445.z) * vec4<f32>(x_2447.x, x_2447.x, x_2447.z, x_2447.z));
            let x_2450 : vec4<f32> = u_xlat13;
            let x_2452 : vec2<f32> = (vec2<f32>(x_2450.y, x_2450.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2453 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2452.x, x_2453.y, x_2452.y, x_2453.w);
            let x_2455 : vec4<f32> = u_xlat13;
            let x_2458 : vec2<f32> = u_xlat61;
            let x_2460 : vec2<f32> = ((vec2<f32>(x_2455.x, x_2455.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2458));
            let x_2461 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
            let x_2463 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2463) + vec2<f32>(1.0f, 1.0f));
            let x_2466 : vec2<f32> = u_xlat61;
            let x_2467 : vec2<f32> = min(x_2466, vec2<f32>(0.0f, 0.0f));
            let x_2468 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2467.x, x_2467.y, x_2468.z, x_2468.w);
            let x_2470 : vec4<f32> = u_xlat14;
            let x_2473 : vec4<f32> = u_xlat14;
            let x_2476 : vec2<f32> = u_xlat63;
            let x_2477 : vec2<f32> = ((-(vec2<f32>(x_2470.x, x_2470.y)) * vec2<f32>(x_2473.x, x_2473.y)) + x_2476);
            let x_2478 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
            let x_2480 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2480, vec2<f32>(0.0f, 0.0f));
            let x_2482 : vec2<f32> = u_xlat61;
            let x_2484 : vec2<f32> = u_xlat61;
            let x_2486 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2482) * x_2484) + vec2<f32>(x_2486.y, x_2486.w));
            let x_2489 : vec4<f32> = u_xlat14;
            let x_2491 : vec2<f32> = (vec2<f32>(x_2489.x, x_2489.y) + vec2<f32>(1.0f, 1.0f));
            let x_2492 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2491.x, x_2491.y, x_2492.z, x_2492.w);
            let x_2494 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2494 + vec2<f32>(1.0f, 1.0f));
            let x_2496 : vec4<f32> = u_xlat13;
            let x_2498 : vec2<f32> = (vec2<f32>(x_2496.x, x_2496.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2499 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2498.x, x_2498.y, x_2499.z, x_2499.w);
            let x_2501 : vec2<f32> = u_xlat63;
            let x_2502 : vec2<f32> = (x_2501 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2503 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
            let x_2505 : vec4<f32> = u_xlat14;
            let x_2507 : vec2<f32> = (vec2<f32>(x_2505.x, x_2505.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2508 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
            let x_2510 : vec2<f32> = u_xlat61;
            let x_2511 : vec2<f32> = (x_2510 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2512 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2514.y, x_2514.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2518 : f32 = u_xlat14.x;
            u_xlat15.z = x_2518;
            let x_2521 : f32 = u_xlat61.x;
            u_xlat15.w = x_2521;
            let x_2524 : f32 = u_xlat16.x;
            u_xlat13.z = x_2524;
            let x_2527 : f32 = u_xlat12.x;
            u_xlat13.w = x_2527;
            let x_2529 : vec4<f32> = u_xlat13;
            let x_2531 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2529.z, x_2529.w, x_2529.x, x_2529.z) + vec4<f32>(x_2531.z, x_2531.w, x_2531.x, x_2531.z));
            let x_2535 : f32 = u_xlat15.y;
            u_xlat14.z = x_2535;
            let x_2538 : f32 = u_xlat61.y;
            u_xlat14.w = x_2538;
            let x_2541 : f32 = u_xlat13.y;
            u_xlat16.z = x_2541;
            let x_2544 : f32 = u_xlat12.z;
            u_xlat16.w = x_2544;
            let x_2546 : vec4<f32> = u_xlat14;
            let x_2548 : vec4<f32> = u_xlat16;
            let x_2550 : vec3<f32> = (vec3<f32>(x_2546.z, x_2546.y, x_2546.w) + vec3<f32>(x_2548.z, x_2548.y, x_2548.w));
            let x_2551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2551.w);
            let x_2553 : vec4<f32> = u_xlat13;
            let x_2555 : vec4<f32> = u_xlat17;
            let x_2557 : vec3<f32> = (vec3<f32>(x_2553.x, x_2553.z, x_2553.w) / vec3<f32>(x_2555.z, x_2555.w, x_2555.y));
            let x_2558 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
            let x_2560 : vec4<f32> = u_xlat13;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2560.x, x_2560.y, x_2560.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2563 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat16;
            let x_2567 : vec4<f32> = u_xlat12;
            let x_2569 : vec3<f32> = (vec3<f32>(x_2565.z, x_2565.y, x_2565.w) / vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
            let x_2570 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
            let x_2572 : vec4<f32> = u_xlat14;
            let x_2574 : vec3<f32> = (vec3<f32>(x_2572.x, x_2572.y, x_2572.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2575 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
            let x_2577 : vec4<f32> = u_xlat13;
            let x_2580 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2582 : vec3<f32> = (vec3<f32>(x_2577.y, x_2577.x, x_2577.z) * vec3<f32>(x_2580.x, x_2580.x, x_2580.x));
            let x_2583 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
            let x_2585 : vec4<f32> = u_xlat14;
            let x_2588 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2590 : vec3<f32> = (vec3<f32>(x_2585.x, x_2585.y, x_2585.z) * vec3<f32>(x_2588.y, x_2588.y, x_2588.y));
            let x_2591 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
            let x_2594 : f32 = u_xlat14.x;
            u_xlat13.w = x_2594;
            let x_2596 : vec4<f32> = u_xlat11;
            let x_2599 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2602 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y) * vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y)) + vec4<f32>(x_2602.y, x_2602.w, x_2602.x, x_2602.w));
            let x_2605 : vec4<f32> = u_xlat11;
            let x_2608 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2611 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2605.x, x_2605.y) * vec2<f32>(x_2608.x, x_2608.y)) + vec2<f32>(x_2611.z, x_2611.w));
            let x_2615 : f32 = u_xlat13.y;
            u_xlat14.w = x_2615;
            let x_2617 : vec4<f32> = u_xlat14;
            let x_2618 : vec2<f32> = vec2<f32>(x_2617.y, x_2617.z);
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2619.x, x_2618.x, x_2619.z, x_2618.y);
            let x_2621 : vec4<f32> = u_xlat11;
            let x_2624 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2627 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2621.x, x_2621.y, x_2621.x, x_2621.y) * vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y)) + vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2627.y));
            let x_2630 : vec4<f32> = u_xlat11;
            let x_2633 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2636 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2630.x, x_2630.y, x_2630.x, x_2630.y) * vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.y)) + vec4<f32>(x_2636.w, x_2636.y, x_2636.w, x_2636.z));
            let x_2639 : vec4<f32> = u_xlat11;
            let x_2642 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2645 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) * vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y)) + vec4<f32>(x_2645.x, x_2645.w, x_2645.z, x_2645.w));
            let x_2648 : vec4<f32> = u_xlat12;
            let x_2650 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2648.x, x_2648.x, x_2648.x, x_2648.y) * vec4<f32>(x_2650.z, x_2650.w, x_2650.y, x_2650.z));
            let x_2653 : vec4<f32> = u_xlat12;
            let x_2655 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2653.y, x_2653.y, x_2653.z, x_2653.z) * x_2655);
            let x_2658 : f32 = u_xlat12.z;
            let x_2660 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2658 * x_2660);
            let x_2664 : vec4<f32> = u_xlat15;
            let x_2665 : vec2<f32> = vec2<f32>(x_2664.x, x_2664.y);
            let x_2667 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2665.x, x_2665.y, x_2667);
            let x_2675 : vec3<f32> = txVec34;
            let x_2677 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2675.xy, x_2675.z);
            u_xlat36 = x_2677;
            let x_2679 : vec4<f32> = u_xlat15;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec35;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat12.x = x_2691;
            let x_2694 : f32 = u_xlat12.x;
            let x_2696 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2694 * x_2696);
            let x_2700 : f32 = u_xlat18.x;
            let x_2701 : f32 = u_xlat36;
            let x_2704 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2700 * x_2701) + x_2704);
            let x_2707 : vec2<f32> = u_xlat61;
            let x_2709 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec36;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat61.x = x_2718;
            let x_2721 : f32 = u_xlat18.z;
            let x_2723 : f32 = u_xlat61.x;
            let x_2725 : f32 = u_xlat36;
            u_xlat36 = ((x_2721 * x_2723) + x_2725);
            let x_2728 : vec4<f32> = u_xlat14;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.x, x_2728.y);
            let x_2731 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec37;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat61.x = x_2740;
            let x_2743 : f32 = u_xlat18.w;
            let x_2745 : f32 = u_xlat61.x;
            let x_2747 : f32 = u_xlat36;
            u_xlat36 = ((x_2743 * x_2745) + x_2747);
            let x_2750 : vec4<f32> = u_xlat16;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.x, x_2750.y);
            let x_2753 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec38;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat61.x = x_2762;
            let x_2765 : f32 = u_xlat19.x;
            let x_2767 : f32 = u_xlat61.x;
            let x_2769 : f32 = u_xlat36;
            u_xlat36 = ((x_2765 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat16;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.z, x_2772.w);
            let x_2775 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec39;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat61.x = x_2784;
            let x_2787 : f32 = u_xlat19.y;
            let x_2789 : f32 = u_xlat61.x;
            let x_2791 : f32 = u_xlat36;
            u_xlat36 = ((x_2787 * x_2789) + x_2791);
            let x_2794 : vec4<f32> = u_xlat14;
            let x_2795 : vec2<f32> = vec2<f32>(x_2794.z, x_2794.w);
            let x_2797 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
            let x_2804 : vec3<f32> = txVec40;
            let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
            u_xlat61.x = x_2806;
            let x_2809 : f32 = u_xlat19.z;
            let x_2811 : f32 = u_xlat61.x;
            let x_2813 : f32 = u_xlat36;
            u_xlat36 = ((x_2809 * x_2811) + x_2813);
            let x_2816 : vec4<f32> = u_xlat13;
            let x_2817 : vec2<f32> = vec2<f32>(x_2816.x, x_2816.y);
            let x_2819 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
            let x_2826 : vec3<f32> = txVec41;
            let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
            u_xlat61.x = x_2828;
            let x_2831 : f32 = u_xlat19.w;
            let x_2833 : f32 = u_xlat61.x;
            let x_2835 : f32 = u_xlat36;
            u_xlat36 = ((x_2831 * x_2833) + x_2835);
            let x_2838 : vec4<f32> = u_xlat13;
            let x_2839 : vec2<f32> = vec2<f32>(x_2838.z, x_2838.w);
            let x_2841 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2839.x, x_2839.y, x_2841);
            let x_2848 : vec3<f32> = txVec42;
            let x_2850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2848.xy, x_2848.z);
            u_xlat61.x = x_2850;
            let x_2853 : f32 = u_xlat11.x;
            let x_2855 : f32 = u_xlat61.x;
            let x_2857 : f32 = u_xlat36;
            u_xlat85 = ((x_2853 * x_2855) + x_2857);
          } else {
            let x_2860 : vec4<f32> = u_xlat10;
            let x_2863 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2866 : vec2<f32> = ((vec2<f32>(x_2860.x, x_2860.y) * vec2<f32>(x_2863.z, x_2863.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2867 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2866.x, x_2866.y, x_2867.z, x_2867.w);
            let x_2869 : vec4<f32> = u_xlat11;
            let x_2871 : vec2<f32> = floor(vec2<f32>(x_2869.x, x_2869.y));
            let x_2872 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2871.x, x_2871.y, x_2872.z, x_2872.w);
            let x_2874 : vec4<f32> = u_xlat10;
            let x_2877 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2880 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2874.x, x_2874.y) * vec2<f32>(x_2877.z, x_2877.w)) + -(vec2<f32>(x_2880.x, x_2880.y)));
            let x_2884 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2884.x, x_2884.x, x_2884.y, x_2884.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2887 : vec4<f32> = u_xlat12;
            let x_2889 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2887.x, x_2887.x, x_2887.z, x_2887.z) * vec4<f32>(x_2889.x, x_2889.x, x_2889.z, x_2889.z));
            let x_2892 : vec4<f32> = u_xlat13;
            let x_2894 : vec2<f32> = (vec2<f32>(x_2892.y, x_2892.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2895 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2895.x, x_2894.x, x_2895.z, x_2894.y);
            let x_2897 : vec4<f32> = u_xlat13;
            let x_2900 : vec2<f32> = u_xlat61;
            let x_2902 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2900));
            let x_2903 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2902.x, x_2903.y, x_2902.y, x_2903.w);
            let x_2905 : vec2<f32> = u_xlat61;
            let x_2907 : vec2<f32> = (-(x_2905) + vec2<f32>(1.0f, 1.0f));
            let x_2908 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2907.x, x_2907.y, x_2908.z, x_2908.w);
            let x_2910 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2910, vec2<f32>(0.0f, 0.0f));
            let x_2912 : vec2<f32> = u_xlat63;
            let x_2914 : vec2<f32> = u_xlat63;
            let x_2916 : vec4<f32> = u_xlat13;
            let x_2918 : vec2<f32> = ((-(x_2912) * x_2914) + vec2<f32>(x_2916.x, x_2916.y));
            let x_2919 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2921, vec2<f32>(0.0f, 0.0f));
            let x_2924 : vec2<f32> = u_xlat63;
            let x_2926 : vec2<f32> = u_xlat63;
            let x_2928 : vec4<f32> = u_xlat12;
            let x_2930 : vec2<f32> = ((-(x_2924) * x_2926) + vec2<f32>(x_2928.y, x_2928.w));
            let x_2931 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2930.x, x_2931.y, x_2930.y);
            let x_2933 : vec4<f32> = u_xlat13;
            let x_2936 : vec2<f32> = (vec2<f32>(x_2933.x, x_2933.y) + vec2<f32>(2.0f, 2.0f));
            let x_2937 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2939 : vec3<f32> = u_xlat37;
            let x_2941 : vec2<f32> = (vec2<f32>(x_2939.x, x_2939.z) + vec2<f32>(2.0f, 2.0f));
            let x_2942 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2942.x, x_2941.x, x_2942.z, x_2941.y);
            let x_2945 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2945 * 0.08163200318813323975f);
            let x_2948 : vec4<f32> = u_xlat12;
            let x_2951 : vec3<f32> = (vec3<f32>(x_2948.z, x_2948.x, x_2948.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2952 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2952.w);
            let x_2954 : vec4<f32> = u_xlat13;
            let x_2956 : vec2<f32> = (vec2<f32>(x_2954.x, x_2954.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2957 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
            let x_2960 : f32 = u_xlat16.y;
            u_xlat15.x = x_2960;
            let x_2962 : vec2<f32> = u_xlat61;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2962.x, x_2962.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2966 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2966.x, x_2965.x, x_2966.z, x_2965.y);
            let x_2968 : vec2<f32> = u_xlat61;
            let x_2971 : vec2<f32> = ((vec2<f32>(x_2968.x, x_2968.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2972 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2971.x, x_2972.y, x_2971.y, x_2972.w);
            let x_2975 : f32 = u_xlat12.x;
            u_xlat13.y = x_2975;
            let x_2978 : f32 = u_xlat14.y;
            u_xlat13.w = x_2978;
            let x_2980 : vec4<f32> = u_xlat13;
            let x_2981 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2980 + x_2981);
            let x_2983 : vec2<f32> = u_xlat61;
            let x_2986 : vec2<f32> = ((vec2<f32>(x_2983.y, x_2983.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2987 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2987.x, x_2986.x, x_2987.z, x_2986.y);
            let x_2989 : vec2<f32> = u_xlat61;
            let x_2992 : vec2<f32> = ((vec2<f32>(x_2989.y, x_2989.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2992.x, x_2993.y, x_2992.y, x_2993.w);
            let x_2996 : f32 = u_xlat12.y;
            u_xlat14.y = x_2996;
            let x_2998 : vec4<f32> = u_xlat14;
            let x_2999 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2998 + x_2999);
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3002 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3001 / x_3002);
            let x_3004 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3004 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3007 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3006 / x_3007);
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3009 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3011 : vec4<f32> = u_xlat13;
            let x_3014 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3011.w, x_3011.x, x_3011.y, x_3011.z) * vec4<f32>(x_3014.x, x_3014.x, x_3014.x, x_3014.x));
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3020 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3017.x, x_3017.w, x_3017.y, x_3017.z) * vec4<f32>(x_3020.y, x_3020.y, x_3020.y, x_3020.y));
            let x_3023 : vec4<f32> = u_xlat13;
            let x_3024 : vec3<f32> = vec3<f32>(x_3023.y, x_3023.z, x_3023.w);
            let x_3025 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3024.x, x_3025.y, x_3024.y, x_3024.z);
            let x_3028 : f32 = u_xlat14.x;
            u_xlat16.y = x_3028;
            let x_3030 : vec4<f32> = u_xlat11;
            let x_3033 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y) * vec4<f32>(x_3033.x, x_3033.y, x_3033.x, x_3033.y)) + vec4<f32>(x_3036.x, x_3036.y, x_3036.z, x_3036.y));
            let x_3039 : vec4<f32> = u_xlat11;
            let x_3042 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3042.x, x_3042.y)) + vec2<f32>(x_3045.w, x_3045.y));
            let x_3049 : f32 = u_xlat16.y;
            u_xlat13.y = x_3049;
            let x_3052 : f32 = u_xlat14.z;
            u_xlat16.y = x_3052;
            let x_3054 : vec4<f32> = u_xlat11;
            let x_3057 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3060 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y) * vec4<f32>(x_3057.x, x_3057.y, x_3057.x, x_3057.y)) + vec4<f32>(x_3060.x, x_3060.y, x_3060.z, x_3060.y));
            let x_3063 : vec4<f32> = u_xlat11;
            let x_3066 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3069 : vec4<f32> = u_xlat16;
            let x_3071 : vec2<f32> = ((vec2<f32>(x_3063.x, x_3063.y) * vec2<f32>(x_3066.x, x_3066.y)) + vec2<f32>(x_3069.w, x_3069.y));
            let x_3072 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3071.x, x_3071.y, x_3072.z, x_3072.w);
            let x_3075 : f32 = u_xlat16.y;
            u_xlat13.z = x_3075;
            let x_3077 : vec4<f32> = u_xlat11;
            let x_3080 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3083 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y) * vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y)) + vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.z));
            let x_3087 : f32 = u_xlat14.w;
            u_xlat16.y = x_3087;
            let x_3090 : vec4<f32> = u_xlat11;
            let x_3093 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3096 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3090.x, x_3090.y, x_3090.x, x_3090.y) * vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y)) + vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3096.y));
            let x_3100 : vec4<f32> = u_xlat11;
            let x_3103 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3100.x, x_3100.y) * vec2<f32>(x_3103.x, x_3103.y)) + vec2<f32>(x_3106.w, x_3106.y));
            let x_3110 : f32 = u_xlat16.y;
            u_xlat13.w = x_3110;
            let x_3113 : vec4<f32> = u_xlat11;
            let x_3116 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3119 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3113.x, x_3113.y) * vec2<f32>(x_3116.x, x_3116.y)) + vec2<f32>(x_3119.x, x_3119.w));
            let x_3122 : vec4<f32> = u_xlat16;
            let x_3123 : vec3<f32> = vec3<f32>(x_3122.x, x_3122.z, x_3122.w);
            let x_3124 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3123.x, x_3124.y, x_3123.y, x_3123.z);
            let x_3126 : vec4<f32> = u_xlat11;
            let x_3129 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3132 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3126.x, x_3126.y, x_3126.x, x_3126.y) * vec4<f32>(x_3129.x, x_3129.y, x_3129.x, x_3129.y)) + vec4<f32>(x_3132.x, x_3132.y, x_3132.z, x_3132.y));
            let x_3136 : vec4<f32> = u_xlat11;
            let x_3139 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3142 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3136.x, x_3136.y) * vec2<f32>(x_3139.x, x_3139.y)) + vec2<f32>(x_3142.w, x_3142.y));
            let x_3146 : f32 = u_xlat13.x;
            u_xlat14.x = x_3146;
            let x_3148 : vec4<f32> = u_xlat11;
            let x_3151 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat14;
            let x_3156 : vec2<f32> = ((vec2<f32>(x_3148.x, x_3148.y) * vec2<f32>(x_3151.x, x_3151.y)) + vec2<f32>(x_3154.x, x_3154.y));
            let x_3157 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3156.x, x_3156.y, x_3157.z, x_3157.w);
            let x_3160 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3160.x, x_3160.x, x_3160.x, x_3160.x) * x_3162);
            let x_3165 : vec4<f32> = u_xlat12;
            let x_3167 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3165.y, x_3165.y, x_3165.y, x_3165.y) * x_3167);
            let x_3170 : vec4<f32> = u_xlat12;
            let x_3172 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3170.z, x_3170.z, x_3170.z, x_3170.z) * x_3172);
            let x_3174 : vec4<f32> = u_xlat12;
            let x_3176 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3174.w, x_3174.w, x_3174.w, x_3174.w) * x_3176);
            let x_3179 : vec4<f32> = u_xlat17;
            let x_3180 : vec2<f32> = vec2<f32>(x_3179.x, x_3179.y);
            let x_3182 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
            let x_3189 : vec3<f32> = txVec43;
            let x_3191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
            u_xlat13.x = x_3191;
            let x_3194 : vec4<f32> = u_xlat17;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.z, x_3194.w);
            let x_3197 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3205 : vec3<f32> = txVec44;
            let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
            u_xlat88 = x_3207;
            let x_3208 : f32 = u_xlat88;
            let x_3210 : f32 = u_xlat22.y;
            u_xlat88 = (x_3208 * x_3210);
            let x_3213 : f32 = u_xlat22.x;
            let x_3215 : f32 = u_xlat13.x;
            let x_3217 : f32 = u_xlat88;
            u_xlat13.x = ((x_3213 * x_3215) + x_3217);
            let x_3221 : vec2<f32> = u_xlat61;
            let x_3223 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec45;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat61.x = x_3232;
            let x_3235 : f32 = u_xlat22.z;
            let x_3237 : f32 = u_xlat61.x;
            let x_3240 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3235 * x_3237) + x_3240);
            let x_3244 : vec4<f32> = u_xlat20;
            let x_3245 : vec2<f32> = vec2<f32>(x_3244.x, x_3244.y);
            let x_3247 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3255 : vec3<f32> = txVec46;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat86 = x_3257;
            let x_3259 : f32 = u_xlat22.w;
            let x_3260 : f32 = u_xlat86;
            let x_3263 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3259 * x_3260) + x_3263);
            let x_3267 : vec4<f32> = u_xlat18;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.x, x_3267.y);
            let x_3270 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec47;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat86 = x_3279;
            let x_3281 : f32 = u_xlat23.x;
            let x_3282 : f32 = u_xlat86;
            let x_3285 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3281 * x_3282) + x_3285);
            let x_3289 : vec4<f32> = u_xlat18;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.z, x_3289.w);
            let x_3292 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec48;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat86 = x_3301;
            let x_3303 : f32 = u_xlat23.y;
            let x_3304 : f32 = u_xlat86;
            let x_3307 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3303 * x_3304) + x_3307);
            let x_3311 : vec4<f32> = u_xlat19;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.x, x_3311.y);
            let x_3314 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec49;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat86 = x_3323;
            let x_3325 : f32 = u_xlat23.z;
            let x_3326 : f32 = u_xlat86;
            let x_3329 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3325 * x_3326) + x_3329);
            let x_3333 : vec4<f32> = u_xlat20;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.z, x_3333.w);
            let x_3336 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec50;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat86 = x_3345;
            let x_3347 : f32 = u_xlat23.w;
            let x_3348 : f32 = u_xlat86;
            let x_3351 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3347 * x_3348) + x_3351);
            let x_3355 : vec4<f32> = u_xlat21;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.x, x_3355.y);
            let x_3358 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec51;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat86 = x_3367;
            let x_3369 : f32 = u_xlat24.x;
            let x_3370 : f32 = u_xlat86;
            let x_3373 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3369 * x_3370) + x_3373);
            let x_3377 : vec4<f32> = u_xlat21;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.z, x_3377.w);
            let x_3380 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec52;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat86 = x_3389;
            let x_3391 : f32 = u_xlat24.y;
            let x_3392 : f32 = u_xlat86;
            let x_3395 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3391 * x_3392) + x_3395);
            let x_3399 : vec2<f32> = u_xlat38;
            let x_3401 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec53;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat86 = x_3410;
            let x_3412 : f32 = u_xlat24.z;
            let x_3413 : f32 = u_xlat86;
            let x_3416 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3412 * x_3413) + x_3416);
            let x_3420 : vec2<f32> = u_xlat69;
            let x_3422 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3420.x, x_3420.y, x_3422);
            let x_3429 : vec3<f32> = txVec54;
            let x_3431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3429.xy, x_3429.z);
            u_xlat86 = x_3431;
            let x_3433 : f32 = u_xlat24.w;
            let x_3434 : f32 = u_xlat86;
            let x_3437 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3433 * x_3434) + x_3437);
            let x_3441 : vec4<f32> = u_xlat16;
            let x_3442 : vec2<f32> = vec2<f32>(x_3441.x, x_3441.y);
            let x_3444 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec55;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat86 = x_3453;
            let x_3455 : f32 = u_xlat12.x;
            let x_3456 : f32 = u_xlat86;
            let x_3459 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3455 * x_3456) + x_3459);
            let x_3463 : vec4<f32> = u_xlat16;
            let x_3464 : vec2<f32> = vec2<f32>(x_3463.z, x_3463.w);
            let x_3466 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec56;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat86 = x_3475;
            let x_3477 : f32 = u_xlat12.y;
            let x_3478 : f32 = u_xlat86;
            let x_3481 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3477 * x_3478) + x_3481);
            let x_3485 : vec2<f32> = u_xlat64;
            let x_3487 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec57;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat86 = x_3496;
            let x_3498 : f32 = u_xlat12.z;
            let x_3499 : f32 = u_xlat86;
            let x_3502 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3498 * x_3499) + x_3502);
            let x_3506 : vec4<f32> = u_xlat11;
            let x_3507 : vec2<f32> = vec2<f32>(x_3506.x, x_3506.y);
            let x_3509 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec58;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat11.x = x_3518;
            let x_3521 : f32 = u_xlat12.w;
            let x_3523 : f32 = u_xlat11.x;
            let x_3526 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3521 * x_3523) + x_3526);
          }
        }
      } else {
        let x_3530 : vec4<f32> = u_xlat10;
        let x_3531 : vec2<f32> = vec2<f32>(x_3530.x, x_3530.y);
        let x_3533 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
        let x_3540 : vec3<f32> = txVec59;
        let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
        u_xlat85 = x_3542;
      }
      let x_3543 : i32 = u_xlati81;
      let x_3545 : f32 = x_128.x_AdditionalShadowParams[x_3543].x;
      u_xlat10.x = (1.0f + -(x_3545));
      let x_3549 : f32 = u_xlat85;
      let x_3550 : i32 = u_xlati81;
      let x_3552 : f32 = x_128.x_AdditionalShadowParams[x_3550].x;
      let x_3555 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3549 * x_3552) + x_3555);
      let x_3559 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3559);
      let x_3564 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3564 >= 1.0f);
      let x_3566 : bool = u_xlatb60;
      let x_3568 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3566 | x_3568);
      let x_3572 : bool = u_xlatb35.x;
      if (x_3572) {
        x_3573 = 1.0f;
      } else {
        let x_3578 : f32 = u_xlat10.x;
        x_3573 = x_3578;
      }
      let x_3579 : f32 = x_3573;
      u_xlat10.x = x_3579;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3584 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3584) + 1.0f);
    let x_3587 : f32 = u_xlat1;
    let x_3588 : f32 = u_xlat35;
    let x_3591 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3587 * x_3588) + x_3591);
    let x_3594 : f32 = u_xlat83;
    let x_3596 : f32 = u_xlat10.x;
    u_xlat83 = (x_3594 * x_3596);
    let x_3598 : vec3<f32> = u_xlat2;
    let x_3599 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3598, x_3599);
    let x_3603 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3603, 0.0f, 1.0f);
    let x_3606 : f32 = u_xlat83;
    let x_3608 : f32 = u_xlat10.x;
    u_xlat83 = (x_3606 * x_3608);
    let x_3610 : f32 = u_xlat83;
    let x_3612 : i32 = u_xlati81;
    let x_3614 : vec4<f32> = x_2079.x_AdditionalLightsColor[x_3612];
    let x_3616 : vec3<f32> = (vec3<f32>(x_3610, x_3610, x_3610) * vec3<f32>(x_3614.x, x_3614.y, x_3614.z));
    let x_3617 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3616.x, x_3616.y, x_3616.z, x_3617.w);
    let x_3619 : vec4<f32> = u_xlat8;
    let x_3621 : vec4<f32> = u_xlat9;
    let x_3624 : vec3<f32> = u_xlat26;
    let x_3625 : vec3<f32> = ((vec3<f32>(x_3619.x, x_3619.y, x_3619.z) * vec3<f32>(x_3621.x, x_3621.x, x_3621.x)) + x_3624);
    let x_3626 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3625.x, x_3625.y, x_3625.z, x_3626.w);
    let x_3628 : vec4<f32> = u_xlat8;
    let x_3630 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3628.x, x_3628.y, x_3628.z), vec3<f32>(x_3630.x, x_3630.y, x_3630.z));
    let x_3633 : f32 = u_xlat81;
    u_xlat81 = max(x_3633, 1.17549435e-38f);
    let x_3635 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3635);
    let x_3637 : f32 = u_xlat81;
    let x_3639 : vec4<f32> = u_xlat8;
    let x_3641 : vec3<f32> = (vec3<f32>(x_3637, x_3637, x_3637) * vec3<f32>(x_3639.x, x_3639.y, x_3639.z));
    let x_3642 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3642.w);
    let x_3644 : vec3<f32> = u_xlat2;
    let x_3645 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3644, vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
    let x_3648 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3648, 0.0f, 1.0f);
    let x_3650 : vec3<f32> = u_xlat34;
    let x_3651 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3650, vec3<f32>(x_3651.x, x_3651.y, x_3651.z));
    let x_3656 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3656, 0.0f, 1.0f);
    let x_3659 : f32 = u_xlat81;
    let x_3660 : f32 = u_xlat81;
    u_xlat81 = (x_3659 * x_3660);
    let x_3662 : f32 = u_xlat81;
    let x_3664 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3662 * x_3664) + 1.00001001358032226562f);
    let x_3668 : f32 = u_xlat8.x;
    let x_3670 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3668 * x_3670);
    let x_3673 : f32 = u_xlat81;
    let x_3674 : f32 = u_xlat81;
    u_xlat81 = (x_3673 * x_3674);
    let x_3677 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3677, 0.10000000149011611938f);
    let x_3680 : f32 = u_xlat81;
    let x_3682 : f32 = u_xlat8.x;
    u_xlat81 = (x_3680 * x_3682);
    let x_3684 : f32 = u_xlat79;
    let x_3685 : f32 = u_xlat81;
    u_xlat81 = (x_3684 * x_3685);
    let x_3687 : f32 = u_xlat80;
    let x_3688 : f32 = u_xlat81;
    u_xlat81 = (x_3687 / x_3688);
    let x_3690 : vec4<f32> = u_xlat0;
    let x_3692 : f32 = u_xlat81;
    let x_3695 : vec3<f32> = u_xlat5;
    let x_3696 : vec3<f32> = ((vec3<f32>(x_3690.x, x_3690.y, x_3690.z) * vec3<f32>(x_3692, x_3692, x_3692)) + x_3695);
    let x_3697 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3696.x, x_3696.y, x_3696.z, x_3697.w);
    let x_3699 : vec4<f32> = u_xlat8;
    let x_3701 : vec4<f32> = u_xlat10;
    let x_3704 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3699.x, x_3699.y, x_3699.z) * vec3<f32>(x_3701.x, x_3701.y, x_3701.z)) + x_3704);

    continuing {
      let x_3706 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3706 + bitcast<u32>(1i));
    }
  }
  let x_3708 : vec4<f32> = u_xlat6;
  let x_3710 : vec4<f32> = u_xlat3;
  let x_3713 : vec4<f32> = u_xlat4;
  let x_3715 : vec3<f32> = ((vec3<f32>(x_3708.x, x_3708.y, x_3708.z) * vec3<f32>(x_3710.x, x_3710.z, x_3710.w)) + vec3<f32>(x_3713.x, x_3713.y, x_3713.z));
  let x_3716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3715.x, x_3715.y, x_3715.z, x_3716.w);
  let x_3718 : vec3<f32> = u_xlat32;
  let x_3719 : vec4<f32> = u_xlat0;
  let x_3721 : vec3<f32> = (x_3718 + vec3<f32>(x_3719.x, x_3719.y, x_3719.z));
  let x_3722 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3722.w);
  let x_3724 : f32 = u_xlat77;
  let x_3725 : f32 = u_xlat77;
  u_xlat75 = (x_3724 * -(x_3725));
  let x_3728 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3728);
  let x_3730 : vec4<f32> = u_xlat0;
  let x_3733 : vec4<f32> = x_29.unity_FogColor;
  let x_3736 : vec3<f32> = (vec3<f32>(x_3730.x, x_3730.y, x_3730.z) + -(vec3<f32>(x_3733.x, x_3733.y, x_3733.z)));
  let x_3737 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3736.x, x_3736.y, x_3736.z, x_3737.w);
  let x_3741 : f32 = u_xlat75;
  let x_3743 : vec4<f32> = u_xlat0;
  let x_3747 : vec4<f32> = x_29.unity_FogColor;
  let x_3749 : vec3<f32> = ((vec3<f32>(x_3741, x_3741, x_3741) * vec3<f32>(x_3743.x, x_3743.y, x_3743.z)) + vec3<f32>(x_3747.x, x_3747.y, x_3747.z));
  let x_3750 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3749.x, x_3749.y, x_3749.z, x_3750.w);
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


