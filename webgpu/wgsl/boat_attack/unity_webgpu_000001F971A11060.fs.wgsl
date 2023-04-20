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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_162 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat78 : f32;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2143 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu77 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_130 : vec3<f32>;
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
  var x_1802 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2291 : f32;
  var x_2304 : f32;
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
  var x_3637 : f32;
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
  let x_116 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_116;
  let x_119 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_119;
  let x_124 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_124;
  let x_128 : bool = u_xlatb26;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec4<f32> = u_xlat3;
    x_130 = vec3<f32>(x_136.x, x_136.y, x_136.z);
  }
  let x_138 : vec3<f32> = x_130;
  u_xlat26 = x_138;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_140, x_141);
  let x_145 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_145);
  let x_148 : vec4<f32> = u_xlat2;
  let x_150 : vec3<f32> = vs_TEXCOORD3;
  let x_151 : vec3<f32> = (vec3<f32>(x_148.x, x_148.x, x_148.x) * x_150);
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : vec3<f32> = vs_TEXCOORD7;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_168 : vec3<f32> = (x_154 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD7;
  let x_174 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_177 : vec3<f32> = (x_172 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec3<f32> = vs_TEXCOORD7;
  let x_184 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  let x_187 : vec3<f32> = (x_181 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec3<f32> = vs_TEXCOORD7;
  let x_193 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  let x_196 : vec3<f32> = (x_191 + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec4<f32> = u_xlat5;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec4<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_226 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_226 < x_229);
  let x_232 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_232);
  let x_237 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_241);
  let x_245 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_245);
  let x_249 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_249);
  let x_255 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_255);
  let x_259 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_259);
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = u_xlat4;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(x_264.y, x_264.z, x_264.w));
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_272 : vec3<f32> = max(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_272.x, x_272.y, x_272.z);
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_275, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_283 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_283) + 4.0f);
  let x_290 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_290);
  let x_294 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_294) << bitcast<u32>(2i));
  let x_298 : vec3<f32> = vs_TEXCOORD7;
  let x_300 : i32 = u_xlati3;
  let x_303 : i32 = u_xlati3;
  let x_307 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_300 + 1i) / 4i)][((x_303 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : i32 = u_xlati3;
  let x_312 : i32 = u_xlati3;
  let x_315 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_310 / 4i)][(x_312 % 4i)];
  let x_317 : vec3<f32> = vs_TEXCOORD7;
  let x_320 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + x_320);
  let x_322 : i32 = u_xlati3;
  let x_325 : i32 = u_xlati3;
  let x_329 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_322 + 2i) / 4i)][((x_325 + 2i) % 4i)];
  let x_331 : vec3<f32> = vs_TEXCOORD7;
  let x_334 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
  let x_336 : vec3<f32> = u_xlat28;
  let x_337 : i32 = u_xlati3;
  let x_340 : i32 = u_xlati3;
  let x_344 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_337 + 3i) / 4i)][((x_340 + 3i) % 4i)];
  let x_346 : vec3<f32> = (x_336 + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_352 : f32 = vs_TEXCOORD7.y;
  let x_354 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_352 * x_354);
  let x_357 : f32 = x_29.unity_MatrixV[0i].z;
  let x_359 : f32 = vs_TEXCOORD7.x;
  let x_361 : f32 = u_xlat78;
  u_xlat78 = ((x_357 * x_359) + x_361);
  let x_364 : f32 = x_29.unity_MatrixV[2i].z;
  let x_366 : f32 = vs_TEXCOORD7.z;
  let x_368 : f32 = u_xlat78;
  u_xlat78 = ((x_364 * x_366) + x_368);
  let x_370 : f32 = u_xlat78;
  let x_372 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_370 + x_372);
  let x_374 : f32 = u_xlat78;
  let x_377 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_374) + -(x_377));
  let x_380 : f32 = u_xlat78;
  u_xlat78 = max(x_380, 0.0f);
  let x_382 : f32 = u_xlat78;
  let x_385 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_382 * x_385);
  u_xlat2.w = 1.0f;
  let x_394 : vec4<f32> = x_391.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_394, x_395);
  let x_400 : vec4<f32> = x_391.unity_SHAg;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_391.unity_SHAb;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_406, x_407);
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_410.y, x_410.z, x_410.z, x_410.x) * vec4<f32>(x_412.x, x_412.y, x_412.z, x_412.z));
  let x_417 : vec4<f32> = x_391.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_391.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_391.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_435 : f32 = u_xlat2.y;
  let x_437 : f32 = u_xlat2.y;
  u_xlat77 = (x_435 * x_437);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  let x_444 : f32 = u_xlat77;
  u_xlat77 = ((x_440 * x_442) + -(x_444));
  let x_449 : vec4<f32> = x_391.unity_SHC;
  let x_451 : f32 = u_xlat77;
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec3<f32> = ((vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(x_451, x_451, x_451)) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec3<f32> = max(vec3<f32>(x_466.x, x_466.y, x_466.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : f32 = u_xlat1;
  u_xlat77 = ((-(x_471) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_477 : f32 = u_xlat77;
  u_xlat79 = (-(x_477) + 1.0f);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : f32 = u_xlat77;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482, x_482, x_482));
  let x_485 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : f32 = u_xlat1;
  let x_496 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.x, x_496.y, x_496.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat1;
  let x_509 : f32 = u_xlat1;
  u_xlat77 = (x_508 * x_509);
  let x_511 : f32 = u_xlat77;
  u_xlat77 = max(x_511, 0.0078125f);
  let x_515 : f32 = u_xlat77;
  let x_516 : f32 = u_xlat77;
  u_xlat80 = (x_515 * x_516);
  let x_520 : f32 = u_xlat0.w;
  let x_521 : f32 = u_xlat79;
  u_xlat75 = (x_520 + x_521);
  let x_523 : f32 = u_xlat75;
  u_xlat75 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat77;
  u_xlat79 = ((x_525 * 4.0f) + 2.0f);
  let x_531 : f32 = x_162.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_531);
  let x_533 : bool = u_xlatb6;
  if (x_533) {
    let x_537 : f32 = x_162.x_MainLightShadowParams.y;
    u_xlatb6 = (x_537 == 1.0f);
    let x_539 : bool = u_xlatb6;
    if (x_539) {
      let x_542 : vec4<f32> = u_xlat3;
      let x_545 : vec4<f32> = x_162.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y) + x_545);
      let x_548 : vec4<f32> = u_xlat6;
      let x_549 : vec2<f32> = vec2<f32>(x_548.x, x_548.y);
      let x_551 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_549.x, x_549.y, x_551);
      let x_564 : vec3<f32> = txVec0;
      let x_566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_564.xy, x_564.z);
      u_xlat7.x = x_566;
      let x_569 : vec4<f32> = u_xlat6;
      let x_570 : vec2<f32> = vec2<f32>(x_569.z, x_569.w);
      let x_572 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_570.x, x_570.y, x_572);
      let x_579 : vec3<f32> = txVec1;
      let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_579.xy, x_579.z);
      u_xlat7.y = x_581;
      let x_583 : vec4<f32> = u_xlat3;
      let x_586 : vec4<f32> = x_162.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y) + x_586);
      let x_589 : vec4<f32> = u_xlat6;
      let x_590 : vec2<f32> = vec2<f32>(x_589.x, x_589.y);
      let x_592 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_590.x, x_590.y, x_592);
      let x_599 : vec3<f32> = txVec2;
      let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_599.xy, x_599.z);
      u_xlat7.z = x_601;
      let x_604 : vec4<f32> = u_xlat6;
      let x_605 : vec2<f32> = vec2<f32>(x_604.z, x_604.w);
      let x_607 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_605.x, x_605.y, x_607);
      let x_614 : vec3<f32> = txVec3;
      let x_616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_614.xy, x_614.z);
      u_xlat7.w = x_616;
      let x_618 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_618, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_626 : f32 = x_162.x_MainLightShadowParams.y;
      u_xlatb31 = (x_626 == 2.0f);
      let x_628 : bool = u_xlatb31;
      if (x_628) {
        let x_633 : vec4<f32> = u_xlat3;
        let x_636 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_633.x, x_633.y) * vec2<f32>(x_636.z, x_636.w)) + vec2<f32>(0.5f, 0.5f));
        let x_642 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_642);
        let x_644 : vec4<f32> = u_xlat3;
        let x_647 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_650 : vec2<f32> = u_xlat31;
        let x_652 : vec2<f32> = ((vec2<f32>(x_644.x, x_644.y) * vec2<f32>(x_647.z, x_647.w)) + -(x_650));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_656 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_656.x, x_656.x, x_656.y, x_656.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_661 : vec4<f32> = u_xlat8;
        let x_663 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_661.x, x_661.x, x_661.z, x_661.z) * vec4<f32>(x_663.x, x_663.x, x_663.z, x_663.z));
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_667.y, x_667.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_672 : vec4<f32> = u_xlat9;
        let x_675 : vec4<f32> = u_xlat7;
        let x_678 : vec2<f32> = ((vec2<f32>(x_672.x, x_672.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_675.x, x_675.y)));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_679.y, x_678.y, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        let x_685 : vec2<f32> = (-(vec2<f32>(x_681.x, x_681.y)) + vec2<f32>(1.0f, 1.0f));
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_689.x, x_689.y), vec2<f32>(0.0f, 0.0f));
        let x_693 : vec2<f32> = u_xlat59;
        let x_695 : vec2<f32> = u_xlat59;
        let x_697 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_693) * x_695) + vec2<f32>(x_697.x, x_697.y));
        let x_700 : vec4<f32> = u_xlat7;
        let x_702 : vec2<f32> = max(vec2<f32>(x_700.x, x_700.y), vec2<f32>(0.0f, 0.0f));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        let x_708 : vec4<f32> = u_xlat7;
        let x_711 : vec4<f32> = u_xlat8;
        let x_713 : vec2<f32> = ((-(vec2<f32>(x_705.x, x_705.y)) * vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(x_711.y, x_711.w));
        let x_714 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_716 + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec4<f32> = u_xlat7;
        let x_720 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) + vec2<f32>(1.0f, 1.0f));
        let x_721 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_724 : vec4<f32> = u_xlat8;
        let x_728 : vec2<f32> = (vec2<f32>(x_724.x, x_724.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_729 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_732 : vec4<f32> = u_xlat9;
        let x_734 : vec2<f32> = (vec2<f32>(x_732.x, x_732.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_737 : vec2<f32> = u_xlat59;
        let x_738 : vec2<f32> = (x_737 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_738.x, x_738.y, x_739.z, x_739.w);
        let x_742 : vec4<f32> = u_xlat7;
        let x_744 : vec2<f32> = (vec2<f32>(x_742.x, x_742.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_745 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat8;
        let x_749 : vec2<f32> = (vec2<f32>(x_747.y, x_747.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_753 : f32 = u_xlat9.x;
        u_xlat10.z = x_753;
        let x_756 : f32 = u_xlat7.x;
        u_xlat10.w = x_756;
        let x_759 : f32 = u_xlat12.x;
        u_xlat11.z = x_759;
        let x_762 : f32 = u_xlat57.x;
        u_xlat11.w = x_762;
        let x_764 : vec4<f32> = u_xlat10;
        let x_766 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_764.z, x_764.w, x_764.x, x_764.z) + vec4<f32>(x_766.z, x_766.w, x_766.x, x_766.z));
        let x_770 : f32 = u_xlat10.y;
        u_xlat9.z = x_770;
        let x_773 : f32 = u_xlat7.y;
        u_xlat9.w = x_773;
        let x_776 : f32 = u_xlat11.y;
        u_xlat12.z = x_776;
        let x_779 : f32 = u_xlat57.y;
        u_xlat12.w = x_779;
        let x_781 : vec4<f32> = u_xlat9;
        let x_783 : vec4<f32> = u_xlat12;
        let x_785 : vec3<f32> = (vec3<f32>(x_781.z, x_781.y, x_781.w) + vec3<f32>(x_783.z, x_783.y, x_783.w));
        let x_786 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat11;
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.z, x_788.w) / vec3<f32>(x_790.z, x_790.w, x_790.y));
        let x_793 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat9;
        let x_801 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_802 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat12;
        let x_806 : vec4<f32> = u_xlat7;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.z, x_804.y, x_804.w) / vec3<f32>(x_806.x, x_806.y, x_806.z));
        let x_809 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat10;
        let x_813 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat9;
        let x_819 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_821 : vec3<f32> = (vec3<f32>(x_816.y, x_816.x, x_816.z) * vec3<f32>(x_819.x, x_819.x, x_819.x));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat10;
        let x_827 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_829 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_827.y, x_827.y, x_827.y));
        let x_830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_833 : f32 = u_xlat10.x;
        u_xlat9.w = x_833;
        let x_835 : vec2<f32> = u_xlat31;
        let x_838 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.y, x_841.w, x_841.x, x_841.w));
        let x_844 : vec2<f32> = u_xlat31;
        let x_846 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_849 : vec4<f32> = u_xlat9;
        let x_851 : vec2<f32> = ((x_844 * vec2<f32>(x_846.x, x_846.y)) + vec2<f32>(x_849.z, x_849.w));
        let x_852 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_855 : f32 = u_xlat9.y;
        u_xlat10.w = x_855;
        let x_857 : vec4<f32> = u_xlat10;
        let x_858 : vec2<f32> = vec2<f32>(x_857.y, x_857.z);
        let x_859 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_859.x, x_858.x, x_859.z, x_858.y);
        let x_862 : vec2<f32> = u_xlat31;
        let x_865 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_862.x, x_862.y, x_862.x, x_862.y) * vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y)) + vec4<f32>(x_868.x, x_868.y, x_868.z, x_868.y));
        let x_871 : vec2<f32> = u_xlat31;
        let x_874 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_877 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_871.x, x_871.y, x_871.x, x_871.y) * vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y)) + vec4<f32>(x_877.w, x_877.y, x_877.w, x_877.z));
        let x_880 : vec2<f32> = u_xlat31;
        let x_883 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_880.x, x_880.y, x_880.x, x_880.y) * vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y)) + vec4<f32>(x_886.x, x_886.w, x_886.z, x_886.w));
        let x_890 : vec4<f32> = u_xlat7;
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_890.x, x_890.x, x_890.x, x_890.y) * vec4<f32>(x_892.z, x_892.w, x_892.y, x_892.z));
        let x_896 : vec4<f32> = u_xlat7;
        let x_898 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_896.y, x_896.y, x_896.z, x_896.z) * x_898);
        let x_901 : f32 = u_xlat7.z;
        let x_903 : f32 = u_xlat8.y;
        u_xlat31.x = (x_901 * x_903);
        let x_907 : vec4<f32> = u_xlat11;
        let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
        let x_910 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_918 : vec3<f32> = txVec4;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_918.xy, x_918.z);
        u_xlat56 = x_920;
        let x_922 : vec4<f32> = u_xlat11;
        let x_923 : vec2<f32> = vec2<f32>(x_922.z, x_922.w);
        let x_925 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_933 : vec3<f32> = txVec5;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_933.xy, x_933.z);
        u_xlat81 = x_935;
        let x_936 : f32 = u_xlat81;
        let x_938 : f32 = u_xlat14.y;
        u_xlat81 = (x_936 * x_938);
        let x_941 : f32 = u_xlat14.x;
        let x_942 : f32 = u_xlat56;
        let x_944 : f32 = u_xlat81;
        u_xlat56 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat12;
        let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.y);
        let x_950 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec6;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat81 = x_959;
        let x_961 : f32 = u_xlat14.z;
        let x_962 : f32 = u_xlat81;
        let x_964 : f32 = u_xlat56;
        u_xlat56 = ((x_961 * x_962) + x_964);
        let x_967 : vec4<f32> = u_xlat10;
        let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
        let x_970 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec7;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat81 = x_979;
        let x_981 : f32 = u_xlat14.w;
        let x_982 : f32 = u_xlat81;
        let x_984 : f32 = u_xlat56;
        u_xlat56 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat13;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec8;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat81 = x_999;
        let x_1001 : f32 = u_xlat15.x;
        let x_1002 : f32 = u_xlat81;
        let x_1004 : f32 = u_xlat56;
        u_xlat56 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat13;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec9;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat81 = x_1019;
        let x_1021 : f32 = u_xlat15.y;
        let x_1022 : f32 = u_xlat81;
        let x_1024 : f32 = u_xlat56;
        u_xlat56 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat10;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.z, x_1027.w);
        let x_1030 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec10;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1037.xy, x_1037.z);
        u_xlat81 = x_1039;
        let x_1041 : f32 = u_xlat15.z;
        let x_1042 : f32 = u_xlat81;
        let x_1044 : f32 = u_xlat56;
        u_xlat56 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
        let x_1050 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec11;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat81 = x_1059;
        let x_1061 : f32 = u_xlat15.w;
        let x_1062 : f32 = u_xlat81;
        let x_1064 : f32 = u_xlat56;
        u_xlat56 = ((x_1061 * x_1062) + x_1064);
        let x_1067 : vec4<f32> = u_xlat9;
        let x_1068 : vec2<f32> = vec2<f32>(x_1067.z, x_1067.w);
        let x_1070 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
        let x_1077 : vec3<f32> = txVec12;
        let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
        u_xlat81 = x_1079;
        let x_1081 : f32 = u_xlat31.x;
        let x_1082 : f32 = u_xlat81;
        let x_1084 : f32 = u_xlat56;
        u_xlat6.x = ((x_1081 * x_1082) + x_1084);
      } else {
        let x_1088 : vec4<f32> = u_xlat3;
        let x_1091 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1091.z, x_1091.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1095 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1095);
        let x_1097 : vec4<f32> = u_xlat3;
        let x_1100 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1103 : vec2<f32> = u_xlat31;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + -(x_1103));
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1108.x, x_1108.x, x_1108.y, x_1108.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1111.x, x_1111.x, x_1111.z, x_1111.z) * vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1120 : vec2<f32> = (vec2<f32>(x_1116.y, x_1116.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1121.x, x_1120.x, x_1121.z, x_1120.y);
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1123.x, x_1123.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1126.x, x_1126.y)));
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1133 : vec2<f32> = (-(vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1134.y, x_1133.y, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec2<f32> = min(vec2<f32>(x_1136.x, x_1136.y), vec2<f32>(0.0f, 0.0f));
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat9;
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1147 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = ((-(vec2<f32>(x_1141.x, x_1141.y)) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.z));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = max(vec2<f32>(x_1152.x, x_1152.y), vec2<f32>(0.0f, 0.0f));
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = ((-(vec2<f32>(x_1157.x, x_1157.y)) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.y, x_1163.w));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1165.x, x_1166.z, x_1165.y);
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1168 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1172 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1172 * 0.08163200318813323975f);
        let x_1176 : vec2<f32> = u_xlat57;
        let x_1179 : vec2<f32> = (vec2<f32>(x_1176.y, x_1176.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1180 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1182.x, x_1182.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1186 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1186 * 0.08163200318813323975f);
        let x_1190 : f32 = u_xlat11.y;
        u_xlat9.x = x_1190;
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1199 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1200.x, x_1199.x, x_1200.z, x_1199.y);
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1202.x, x_1202.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1207.w);
        let x_1210 : f32 = u_xlat57.x;
        u_xlat8.y = x_1210;
        let x_1213 : f32 = u_xlat10.y;
        u_xlat8.w = x_1213;
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1215 + x_1216);
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1218.y, x_1218.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1227 : vec2<f32> = ((vec2<f32>(x_1224.y, x_1224.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1228 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1228.w);
        let x_1231 : f32 = u_xlat57.y;
        u_xlat10.y = x_1231;
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1234 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1233 + x_1234);
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1236 / x_1237);
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1239 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1245 : vec4<f32> = u_xlat10;
        let x_1246 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1245 / x_1246);
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1248 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1250 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1250.w, x_1250.x, x_1250.y, x_1250.z) * vec4<f32>(x_1253.x, x_1253.x, x_1253.x, x_1253.x));
        let x_1256 : vec4<f32> = u_xlat10;
        let x_1259 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1256.x, x_1256.w, x_1256.y, x_1256.z) * vec4<f32>(x_1259.y, x_1259.y, x_1259.y, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1263 : vec3<f32> = vec3<f32>(x_1262.y, x_1262.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1263.x, x_1264.y, x_1263.y, x_1263.z);
        let x_1267 : f32 = u_xlat10.x;
        u_xlat11.y = x_1267;
        let x_1269 : vec2<f32> = u_xlat31;
        let x_1272 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1275.y));
        let x_1278 : vec2<f32> = u_xlat31;
        let x_1280 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = ((x_1278 * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1289 : f32 = u_xlat11.y;
        u_xlat8.y = x_1289;
        let x_1292 : f32 = u_xlat10.z;
        u_xlat11.y = x_1292;
        let x_1294 : vec2<f32> = u_xlat31;
        let x_1297 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y) * vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y)) + vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1300.y));
        let x_1304 : vec2<f32> = u_xlat31;
        let x_1306 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1304 * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.w, x_1309.y));
        let x_1313 : f32 = u_xlat11.y;
        u_xlat8.z = x_1313;
        let x_1315 : vec2<f32> = u_xlat31;
        let x_1318 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.z));
        let x_1325 : f32 = u_xlat10.w;
        u_xlat11.y = x_1325;
        let x_1328 : vec2<f32> = u_xlat31;
        let x_1331 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1338 : vec2<f32> = u_xlat31;
        let x_1340 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1338 * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat11.y;
        u_xlat8.w = x_1347;
        let x_1350 : vec2<f32> = u_xlat31;
        let x_1352 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1357 : vec2<f32> = ((x_1350 * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1355.x, x_1355.w));
        let x_1358 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat11;
        let x_1361 : vec3<f32> = vec3<f32>(x_1360.x, x_1360.z, x_1360.w);
        let x_1362 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1361.x, x_1362.y, x_1361.y, x_1361.z);
        let x_1364 : vec2<f32> = u_xlat31;
        let x_1367 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.y) * vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.y)) + vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1370.y));
        let x_1374 : vec2<f32> = u_xlat31;
        let x_1376 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1374 * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.w, x_1379.y));
        let x_1383 : f32 = u_xlat8.x;
        u_xlat10.x = x_1383;
        let x_1385 : vec2<f32> = u_xlat31;
        let x_1387 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1385 * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.x, x_1390.y));
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1394.x, x_1394.x, x_1394.x, x_1394.x) * x_1396);
        let x_1399 : vec4<f32> = u_xlat7;
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1399.y, x_1399.y, x_1399.y, x_1399.y) * x_1401);
        let x_1404 : vec4<f32> = u_xlat7;
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1404.z, x_1404.z, x_1404.z, x_1404.z) * x_1406);
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1410 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1408.w, x_1408.w, x_1408.w, x_1408.w) * x_1410);
        let x_1413 : vec4<f32> = u_xlat12;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec13;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat81 = x_1425;
        let x_1427 : vec4<f32> = u_xlat12;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec14;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat8.x = x_1439;
        let x_1442 : f32 = u_xlat8.x;
        let x_1444 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1442 * x_1444);
        let x_1448 : f32 = u_xlat18.x;
        let x_1449 : f32 = u_xlat81;
        let x_1452 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1448 * x_1449) + x_1452);
        let x_1455 : vec4<f32> = u_xlat13;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec15;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat8.x = x_1467;
        let x_1470 : f32 = u_xlat18.z;
        let x_1472 : f32 = u_xlat8.x;
        let x_1474 : f32 = u_xlat81;
        u_xlat81 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat15;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec16;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat8.x = x_1489;
        let x_1492 : f32 = u_xlat18.w;
        let x_1494 : f32 = u_xlat8.x;
        let x_1496 : f32 = u_xlat81;
        u_xlat81 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec4<f32> = u_xlat14;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.x, x_1499.y);
        let x_1502 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec17;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat8.x = x_1511;
        let x_1514 : f32 = u_xlat19.x;
        let x_1516 : f32 = u_xlat8.x;
        let x_1518 : f32 = u_xlat81;
        u_xlat81 = ((x_1514 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat14;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.z, x_1521.w);
        let x_1524 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec18;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat8.x = x_1533;
        let x_1536 : f32 = u_xlat19.y;
        let x_1538 : f32 = u_xlat8.x;
        let x_1540 : f32 = u_xlat81;
        u_xlat81 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec2<f32> = u_xlat63;
        let x_1545 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec19;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat8.x = x_1554;
        let x_1557 : f32 = u_xlat19.z;
        let x_1559 : f32 = u_xlat8.x;
        let x_1561 : f32 = u_xlat81;
        u_xlat81 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat15;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.z, x_1564.w);
        let x_1567 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec20;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat8.x = x_1576;
        let x_1579 : f32 = u_xlat19.w;
        let x_1581 : f32 = u_xlat8.x;
        let x_1583 : f32 = u_xlat81;
        u_xlat81 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat16;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec21;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat8.x = x_1598;
        let x_1601 : f32 = u_xlat20.x;
        let x_1603 : f32 = u_xlat8.x;
        let x_1605 : f32 = u_xlat81;
        u_xlat81 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat16;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec22;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat8.x = x_1620;
        let x_1623 : f32 = u_xlat20.y;
        let x_1625 : f32 = u_xlat8.x;
        let x_1627 : f32 = u_xlat81;
        u_xlat81 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec2<f32> = u_xlat33;
        let x_1632 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec23;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat8.x = x_1641;
        let x_1644 : f32 = u_xlat20.z;
        let x_1646 : f32 = u_xlat8.x;
        let x_1648 : f32 = u_xlat81;
        u_xlat81 = ((x_1644 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat17;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec24;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat8.x = x_1663;
        let x_1666 : f32 = u_xlat20.w;
        let x_1668 : f32 = u_xlat8.x;
        let x_1670 : f32 = u_xlat81;
        u_xlat81 = ((x_1666 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat11;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec25;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat8.x = x_1685;
        let x_1688 : f32 = u_xlat7.x;
        let x_1690 : f32 = u_xlat8.x;
        let x_1692 : f32 = u_xlat81;
        u_xlat81 = ((x_1688 * x_1690) + x_1692);
        let x_1695 : vec4<f32> = u_xlat11;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.z, x_1695.w);
        let x_1698 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec26;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1705.xy, x_1705.z);
        u_xlat7.x = x_1707;
        let x_1710 : f32 = u_xlat7.y;
        let x_1712 : f32 = u_xlat7.x;
        let x_1714 : f32 = u_xlat81;
        u_xlat81 = ((x_1710 * x_1712) + x_1714);
        let x_1717 : vec2<f32> = u_xlat60;
        let x_1719 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec27;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat7.x = x_1728;
        let x_1731 : f32 = u_xlat7.z;
        let x_1733 : f32 = u_xlat7.x;
        let x_1735 : f32 = u_xlat81;
        u_xlat81 = ((x_1731 * x_1733) + x_1735);
        let x_1738 : vec2<f32> = u_xlat31;
        let x_1740 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec28;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
        u_xlat31.x = x_1749;
        let x_1752 : f32 = u_xlat7.w;
        let x_1754 : f32 = u_xlat31.x;
        let x_1756 : f32 = u_xlat81;
        u_xlat6.x = ((x_1752 * x_1754) + x_1756);
      }
    }
  } else {
    let x_1761 : vec4<f32> = u_xlat3;
    let x_1762 : vec2<f32> = vec2<f32>(x_1761.x, x_1761.y);
    let x_1764 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1762.x, x_1762.y, x_1764);
    let x_1771 : vec3<f32> = txVec29;
    let x_1773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1771.xy, x_1771.z);
    u_xlat6.x = x_1773;
  }
  let x_1776 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1776) + 1.0f);
  let x_1781 : f32 = u_xlat6.x;
  let x_1783 : f32 = x_162.x_MainLightShadowParams.x;
  let x_1786 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1781 * x_1783) + x_1786);
  let x_1791 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_1791);
  let x_1795 : f32 = u_xlat3.z;
  u_xlatb53 = (x_1795 >= 1.0f);
  let x_1797 : bool = u_xlatb53;
  let x_1798 : bool = u_xlatb28;
  u_xlatb28 = (x_1797 | x_1798);
  let x_1800 : bool = u_xlatb28;
  if (x_1800) {
    x_1802 = 1.0f;
  } else {
    let x_1807 : f32 = u_xlat3.x;
    x_1802 = x_1807;
  }
  let x_1808 : f32 = x_1802;
  u_xlat3.x = x_1808;
  let x_1810 : vec3<f32> = vs_TEXCOORD7;
  let x_1812 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1814 : vec3<f32> = (x_1810 + -(x_1812));
  let x_1815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1817 : vec4<f32> = u_xlat6;
  let x_1819 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_1817.x, x_1817.y, x_1817.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1825 : f32 = u_xlat28.x;
  let x_1827 : f32 = x_162.x_MainLightShadowParams.z;
  let x_1830 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat53 = ((x_1825 * x_1827) + x_1830);
  let x_1832 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1832, 0.0f, 1.0f);
  let x_1835 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1835) + 1.0f);
  let x_1839 : f32 = u_xlat53;
  let x_1841 : f32 = u_xlat6.x;
  let x_1844 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1839 * x_1841) + x_1844);
  let x_1847 : vec3<f32> = u_xlat26;
  let x_1849 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(-(x_1847), vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
  let x_1852 : f32 = u_xlat53;
  let x_1853 : f32 = u_xlat53;
  u_xlat53 = (x_1852 + x_1853);
  let x_1855 : vec4<f32> = u_xlat2;
  let x_1857 : f32 = u_xlat53;
  let x_1861 : vec3<f32> = u_xlat26;
  let x_1863 : vec3<f32> = ((vec3<f32>(x_1855.x, x_1855.y, x_1855.z) * -(vec3<f32>(x_1857, x_1857, x_1857))) + -(x_1861));
  let x_1864 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec4<f32> = u_xlat2;
  let x_1868 : vec3<f32> = u_xlat26;
  u_xlat53 = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), x_1868);
  let x_1870 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1870, 0.0f, 1.0f);
  let x_1872 : f32 = u_xlat53;
  u_xlat53 = (-(x_1872) + 1.0f);
  let x_1875 : f32 = u_xlat53;
  let x_1876 : f32 = u_xlat53;
  u_xlat53 = (x_1875 * x_1876);
  let x_1878 : f32 = u_xlat53;
  let x_1879 : f32 = u_xlat53;
  u_xlat53 = (x_1878 * x_1879);
  let x_1881 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1881) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1887 : f32 = u_xlat1;
  let x_1888 : f32 = u_xlat81;
  u_xlat1 = (x_1887 * x_1888);
  let x_1890 : f32 = u_xlat1;
  u_xlat1 = (x_1890 * 6.0f);
  let x_1901 : vec4<f32> = u_xlat6;
  let x_1903 : f32 = u_xlat1;
  let x_1904 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1901.x, x_1901.y, x_1901.z), x_1903);
  u_xlat6 = x_1904;
  let x_1906 : f32 = u_xlat6.w;
  u_xlat1 = (x_1906 + -1.0f);
  let x_1909 : f32 = x_391.unity_SpecCube0_HDR.w;
  let x_1910 : f32 = u_xlat1;
  u_xlat1 = ((x_1909 * x_1910) + 1.0f);
  let x_1913 : f32 = u_xlat1;
  u_xlat1 = max(x_1913, 0.0f);
  let x_1915 : f32 = u_xlat1;
  u_xlat1 = log2(x_1915);
  let x_1917 : f32 = u_xlat1;
  let x_1919 : f32 = x_391.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1917 * x_1919);
  let x_1921 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1921);
  let x_1923 : f32 = u_xlat1;
  let x_1925 : f32 = x_391.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1923 * x_1925);
  let x_1927 : vec4<f32> = u_xlat6;
  let x_1929 : f32 = u_xlat1;
  let x_1931 : vec3<f32> = (vec3<f32>(x_1927.x, x_1927.y, x_1927.z) * vec3<f32>(x_1929, x_1929, x_1929));
  let x_1932 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
  let x_1934 : f32 = u_xlat77;
  let x_1936 : f32 = u_xlat77;
  let x_1940 : vec2<f32> = ((vec2<f32>(x_1934, x_1934) * vec2<f32>(x_1936, x_1936)) + vec2<f32>(-1.0f, 1.0f));
  let x_1941 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1940.x, x_1940.y, x_1941.z, x_1941.w);
  let x_1944 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1944);
  let x_1947 : vec4<f32> = u_xlat0;
  let x_1950 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1947.x, x_1947.y, x_1947.z)) + vec3<f32>(x_1950, x_1950, x_1950));
  let x_1953 : f32 = u_xlat53;
  let x_1955 : vec3<f32> = u_xlat32;
  let x_1957 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1953, x_1953, x_1953) * x_1955) + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : f32 = u_xlat1;
  let x_1962 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1960, x_1960, x_1960) * x_1962);
  let x_1964 : vec4<f32> = u_xlat6;
  let x_1966 : vec3<f32> = u_xlat32;
  let x_1967 : vec3<f32> = (vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * x_1966);
  let x_1968 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1970 : vec4<f32> = u_xlat4;
  let x_1972 : vec4<f32> = u_xlat5;
  let x_1975 : vec4<f32> = u_xlat6;
  let x_1977 : vec3<f32> = ((vec3<f32>(x_1970.x, x_1970.y, x_1970.z) * vec3<f32>(x_1972.x, x_1972.y, x_1972.z)) + vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1981 : f32 = u_xlat3.x;
  let x_1983 : f32 = x_391.unity_LightData.z;
  u_xlat75 = (x_1981 * x_1983);
  let x_1985 : vec4<f32> = u_xlat2;
  let x_1988 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1991, 0.0f, 1.0f);
  let x_1993 : f32 = u_xlat75;
  let x_1994 : f32 = u_xlat1;
  u_xlat75 = (x_1993 * x_1994);
  let x_1996 : f32 = u_xlat75;
  let x_1999 : vec4<f32> = x_29.x_MainLightColor;
  let x_2001 : vec3<f32> = (vec3<f32>(x_1996, x_1996, x_1996) * vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
  let x_2002 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
  let x_2004 : vec3<f32> = u_xlat26;
  let x_2006 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (x_2004 + vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : vec3<f32> = u_xlat32;
  let x_2010 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_2009, x_2010);
  let x_2012 : f32 = u_xlat75;
  u_xlat75 = max(x_2012, 1.17549435e-38f);
  let x_2015 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2015);
  let x_2017 : f32 = u_xlat75;
  let x_2019 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2017, x_2017, x_2017) * x_2019);
  let x_2021 : vec4<f32> = u_xlat2;
  let x_2023 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_2021.x, x_2021.y, x_2021.z), x_2023);
  let x_2025 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2025, 0.0f, 1.0f);
  let x_2028 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2030 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_2028.x, x_2028.y, x_2028.z), x_2030);
  let x_2032 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2032, 0.0f, 1.0f);
  let x_2034 : f32 = u_xlat75;
  let x_2035 : f32 = u_xlat75;
  u_xlat75 = (x_2034 * x_2035);
  let x_2037 : f32 = u_xlat75;
  let x_2039 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2037 * x_2039) + 1.00001001358032226562f);
  let x_2043 : f32 = u_xlat1;
  let x_2044 : f32 = u_xlat1;
  u_xlat1 = (x_2043 * x_2044);
  let x_2046 : f32 = u_xlat75;
  let x_2047 : f32 = u_xlat75;
  u_xlat75 = (x_2046 * x_2047);
  let x_2049 : f32 = u_xlat1;
  u_xlat1 = max(x_2049, 0.10000000149011611938f);
  let x_2052 : f32 = u_xlat75;
  let x_2053 : f32 = u_xlat1;
  u_xlat75 = (x_2052 * x_2053);
  let x_2055 : f32 = u_xlat79;
  let x_2056 : f32 = u_xlat75;
  u_xlat75 = (x_2055 * x_2056);
  let x_2058 : f32 = u_xlat80;
  let x_2059 : f32 = u_xlat75;
  u_xlat75 = (x_2058 / x_2059);
  let x_2061 : vec4<f32> = u_xlat0;
  let x_2063 : f32 = u_xlat75;
  let x_2066 : vec4<f32> = u_xlat5;
  u_xlat32 = ((vec3<f32>(x_2061.x, x_2061.y, x_2061.z) * vec3<f32>(x_2063, x_2063, x_2063)) + vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
  let x_2070 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2072 : f32 = x_391.unity_LightData.y;
  u_xlat75 = min(x_2070, x_2072);
  let x_2075 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2075));
  let x_2079 : f32 = u_xlat28.x;
  let x_2082 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_2085 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2079 * x_2082) + x_2085);
  let x_2087 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2087, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2099 : u32 = u_xlatu_loop_1;
    let x_2100 : u32 = u_xlatu75;
    if ((x_2099 < x_2100)) {
    } else {
      break;
    }
    let x_2103 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2103 >> 2u);
    let x_2106 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2106 & 3u));
    let x_2109 : u32 = u_xlatu81;
    let x_2112 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_2109)];
    let x_2122 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2127 : vec4<u32> = indexable[x_2122];
    u_xlat81 = dot(x_2112, bitcast<vec4<f32>>(x_2127));
    let x_2131 : f32 = u_xlat81;
    u_xlati81 = i32(x_2131);
    let x_2133 : vec3<f32> = vs_TEXCOORD7;
    let x_2144 : i32 = u_xlati81;
    let x_2146 : vec4<f32> = x_2143.x_AdditionalLightsPosition[x_2144];
    let x_2149 : i32 = u_xlati81;
    let x_2151 : vec4<f32> = x_2143.x_AdditionalLightsPosition[x_2149];
    let x_2153 : vec3<f32> = ((-(x_2133) * vec3<f32>(x_2146.w, x_2146.w, x_2146.w)) + vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
    let x_2154 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
    let x_2157 : vec4<f32> = u_xlat8;
    let x_2159 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2157.x, x_2157.y, x_2157.z), vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
    let x_2162 : f32 = u_xlat83;
    u_xlat83 = max(x_2162, 0.00006103515625f);
    let x_2165 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2165);
    let x_2169 : vec4<f32> = u_xlat8;
    let x_2171 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2169.x, x_2169.y, x_2169.z) * vec3<f32>(x_2171.x, x_2171.x, x_2171.x));
    let x_2174 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2174);
    let x_2177 : f32 = u_xlat83;
    let x_2178 : i32 = u_xlati81;
    let x_2180 : f32 = x_2143.x_AdditionalLightsAttenuation[x_2178].x;
    u_xlat83 = (x_2177 * x_2180);
    let x_2182 : f32 = u_xlat83;
    let x_2184 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2182) * x_2184) + 1.0f);
    let x_2187 : f32 = u_xlat83;
    u_xlat83 = max(x_2187, 0.0f);
    let x_2189 : f32 = u_xlat83;
    let x_2190 : f32 = u_xlat83;
    u_xlat83 = (x_2189 * x_2190);
    let x_2192 : f32 = u_xlat83;
    let x_2194 : f32 = u_xlat10.x;
    u_xlat83 = (x_2192 * x_2194);
    let x_2196 : i32 = u_xlati81;
    let x_2198 : vec4<f32> = x_2143.x_AdditionalLightsSpotDir[x_2196];
    let x_2200 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2198.x, x_2198.y, x_2198.z), x_2200);
    let x_2204 : f32 = u_xlat10.x;
    let x_2205 : i32 = u_xlati81;
    let x_2207 : f32 = x_2143.x_AdditionalLightsAttenuation[x_2205].z;
    let x_2209 : i32 = u_xlati81;
    let x_2211 : f32 = x_2143.x_AdditionalLightsAttenuation[x_2209].w;
    u_xlat10.x = ((x_2204 * x_2207) + x_2211);
    let x_2215 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2215, 0.0f, 1.0f);
    let x_2219 : f32 = u_xlat10.x;
    let x_2221 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2219 * x_2221);
    let x_2224 : f32 = u_xlat83;
    let x_2226 : f32 = u_xlat10.x;
    u_xlat83 = (x_2224 * x_2226);
    let x_2230 : i32 = u_xlati81;
    let x_2232 : f32 = x_162.x_AdditionalShadowParams[x_2230].w;
    u_xlati10 = i32(x_2232);
    let x_2237 : i32 = u_xlati10;
    u_xlatb35.x = (x_2237 >= 0i);
    let x_2241 : bool = u_xlatb35.x;
    if (x_2241) {
      let x_2245 : i32 = u_xlati81;
      let x_2247 : f32 = x_162.x_AdditionalShadowParams[x_2245].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2247, x_2247, x_2247, x_2247))));
      let x_2253 : bool = u_xlatb35.x;
      if (x_2253) {
        let x_2256 : vec3<f32> = u_xlat34;
        let x_2259 : vec3<f32> = u_xlat34;
        let x_2262 : vec4<bool> = (abs(vec4<f32>(x_2256.z, x_2256.z, x_2256.y, x_2256.y)) >= abs(vec4<f32>(x_2259.x, x_2259.y, x_2259.x, x_2259.x)));
        u_xlatb35 = vec3<bool>(x_2262.x, x_2262.y, x_2262.z);
        let x_2265 : bool = u_xlatb35.y;
        let x_2267 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2265 & x_2267);
        let x_2271 : vec3<f32> = u_xlat34;
        let x_2274 : vec4<bool> = (-(vec4<f32>(x_2271.z, x_2271.y, x_2271.x, x_2271.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2274.x, x_2274.y, x_2274.z);
        let x_2277 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2277);
        let x_2282 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2282);
        let x_2286 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2286);
        let x_2290 : bool = u_xlatb35.z;
        if (x_2290) {
          let x_2295 : f32 = u_xlat11.y;
          x_2291 = x_2295;
        } else {
          let x_2298 : f32 = u_xlat60.x;
          x_2291 = x_2298;
        }
        let x_2299 : f32 = x_2291;
        u_xlat60.x = x_2299;
        let x_2303 : bool = u_xlatb35.x;
        if (x_2303) {
          let x_2308 : f32 = u_xlat11.x;
          x_2304 = x_2308;
        } else {
          let x_2311 : f32 = u_xlat60.x;
          x_2304 = x_2311;
        }
        let x_2312 : f32 = x_2304;
        u_xlat35 = x_2312;
        let x_2313 : i32 = u_xlati81;
        let x_2315 : f32 = x_162.x_AdditionalShadowParams[x_2313].w;
        u_xlat60.x = trunc(x_2315);
        let x_2318 : f32 = u_xlat35;
        let x_2320 : f32 = u_xlat60.x;
        u_xlat35 = (x_2318 + x_2320);
        let x_2322 : f32 = u_xlat35;
        u_xlati10 = i32(x_2322);
      }
      let x_2324 : i32 = u_xlati10;
      u_xlati10 = (x_2324 << bitcast<u32>(2i));
      let x_2326 : vec3<f32> = vs_TEXCOORD7;
      let x_2329 : i32 = u_xlati10;
      let x_2332 : i32 = u_xlati10;
      let x_2336 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2329 + 1i) / 4i)][((x_2332 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2326.y, x_2326.y, x_2326.y, x_2326.y) * x_2336);
      let x_2338 : i32 = u_xlati10;
      let x_2340 : i32 = u_xlati10;
      let x_2343 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_2338 / 4i)][(x_2340 % 4i)];
      let x_2344 : vec3<f32> = vs_TEXCOORD7;
      let x_2347 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2343 * vec4<f32>(x_2344.x, x_2344.x, x_2344.x, x_2344.x)) + x_2347);
      let x_2349 : i32 = u_xlati10;
      let x_2352 : i32 = u_xlati10;
      let x_2356 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2349 + 2i) / 4i)][((x_2352 + 2i) % 4i)];
      let x_2357 : vec3<f32> = vs_TEXCOORD7;
      let x_2360 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2356 * vec4<f32>(x_2357.z, x_2357.z, x_2357.z, x_2357.z)) + x_2360);
      let x_2362 : vec4<f32> = u_xlat11;
      let x_2363 : i32 = u_xlati10;
      let x_2366 : i32 = u_xlati10;
      let x_2370 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2363 + 3i) / 4i)][((x_2366 + 3i) % 4i)];
      u_xlat10 = (x_2362 + x_2370);
      let x_2372 : vec4<f32> = u_xlat10;
      let x_2374 : vec4<f32> = u_xlat10;
      let x_2376 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) / vec3<f32>(x_2374.w, x_2374.w, x_2374.w));
      let x_2377 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
      let x_2380 : i32 = u_xlati81;
      let x_2382 : f32 = x_162.x_AdditionalShadowParams[x_2380].y;
      u_xlatb85 = (0.0f < x_2382);
      let x_2384 : bool = u_xlatb85;
      if (x_2384) {
        let x_2387 : i32 = u_xlati81;
        let x_2389 : f32 = x_162.x_AdditionalShadowParams[x_2387].y;
        u_xlatb85 = (1.0f == x_2389);
        let x_2391 : bool = u_xlatb85;
        if (x_2391) {
          let x_2394 : vec4<f32> = u_xlat10;
          let x_2398 : vec4<f32> = x_162.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2394.x, x_2394.y, x_2394.x, x_2394.y) + x_2398);
          let x_2401 : vec4<f32> = u_xlat11;
          let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
          let x_2404 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
          let x_2412 : vec3<f32> = txVec30;
          let x_2414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
          u_xlat12.x = x_2414;
          let x_2417 : vec4<f32> = u_xlat11;
          let x_2418 : vec2<f32> = vec2<f32>(x_2417.z, x_2417.w);
          let x_2420 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
          let x_2427 : vec3<f32> = txVec31;
          let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
          u_xlat12.y = x_2429;
          let x_2431 : vec4<f32> = u_xlat10;
          let x_2435 : vec4<f32> = x_162.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2431.x, x_2431.y, x_2431.x, x_2431.y) + x_2435);
          let x_2438 : vec4<f32> = u_xlat11;
          let x_2439 : vec2<f32> = vec2<f32>(x_2438.x, x_2438.y);
          let x_2441 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2439.x, x_2439.y, x_2441);
          let x_2448 : vec3<f32> = txVec32;
          let x_2450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2448.xy, x_2448.z);
          u_xlat12.z = x_2450;
          let x_2453 : vec4<f32> = u_xlat11;
          let x_2454 : vec2<f32> = vec2<f32>(x_2453.z, x_2453.w);
          let x_2456 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2454.x, x_2454.y, x_2456);
          let x_2463 : vec3<f32> = txVec33;
          let x_2465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2463.xy, x_2463.z);
          u_xlat12.w = x_2465;
          let x_2468 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2468, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2471 : i32 = u_xlati81;
          let x_2473 : f32 = x_162.x_AdditionalShadowParams[x_2471].y;
          u_xlatb11.x = (2.0f == x_2473);
          let x_2477 : bool = u_xlatb11.x;
          if (x_2477) {
            let x_2480 : vec4<f32> = u_xlat10;
            let x_2484 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2487 : vec2<f32> = ((vec2<f32>(x_2480.x, x_2480.y) * vec2<f32>(x_2484.z, x_2484.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2488 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2492 : vec2<f32> = floor(vec2<f32>(x_2490.x, x_2490.y));
            let x_2493 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2496 : vec4<f32> = u_xlat10;
            let x_2499 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2502 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2496.x, x_2496.y) * vec2<f32>(x_2499.z, x_2499.w)) + -(vec2<f32>(x_2502.x, x_2502.y)));
            let x_2506 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2506.x, x_2506.x, x_2506.y, x_2506.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2509 : vec4<f32> = u_xlat12;
            let x_2511 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2509.x, x_2509.x, x_2509.z, x_2509.z) * vec4<f32>(x_2511.x, x_2511.x, x_2511.z, x_2511.z));
            let x_2514 : vec4<f32> = u_xlat13;
            let x_2516 : vec2<f32> = (vec2<f32>(x_2514.y, x_2514.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2517 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2516.x, x_2517.y, x_2516.y, x_2517.w);
            let x_2519 : vec4<f32> = u_xlat13;
            let x_2522 : vec2<f32> = u_xlat61;
            let x_2524 : vec2<f32> = ((vec2<f32>(x_2519.x, x_2519.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2522));
            let x_2525 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2524.x, x_2524.y, x_2525.z, x_2525.w);
            let x_2527 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2527) + vec2<f32>(1.0f, 1.0f));
            let x_2530 : vec2<f32> = u_xlat61;
            let x_2531 : vec2<f32> = min(x_2530, vec2<f32>(0.0f, 0.0f));
            let x_2532 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2531.x, x_2531.y, x_2532.z, x_2532.w);
            let x_2534 : vec4<f32> = u_xlat14;
            let x_2537 : vec4<f32> = u_xlat14;
            let x_2540 : vec2<f32> = u_xlat63;
            let x_2541 : vec2<f32> = ((-(vec2<f32>(x_2534.x, x_2534.y)) * vec2<f32>(x_2537.x, x_2537.y)) + x_2540);
            let x_2542 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2541.x, x_2541.y, x_2542.z, x_2542.w);
            let x_2544 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2544, vec2<f32>(0.0f, 0.0f));
            let x_2546 : vec2<f32> = u_xlat61;
            let x_2548 : vec2<f32> = u_xlat61;
            let x_2550 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2546) * x_2548) + vec2<f32>(x_2550.y, x_2550.w));
            let x_2553 : vec4<f32> = u_xlat14;
            let x_2555 : vec2<f32> = (vec2<f32>(x_2553.x, x_2553.y) + vec2<f32>(1.0f, 1.0f));
            let x_2556 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
            let x_2558 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2558 + vec2<f32>(1.0f, 1.0f));
            let x_2560 : vec4<f32> = u_xlat13;
            let x_2562 : vec2<f32> = (vec2<f32>(x_2560.x, x_2560.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2563 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec2<f32> = u_xlat63;
            let x_2566 : vec2<f32> = (x_2565 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2567 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat14;
            let x_2571 : vec2<f32> = (vec2<f32>(x_2569.x, x_2569.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2572 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2571.x, x_2571.y, x_2572.z, x_2572.w);
            let x_2574 : vec2<f32> = u_xlat61;
            let x_2575 : vec2<f32> = (x_2574 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2576 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2578.y, x_2578.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2582 : f32 = u_xlat14.x;
            u_xlat15.z = x_2582;
            let x_2585 : f32 = u_xlat61.x;
            u_xlat15.w = x_2585;
            let x_2588 : f32 = u_xlat16.x;
            u_xlat13.z = x_2588;
            let x_2591 : f32 = u_xlat12.x;
            u_xlat13.w = x_2591;
            let x_2593 : vec4<f32> = u_xlat13;
            let x_2595 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2593.z, x_2593.w, x_2593.x, x_2593.z) + vec4<f32>(x_2595.z, x_2595.w, x_2595.x, x_2595.z));
            let x_2599 : f32 = u_xlat15.y;
            u_xlat14.z = x_2599;
            let x_2602 : f32 = u_xlat61.y;
            u_xlat14.w = x_2602;
            let x_2605 : f32 = u_xlat13.y;
            u_xlat16.z = x_2605;
            let x_2608 : f32 = u_xlat12.z;
            u_xlat16.w = x_2608;
            let x_2610 : vec4<f32> = u_xlat14;
            let x_2612 : vec4<f32> = u_xlat16;
            let x_2614 : vec3<f32> = (vec3<f32>(x_2610.z, x_2610.y, x_2610.w) + vec3<f32>(x_2612.z, x_2612.y, x_2612.w));
            let x_2615 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
            let x_2617 : vec4<f32> = u_xlat13;
            let x_2619 : vec4<f32> = u_xlat17;
            let x_2621 : vec3<f32> = (vec3<f32>(x_2617.x, x_2617.z, x_2617.w) / vec3<f32>(x_2619.z, x_2619.w, x_2619.y));
            let x_2622 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
            let x_2624 : vec4<f32> = u_xlat13;
            let x_2626 : vec3<f32> = (vec3<f32>(x_2624.x, x_2624.y, x_2624.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2627 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
            let x_2629 : vec4<f32> = u_xlat16;
            let x_2631 : vec4<f32> = u_xlat12;
            let x_2633 : vec3<f32> = (vec3<f32>(x_2629.z, x_2629.y, x_2629.w) / vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
            let x_2634 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
            let x_2636 : vec4<f32> = u_xlat14;
            let x_2638 : vec3<f32> = (vec3<f32>(x_2636.x, x_2636.y, x_2636.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2639 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
            let x_2641 : vec4<f32> = u_xlat13;
            let x_2644 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2646 : vec3<f32> = (vec3<f32>(x_2641.y, x_2641.x, x_2641.z) * vec3<f32>(x_2644.x, x_2644.x, x_2644.x));
            let x_2647 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2647.w);
            let x_2649 : vec4<f32> = u_xlat14;
            let x_2652 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2654 : vec3<f32> = (vec3<f32>(x_2649.x, x_2649.y, x_2649.z) * vec3<f32>(x_2652.y, x_2652.y, x_2652.y));
            let x_2655 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
            let x_2658 : f32 = u_xlat14.x;
            u_xlat13.w = x_2658;
            let x_2660 : vec4<f32> = u_xlat11;
            let x_2663 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2666 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y) * vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y)) + vec4<f32>(x_2666.y, x_2666.w, x_2666.x, x_2666.w));
            let x_2669 : vec4<f32> = u_xlat11;
            let x_2672 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2675 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2669.x, x_2669.y) * vec2<f32>(x_2672.x, x_2672.y)) + vec2<f32>(x_2675.z, x_2675.w));
            let x_2679 : f32 = u_xlat13.y;
            u_xlat14.w = x_2679;
            let x_2681 : vec4<f32> = u_xlat14;
            let x_2682 : vec2<f32> = vec2<f32>(x_2681.y, x_2681.z);
            let x_2683 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2683.x, x_2682.x, x_2683.z, x_2682.y);
            let x_2685 : vec4<f32> = u_xlat11;
            let x_2688 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2691 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2685.x, x_2685.y, x_2685.x, x_2685.y) * vec4<f32>(x_2688.x, x_2688.y, x_2688.x, x_2688.y)) + vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2691.y));
            let x_2694 : vec4<f32> = u_xlat11;
            let x_2697 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2700 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2694.x, x_2694.y, x_2694.x, x_2694.y) * vec4<f32>(x_2697.x, x_2697.y, x_2697.x, x_2697.y)) + vec4<f32>(x_2700.w, x_2700.y, x_2700.w, x_2700.z));
            let x_2703 : vec4<f32> = u_xlat11;
            let x_2706 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2709 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y) * vec4<f32>(x_2706.x, x_2706.y, x_2706.x, x_2706.y)) + vec4<f32>(x_2709.x, x_2709.w, x_2709.z, x_2709.w));
            let x_2712 : vec4<f32> = u_xlat12;
            let x_2714 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2712.x, x_2712.x, x_2712.x, x_2712.y) * vec4<f32>(x_2714.z, x_2714.w, x_2714.y, x_2714.z));
            let x_2717 : vec4<f32> = u_xlat12;
            let x_2719 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2717.y, x_2717.y, x_2717.z, x_2717.z) * x_2719);
            let x_2722 : f32 = u_xlat12.z;
            let x_2724 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2722 * x_2724);
            let x_2728 : vec4<f32> = u_xlat15;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.x, x_2728.y);
            let x_2731 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2739 : vec3<f32> = txVec34;
            let x_2741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2739.xy, x_2739.z);
            u_xlat36 = x_2741;
            let x_2743 : vec4<f32> = u_xlat15;
            let x_2744 : vec2<f32> = vec2<f32>(x_2743.z, x_2743.w);
            let x_2746 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2744.x, x_2744.y, x_2746);
            let x_2753 : vec3<f32> = txVec35;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat12.x = x_2755;
            let x_2758 : f32 = u_xlat12.x;
            let x_2760 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2758 * x_2760);
            let x_2764 : f32 = u_xlat18.x;
            let x_2765 : f32 = u_xlat36;
            let x_2768 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2764 * x_2765) + x_2768);
            let x_2771 : vec2<f32> = u_xlat61;
            let x_2773 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2771.x, x_2771.y, x_2773);
            let x_2780 : vec3<f32> = txVec36;
            let x_2782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2780.xy, x_2780.z);
            u_xlat61.x = x_2782;
            let x_2785 : f32 = u_xlat18.z;
            let x_2787 : f32 = u_xlat61.x;
            let x_2789 : f32 = u_xlat36;
            u_xlat36 = ((x_2785 * x_2787) + x_2789);
            let x_2792 : vec4<f32> = u_xlat14;
            let x_2793 : vec2<f32> = vec2<f32>(x_2792.x, x_2792.y);
            let x_2795 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
            let x_2802 : vec3<f32> = txVec37;
            let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
            u_xlat61.x = x_2804;
            let x_2807 : f32 = u_xlat18.w;
            let x_2809 : f32 = u_xlat61.x;
            let x_2811 : f32 = u_xlat36;
            u_xlat36 = ((x_2807 * x_2809) + x_2811);
            let x_2814 : vec4<f32> = u_xlat16;
            let x_2815 : vec2<f32> = vec2<f32>(x_2814.x, x_2814.y);
            let x_2817 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2815.x, x_2815.y, x_2817);
            let x_2824 : vec3<f32> = txVec38;
            let x_2826 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2824.xy, x_2824.z);
            u_xlat61.x = x_2826;
            let x_2829 : f32 = u_xlat19.x;
            let x_2831 : f32 = u_xlat61.x;
            let x_2833 : f32 = u_xlat36;
            u_xlat36 = ((x_2829 * x_2831) + x_2833);
            let x_2836 : vec4<f32> = u_xlat16;
            let x_2837 : vec2<f32> = vec2<f32>(x_2836.z, x_2836.w);
            let x_2839 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2837.x, x_2837.y, x_2839);
            let x_2846 : vec3<f32> = txVec39;
            let x_2848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
            u_xlat61.x = x_2848;
            let x_2851 : f32 = u_xlat19.y;
            let x_2853 : f32 = u_xlat61.x;
            let x_2855 : f32 = u_xlat36;
            u_xlat36 = ((x_2851 * x_2853) + x_2855);
            let x_2858 : vec4<f32> = u_xlat14;
            let x_2859 : vec2<f32> = vec2<f32>(x_2858.z, x_2858.w);
            let x_2861 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
            let x_2868 : vec3<f32> = txVec40;
            let x_2870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
            u_xlat61.x = x_2870;
            let x_2873 : f32 = u_xlat19.z;
            let x_2875 : f32 = u_xlat61.x;
            let x_2877 : f32 = u_xlat36;
            u_xlat36 = ((x_2873 * x_2875) + x_2877);
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2881 : vec2<f32> = vec2<f32>(x_2880.x, x_2880.y);
            let x_2883 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
            let x_2890 : vec3<f32> = txVec41;
            let x_2892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
            u_xlat61.x = x_2892;
            let x_2895 : f32 = u_xlat19.w;
            let x_2897 : f32 = u_xlat61.x;
            let x_2899 : f32 = u_xlat36;
            u_xlat36 = ((x_2895 * x_2897) + x_2899);
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2903 : vec2<f32> = vec2<f32>(x_2902.z, x_2902.w);
            let x_2905 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
            let x_2912 : vec3<f32> = txVec42;
            let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
            u_xlat61.x = x_2914;
            let x_2917 : f32 = u_xlat11.x;
            let x_2919 : f32 = u_xlat61.x;
            let x_2921 : f32 = u_xlat36;
            u_xlat85 = ((x_2917 * x_2919) + x_2921);
          } else {
            let x_2924 : vec4<f32> = u_xlat10;
            let x_2927 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2930 : vec2<f32> = ((vec2<f32>(x_2924.x, x_2924.y) * vec2<f32>(x_2927.z, x_2927.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2931 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2935 : vec2<f32> = floor(vec2<f32>(x_2933.x, x_2933.y));
            let x_2936 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2935.x, x_2935.y, x_2936.z, x_2936.w);
            let x_2938 : vec4<f32> = u_xlat10;
            let x_2941 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2944 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2938.x, x_2938.y) * vec2<f32>(x_2941.z, x_2941.w)) + -(vec2<f32>(x_2944.x, x_2944.y)));
            let x_2948 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2948.x, x_2948.x, x_2948.y, x_2948.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2951 : vec4<f32> = u_xlat12;
            let x_2953 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2951.x, x_2951.x, x_2951.z, x_2951.z) * vec4<f32>(x_2953.x, x_2953.x, x_2953.z, x_2953.z));
            let x_2956 : vec4<f32> = u_xlat13;
            let x_2958 : vec2<f32> = (vec2<f32>(x_2956.y, x_2956.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2959 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2959.x, x_2958.x, x_2959.z, x_2958.y);
            let x_2961 : vec4<f32> = u_xlat13;
            let x_2964 : vec2<f32> = u_xlat61;
            let x_2966 : vec2<f32> = ((vec2<f32>(x_2961.x, x_2961.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2964));
            let x_2967 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2966.x, x_2967.y, x_2966.y, x_2967.w);
            let x_2969 : vec2<f32> = u_xlat61;
            let x_2971 : vec2<f32> = (-(x_2969) + vec2<f32>(1.0f, 1.0f));
            let x_2972 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2971.x, x_2971.y, x_2972.z, x_2972.w);
            let x_2974 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2974, vec2<f32>(0.0f, 0.0f));
            let x_2976 : vec2<f32> = u_xlat63;
            let x_2978 : vec2<f32> = u_xlat63;
            let x_2980 : vec4<f32> = u_xlat13;
            let x_2982 : vec2<f32> = ((-(x_2976) * x_2978) + vec2<f32>(x_2980.x, x_2980.y));
            let x_2983 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2982.x, x_2982.y, x_2983.z, x_2983.w);
            let x_2985 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2985, vec2<f32>(0.0f, 0.0f));
            let x_2988 : vec2<f32> = u_xlat63;
            let x_2990 : vec2<f32> = u_xlat63;
            let x_2992 : vec4<f32> = u_xlat12;
            let x_2994 : vec2<f32> = ((-(x_2988) * x_2990) + vec2<f32>(x_2992.y, x_2992.w));
            let x_2995 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2994.x, x_2995.y, x_2994.y);
            let x_2997 : vec4<f32> = u_xlat13;
            let x_3000 : vec2<f32> = (vec2<f32>(x_2997.x, x_2997.y) + vec2<f32>(2.0f, 2.0f));
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3000.x, x_3000.y, x_3001.z, x_3001.w);
            let x_3003 : vec3<f32> = u_xlat37;
            let x_3005 : vec2<f32> = (vec2<f32>(x_3003.x, x_3003.z) + vec2<f32>(2.0f, 2.0f));
            let x_3006 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3006.x, x_3005.x, x_3006.z, x_3005.y);
            let x_3009 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3009 * 0.08163200318813323975f);
            let x_3012 : vec4<f32> = u_xlat12;
            let x_3015 : vec3<f32> = (vec3<f32>(x_3012.z, x_3012.x, x_3012.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3016 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3016.w);
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3020 : vec2<f32> = (vec2<f32>(x_3018.x, x_3018.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3021 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3020.x, x_3020.y, x_3021.z, x_3021.w);
            let x_3024 : f32 = u_xlat16.y;
            u_xlat15.x = x_3024;
            let x_3026 : vec2<f32> = u_xlat61;
            let x_3029 : vec2<f32> = ((vec2<f32>(x_3026.x, x_3026.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3030 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3030.x, x_3029.x, x_3030.z, x_3029.y);
            let x_3032 : vec2<f32> = u_xlat61;
            let x_3035 : vec2<f32> = ((vec2<f32>(x_3032.x, x_3032.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3036 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3035.x, x_3036.y, x_3035.y, x_3036.w);
            let x_3039 : f32 = u_xlat12.x;
            u_xlat13.y = x_3039;
            let x_3042 : f32 = u_xlat14.y;
            u_xlat13.w = x_3042;
            let x_3044 : vec4<f32> = u_xlat13;
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3044 + x_3045);
            let x_3047 : vec2<f32> = u_xlat61;
            let x_3050 : vec2<f32> = ((vec2<f32>(x_3047.y, x_3047.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3051 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3051.x, x_3050.x, x_3051.z, x_3050.y);
            let x_3053 : vec2<f32> = u_xlat61;
            let x_3056 : vec2<f32> = ((vec2<f32>(x_3053.y, x_3053.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3057 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3056.x, x_3057.y, x_3056.y, x_3057.w);
            let x_3060 : f32 = u_xlat12.y;
            u_xlat14.y = x_3060;
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3063 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3062 + x_3063);
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3065 / x_3066);
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3068 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3070 : vec4<f32> = u_xlat14;
            let x_3071 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3070 / x_3071);
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3073 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3075 : vec4<f32> = u_xlat13;
            let x_3078 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3075.w, x_3075.x, x_3075.y, x_3075.z) * vec4<f32>(x_3078.x, x_3078.x, x_3078.x, x_3078.x));
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3084 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3081.x, x_3081.w, x_3081.y, x_3081.z) * vec4<f32>(x_3084.y, x_3084.y, x_3084.y, x_3084.y));
            let x_3087 : vec4<f32> = u_xlat13;
            let x_3088 : vec3<f32> = vec3<f32>(x_3087.y, x_3087.z, x_3087.w);
            let x_3089 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3088.x, x_3089.y, x_3088.y, x_3088.z);
            let x_3092 : f32 = u_xlat14.x;
            u_xlat16.y = x_3092;
            let x_3094 : vec4<f32> = u_xlat11;
            let x_3097 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3094.x, x_3094.y, x_3094.x, x_3094.y) * vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y)) + vec4<f32>(x_3100.x, x_3100.y, x_3100.z, x_3100.y));
            let x_3103 : vec4<f32> = u_xlat11;
            let x_3106 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3106.x, x_3106.y)) + vec2<f32>(x_3109.w, x_3109.y));
            let x_3113 : f32 = u_xlat16.y;
            u_xlat13.y = x_3113;
            let x_3116 : f32 = u_xlat14.z;
            u_xlat16.y = x_3116;
            let x_3118 : vec4<f32> = u_xlat11;
            let x_3121 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3124 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y) * vec4<f32>(x_3121.x, x_3121.y, x_3121.x, x_3121.y)) + vec4<f32>(x_3124.x, x_3124.y, x_3124.z, x_3124.y));
            let x_3127 : vec4<f32> = u_xlat11;
            let x_3130 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3133 : vec4<f32> = u_xlat16;
            let x_3135 : vec2<f32> = ((vec2<f32>(x_3127.x, x_3127.y) * vec2<f32>(x_3130.x, x_3130.y)) + vec2<f32>(x_3133.w, x_3133.y));
            let x_3136 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
            let x_3139 : f32 = u_xlat16.y;
            u_xlat13.z = x_3139;
            let x_3141 : vec4<f32> = u_xlat11;
            let x_3144 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3147 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y) * vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y)) + vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.z));
            let x_3151 : f32 = u_xlat14.w;
            u_xlat16.y = x_3151;
            let x_3154 : vec4<f32> = u_xlat11;
            let x_3157 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3160 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3154.x, x_3154.y, x_3154.x, x_3154.y) * vec4<f32>(x_3157.x, x_3157.y, x_3157.x, x_3157.y)) + vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3160.y));
            let x_3164 : vec4<f32> = u_xlat11;
            let x_3167 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3170 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3164.x, x_3164.y) * vec2<f32>(x_3167.x, x_3167.y)) + vec2<f32>(x_3170.w, x_3170.y));
            let x_3174 : f32 = u_xlat16.y;
            u_xlat13.w = x_3174;
            let x_3177 : vec4<f32> = u_xlat11;
            let x_3180 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3183 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3177.x, x_3177.y) * vec2<f32>(x_3180.x, x_3180.y)) + vec2<f32>(x_3183.x, x_3183.w));
            let x_3186 : vec4<f32> = u_xlat16;
            let x_3187 : vec3<f32> = vec3<f32>(x_3186.x, x_3186.z, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3187.x, x_3188.y, x_3187.y, x_3187.z);
            let x_3190 : vec4<f32> = u_xlat11;
            let x_3193 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3196 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y) * vec4<f32>(x_3193.x, x_3193.y, x_3193.x, x_3193.y)) + vec4<f32>(x_3196.x, x_3196.y, x_3196.z, x_3196.y));
            let x_3200 : vec4<f32> = u_xlat11;
            let x_3203 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3206 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3200.x, x_3200.y) * vec2<f32>(x_3203.x, x_3203.y)) + vec2<f32>(x_3206.w, x_3206.y));
            let x_3210 : f32 = u_xlat13.x;
            u_xlat14.x = x_3210;
            let x_3212 : vec4<f32> = u_xlat11;
            let x_3215 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3218 : vec4<f32> = u_xlat14;
            let x_3220 : vec2<f32> = ((vec2<f32>(x_3212.x, x_3212.y) * vec2<f32>(x_3215.x, x_3215.y)) + vec2<f32>(x_3218.x, x_3218.y));
            let x_3221 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3220.x, x_3220.y, x_3221.z, x_3221.w);
            let x_3224 : vec4<f32> = u_xlat12;
            let x_3226 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3224.x, x_3224.x, x_3224.x, x_3224.x) * x_3226);
            let x_3229 : vec4<f32> = u_xlat12;
            let x_3231 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3229.y, x_3229.y, x_3229.y, x_3229.y) * x_3231);
            let x_3234 : vec4<f32> = u_xlat12;
            let x_3236 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3234.z, x_3234.z, x_3234.z, x_3234.z) * x_3236);
            let x_3238 : vec4<f32> = u_xlat12;
            let x_3240 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3238.w, x_3238.w, x_3238.w, x_3238.w) * x_3240);
            let x_3243 : vec4<f32> = u_xlat17;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.x, x_3243.y);
            let x_3246 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec43;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat13.x = x_3255;
            let x_3258 : vec4<f32> = u_xlat17;
            let x_3259 : vec2<f32> = vec2<f32>(x_3258.z, x_3258.w);
            let x_3261 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
            let x_3269 : vec3<f32> = txVec44;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat88 = x_3271;
            let x_3272 : f32 = u_xlat88;
            let x_3274 : f32 = u_xlat22.y;
            u_xlat88 = (x_3272 * x_3274);
            let x_3277 : f32 = u_xlat22.x;
            let x_3279 : f32 = u_xlat13.x;
            let x_3281 : f32 = u_xlat88;
            u_xlat13.x = ((x_3277 * x_3279) + x_3281);
            let x_3285 : vec2<f32> = u_xlat61;
            let x_3287 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
            let x_3294 : vec3<f32> = txVec45;
            let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
            u_xlat61.x = x_3296;
            let x_3299 : f32 = u_xlat22.z;
            let x_3301 : f32 = u_xlat61.x;
            let x_3304 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3299 * x_3301) + x_3304);
            let x_3308 : vec4<f32> = u_xlat20;
            let x_3309 : vec2<f32> = vec2<f32>(x_3308.x, x_3308.y);
            let x_3311 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
            let x_3319 : vec3<f32> = txVec46;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat86 = x_3321;
            let x_3323 : f32 = u_xlat22.w;
            let x_3324 : f32 = u_xlat86;
            let x_3327 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3323 * x_3324) + x_3327);
            let x_3331 : vec4<f32> = u_xlat18;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.x, x_3331.y);
            let x_3334 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec47;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat86 = x_3343;
            let x_3345 : f32 = u_xlat23.x;
            let x_3346 : f32 = u_xlat86;
            let x_3349 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3345 * x_3346) + x_3349);
            let x_3353 : vec4<f32> = u_xlat18;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.z, x_3353.w);
            let x_3356 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec48;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat86 = x_3365;
            let x_3367 : f32 = u_xlat23.y;
            let x_3368 : f32 = u_xlat86;
            let x_3371 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3367 * x_3368) + x_3371);
            let x_3375 : vec4<f32> = u_xlat19;
            let x_3376 : vec2<f32> = vec2<f32>(x_3375.x, x_3375.y);
            let x_3378 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3376.x, x_3376.y, x_3378);
            let x_3385 : vec3<f32> = txVec49;
            let x_3387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3385.xy, x_3385.z);
            u_xlat86 = x_3387;
            let x_3389 : f32 = u_xlat23.z;
            let x_3390 : f32 = u_xlat86;
            let x_3393 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3389 * x_3390) + x_3393);
            let x_3397 : vec4<f32> = u_xlat20;
            let x_3398 : vec2<f32> = vec2<f32>(x_3397.z, x_3397.w);
            let x_3400 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec50;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat86 = x_3409;
            let x_3411 : f32 = u_xlat23.w;
            let x_3412 : f32 = u_xlat86;
            let x_3415 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3411 * x_3412) + x_3415);
            let x_3419 : vec4<f32> = u_xlat21;
            let x_3420 : vec2<f32> = vec2<f32>(x_3419.x, x_3419.y);
            let x_3422 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3420.x, x_3420.y, x_3422);
            let x_3429 : vec3<f32> = txVec51;
            let x_3431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3429.xy, x_3429.z);
            u_xlat86 = x_3431;
            let x_3433 : f32 = u_xlat24.x;
            let x_3434 : f32 = u_xlat86;
            let x_3437 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3433 * x_3434) + x_3437);
            let x_3441 : vec4<f32> = u_xlat21;
            let x_3442 : vec2<f32> = vec2<f32>(x_3441.z, x_3441.w);
            let x_3444 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec52;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat86 = x_3453;
            let x_3455 : f32 = u_xlat24.y;
            let x_3456 : f32 = u_xlat86;
            let x_3459 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3455 * x_3456) + x_3459);
            let x_3463 : vec2<f32> = u_xlat38;
            let x_3465 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3472 : vec3<f32> = txVec53;
            let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
            u_xlat86 = x_3474;
            let x_3476 : f32 = u_xlat24.z;
            let x_3477 : f32 = u_xlat86;
            let x_3480 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3476 * x_3477) + x_3480);
            let x_3484 : vec2<f32> = u_xlat69;
            let x_3486 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3484.x, x_3484.y, x_3486);
            let x_3493 : vec3<f32> = txVec54;
            let x_3495 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3493.xy, x_3493.z);
            u_xlat86 = x_3495;
            let x_3497 : f32 = u_xlat24.w;
            let x_3498 : f32 = u_xlat86;
            let x_3501 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3497 * x_3498) + x_3501);
            let x_3505 : vec4<f32> = u_xlat16;
            let x_3506 : vec2<f32> = vec2<f32>(x_3505.x, x_3505.y);
            let x_3508 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec55;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat86 = x_3517;
            let x_3519 : f32 = u_xlat12.x;
            let x_3520 : f32 = u_xlat86;
            let x_3523 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3519 * x_3520) + x_3523);
            let x_3527 : vec4<f32> = u_xlat16;
            let x_3528 : vec2<f32> = vec2<f32>(x_3527.z, x_3527.w);
            let x_3530 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3528.x, x_3528.y, x_3530);
            let x_3537 : vec3<f32> = txVec56;
            let x_3539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3537.xy, x_3537.z);
            u_xlat86 = x_3539;
            let x_3541 : f32 = u_xlat12.y;
            let x_3542 : f32 = u_xlat86;
            let x_3545 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3541 * x_3542) + x_3545);
            let x_3549 : vec2<f32> = u_xlat64;
            let x_3551 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3549.x, x_3549.y, x_3551);
            let x_3558 : vec3<f32> = txVec57;
            let x_3560 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3558.xy, x_3558.z);
            u_xlat86 = x_3560;
            let x_3562 : f32 = u_xlat12.z;
            let x_3563 : f32 = u_xlat86;
            let x_3566 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3562 * x_3563) + x_3566);
            let x_3570 : vec4<f32> = u_xlat11;
            let x_3571 : vec2<f32> = vec2<f32>(x_3570.x, x_3570.y);
            let x_3573 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec58;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat11.x = x_3582;
            let x_3585 : f32 = u_xlat12.w;
            let x_3587 : f32 = u_xlat11.x;
            let x_3590 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3585 * x_3587) + x_3590);
          }
        }
      } else {
        let x_3594 : vec4<f32> = u_xlat10;
        let x_3595 : vec2<f32> = vec2<f32>(x_3594.x, x_3594.y);
        let x_3597 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3595.x, x_3595.y, x_3597);
        let x_3604 : vec3<f32> = txVec59;
        let x_3606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3604.xy, x_3604.z);
        u_xlat85 = x_3606;
      }
      let x_3607 : i32 = u_xlati81;
      let x_3609 : f32 = x_162.x_AdditionalShadowParams[x_3607].x;
      u_xlat10.x = (1.0f + -(x_3609));
      let x_3613 : f32 = u_xlat85;
      let x_3614 : i32 = u_xlati81;
      let x_3616 : f32 = x_162.x_AdditionalShadowParams[x_3614].x;
      let x_3619 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3613 * x_3616) + x_3619);
      let x_3623 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3623);
      let x_3628 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3628 >= 1.0f);
      let x_3630 : bool = u_xlatb60;
      let x_3632 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3630 | x_3632);
      let x_3636 : bool = u_xlatb35.x;
      if (x_3636) {
        x_3637 = 1.0f;
      } else {
        let x_3642 : f32 = u_xlat10.x;
        x_3637 = x_3642;
      }
      let x_3643 : f32 = x_3637;
      u_xlat10.x = x_3643;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3648 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3648) + 1.0f);
    let x_3651 : f32 = u_xlat1;
    let x_3652 : f32 = u_xlat35;
    let x_3655 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3651 * x_3652) + x_3655);
    let x_3658 : f32 = u_xlat83;
    let x_3660 : f32 = u_xlat10.x;
    u_xlat83 = (x_3658 * x_3660);
    let x_3662 : vec4<f32> = u_xlat2;
    let x_3664 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3662.x, x_3662.y, x_3662.z), x_3664);
    let x_3668 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3668, 0.0f, 1.0f);
    let x_3671 : f32 = u_xlat83;
    let x_3673 : f32 = u_xlat10.x;
    u_xlat83 = (x_3671 * x_3673);
    let x_3675 : f32 = u_xlat83;
    let x_3677 : i32 = u_xlati81;
    let x_3679 : vec4<f32> = x_2143.x_AdditionalLightsColor[x_3677];
    let x_3681 : vec3<f32> = (vec3<f32>(x_3675, x_3675, x_3675) * vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
    let x_3682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
    let x_3684 : vec4<f32> = u_xlat8;
    let x_3686 : vec4<f32> = u_xlat9;
    let x_3689 : vec3<f32> = u_xlat26;
    let x_3690 : vec3<f32> = ((vec3<f32>(x_3684.x, x_3684.y, x_3684.z) * vec3<f32>(x_3686.x, x_3686.x, x_3686.x)) + x_3689);
    let x_3691 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3690.x, x_3690.y, x_3690.z, x_3691.w);
    let x_3693 : vec4<f32> = u_xlat8;
    let x_3695 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3693.x, x_3693.y, x_3693.z), vec3<f32>(x_3695.x, x_3695.y, x_3695.z));
    let x_3698 : f32 = u_xlat81;
    u_xlat81 = max(x_3698, 1.17549435e-38f);
    let x_3700 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3700);
    let x_3702 : f32 = u_xlat81;
    let x_3704 : vec4<f32> = u_xlat8;
    let x_3706 : vec3<f32> = (vec3<f32>(x_3702, x_3702, x_3702) * vec3<f32>(x_3704.x, x_3704.y, x_3704.z));
    let x_3707 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3706.x, x_3706.y, x_3706.z, x_3707.w);
    let x_3709 : vec4<f32> = u_xlat2;
    let x_3711 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3709.x, x_3709.y, x_3709.z), vec3<f32>(x_3711.x, x_3711.y, x_3711.z));
    let x_3714 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3714, 0.0f, 1.0f);
    let x_3716 : vec3<f32> = u_xlat34;
    let x_3717 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3716, vec3<f32>(x_3717.x, x_3717.y, x_3717.z));
    let x_3722 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3722, 0.0f, 1.0f);
    let x_3725 : f32 = u_xlat81;
    let x_3726 : f32 = u_xlat81;
    u_xlat81 = (x_3725 * x_3726);
    let x_3728 : f32 = u_xlat81;
    let x_3730 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3728 * x_3730) + 1.00001001358032226562f);
    let x_3734 : f32 = u_xlat8.x;
    let x_3736 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3734 * x_3736);
    let x_3739 : f32 = u_xlat81;
    let x_3740 : f32 = u_xlat81;
    u_xlat81 = (x_3739 * x_3740);
    let x_3743 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3743, 0.10000000149011611938f);
    let x_3746 : f32 = u_xlat81;
    let x_3748 : f32 = u_xlat8.x;
    u_xlat81 = (x_3746 * x_3748);
    let x_3750 : f32 = u_xlat79;
    let x_3751 : f32 = u_xlat81;
    u_xlat81 = (x_3750 * x_3751);
    let x_3753 : f32 = u_xlat80;
    let x_3754 : f32 = u_xlat81;
    u_xlat81 = (x_3753 / x_3754);
    let x_3756 : vec4<f32> = u_xlat0;
    let x_3758 : f32 = u_xlat81;
    let x_3761 : vec4<f32> = u_xlat5;
    let x_3763 : vec3<f32> = ((vec3<f32>(x_3756.x, x_3756.y, x_3756.z) * vec3<f32>(x_3758, x_3758, x_3758)) + vec3<f32>(x_3761.x, x_3761.y, x_3761.z));
    let x_3764 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3763.x, x_3763.y, x_3763.z, x_3764.w);
    let x_3766 : vec4<f32> = u_xlat8;
    let x_3768 : vec4<f32> = u_xlat10;
    let x_3771 : vec4<f32> = u_xlat3;
    let x_3773 : vec3<f32> = ((vec3<f32>(x_3766.x, x_3766.y, x_3766.z) * vec3<f32>(x_3768.x, x_3768.y, x_3768.z)) + vec3<f32>(x_3771.x, x_3771.y, x_3771.z));
    let x_3774 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_3773.x, x_3773.y, x_3773.z, x_3774.w);

    continuing {
      let x_3776 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3776 + bitcast<u32>(1i));
    }
  }
  let x_3778 : vec3<f32> = u_xlat32;
  let x_3779 : vec4<f32> = u_xlat6;
  let x_3782 : vec4<f32> = u_xlat4;
  let x_3784 : vec3<f32> = ((x_3778 * vec3<f32>(x_3779.x, x_3779.y, x_3779.z)) + vec3<f32>(x_3782.x, x_3782.y, x_3782.z));
  let x_3785 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3784.x, x_3784.y, x_3784.z, x_3785.w);
  let x_3787 : vec4<f32> = u_xlat3;
  let x_3789 : vec4<f32> = u_xlat0;
  let x_3791 : vec3<f32> = (vec3<f32>(x_3787.x, x_3787.y, x_3787.z) + vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
  let x_3792 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
  let x_3794 : f32 = u_xlat78;
  let x_3795 : f32 = u_xlat78;
  u_xlat75 = (x_3794 * -(x_3795));
  let x_3798 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3798);
  let x_3800 : vec4<f32> = u_xlat0;
  let x_3803 : vec4<f32> = x_29.unity_FogColor;
  let x_3806 : vec3<f32> = (vec3<f32>(x_3800.x, x_3800.y, x_3800.z) + -(vec3<f32>(x_3803.x, x_3803.y, x_3803.z)));
  let x_3807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3806.x, x_3806.y, x_3806.z, x_3807.w);
  let x_3811 : f32 = u_xlat75;
  let x_3813 : vec4<f32> = u_xlat0;
  let x_3817 : vec4<f32> = x_29.unity_FogColor;
  let x_3819 : vec3<f32> = ((vec3<f32>(x_3811, x_3811, x_3811) * vec3<f32>(x_3813.x, x_3813.y, x_3813.z)) + vec3<f32>(x_3817.x, x_3817.y, x_3817.z));
  let x_3820 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3820.w);
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


