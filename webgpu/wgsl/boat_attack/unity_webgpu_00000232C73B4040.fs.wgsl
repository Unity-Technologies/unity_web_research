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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_111 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu26 : u32;

var<private> u_xlati26 : i32;

@group(1) @binding(2) var<uniform> x_293 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb5 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb51 : bool;

var<private> u_xlatb76 : bool;

var<private> u_xlat51 : f32;

var<private> u_xlat76 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2095 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

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

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb80 : bool;

fn main_1() {
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
  var x_1708 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2237 : f32;
  var x_2248 : f32;
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
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_28.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat1.x = x_76.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_89);
  let x_93 : vec3<f32> = u_xlat26;
  let x_95 : vec4<f32> = vs_TEXCOORD3;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres0;
  u_xlat26 = (x_102 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_127 : vec3<f32> = vs_TEXCOORD7;
  let x_130 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres2;
  let x_133 : vec3<f32> = (x_127 + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres3;
  let x_143 : vec3<f32> = (x_137 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = u_xlat26;
  let x_148 : vec3<f32> = u_xlat26;
  u_xlat6.x = dot(x_147, x_148);
  let x_151 : vec3<f32> = u_xlat3;
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_151, x_152);
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_173 : vec4<f32> = u_xlat6;
  let x_176 : vec4<f32> = x_111.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_173 < x_176);
  let x_179 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_179);
  let x_184 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb3.x;
  u_xlat26.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb3.y;
  u_xlat26.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb3.z;
  u_xlat26.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec3<f32> = u_xlat26;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_209 + vec3<f32>(x_210.y, x_210.z, x_210.w));
  let x_213 : vec3<f32> = u_xlat26;
  let x_215 : vec3<f32> = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_215.x, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat26.x = dot(x_218, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_226 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_226) + 4.0f);
  let x_233 : f32 = u_xlat26.x;
  u_xlatu26 = u32(x_233);
  let x_237 : u32 = u_xlatu26;
  u_xlati26 = (bitcast<i32>(x_237) << bitcast<u32>(2i));
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_242 : i32 = u_xlati26;
  let x_245 : i32 = u_xlati26;
  let x_249 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_242 + 1i) / 4i)][((x_245 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : i32 = u_xlati26;
  let x_254 : i32 = u_xlati26;
  let x_257 : vec4<f32> = x_111.x_MainLightWorldToShadow[(x_252 / 4i)][(x_254 % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + x_262);
  let x_264 : i32 = u_xlati26;
  let x_267 : i32 = u_xlati26;
  let x_271 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_264 + 2i) / 4i)][((x_267 + 2i) % 4i)];
  let x_273 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_273.z, x_273.z, x_273.z)) + x_276);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : i32 = u_xlati26;
  let x_282 : i32 = u_xlati26;
  let x_286 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_279 + 3i) / 4i)][((x_282 + 3i) % 4i)];
  u_xlat26 = (x_278 + vec3<f32>(x_286.x, x_286.y, x_286.z));
  u_xlat2.w = 1.0f;
  let x_296 : vec4<f32> = x_293.unity_SHAr;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_296, x_297);
  let x_302 : vec4<f32> = x_293.unity_SHAg;
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_302, x_303);
  let x_308 : vec4<f32> = x_293.unity_SHAb;
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_308, x_309);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_319 : vec4<f32> = x_293.unity_SHBr;
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_319, x_320);
  let x_325 : vec4<f32> = x_293.unity_SHBg;
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_325, x_326);
  let x_331 : vec4<f32> = x_293.unity_SHBb;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_331, x_332);
  let x_337 : f32 = u_xlat2.y;
  let x_339 : f32 = u_xlat2.y;
  u_xlat77 = (x_337 * x_339);
  let x_342 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat77;
  u_xlat77 = ((x_342 * x_344) + -(x_346));
  let x_351 : vec4<f32> = x_293.unity_SHC;
  let x_353 : f32 = u_xlat77;
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec3<f32> = u_xlat3;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_361 + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_365, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_368 : f32 = u_xlat1.x;
  u_xlat77 = ((-(x_368) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_374 : f32 = u_xlat77;
  u_xlat78 = (-(x_374) + 1.0f);
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : f32 = u_xlat77;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379, x_379, x_379));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.x, x_391.x) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat1.x;
  let x_409 : f32 = u_xlat1.x;
  u_xlat77 = (x_407 * x_409);
  let x_411 : f32 = u_xlat77;
  u_xlat77 = max(x_411, 0.0078125f);
  let x_415 : f32 = u_xlat77;
  let x_416 : f32 = u_xlat77;
  u_xlat79 = (x_415 * x_416);
  let x_420 : f32 = u_xlat0.w;
  let x_421 : f32 = u_xlat78;
  u_xlat75 = (x_420 + x_421);
  let x_423 : f32 = u_xlat75;
  u_xlat75 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : f32 = u_xlat77;
  u_xlat78 = ((x_425 * 4.0f) + 2.0f);
  let x_431 : f32 = x_111.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_431);
  let x_433 : bool = u_xlatb5;
  if (x_433) {
    let x_437 : f32 = x_111.x_MainLightShadowParams.y;
    u_xlatb5 = (x_437 == 1.0f);
    let x_439 : bool = u_xlatb5;
    if (x_439) {
      let x_442 : vec3<f32> = u_xlat26;
      let x_446 : vec4<f32> = x_111.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_442.x, x_442.y, x_442.x, x_442.y) + x_446);
      let x_450 : vec4<f32> = u_xlat5;
      let x_451 : vec2<f32> = vec2<f32>(x_450.x, x_450.y);
      let x_453 : f32 = u_xlat26.z;
      txVec0 = vec3<f32>(x_451.x, x_451.y, x_453);
      let x_465 : vec3<f32> = txVec0;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_465.xy, x_465.z);
      u_xlat6.x = x_467;
      let x_470 : vec4<f32> = u_xlat5;
      let x_471 : vec2<f32> = vec2<f32>(x_470.z, x_470.w);
      let x_473 : f32 = u_xlat26.z;
      txVec1 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_480 : vec3<f32> = txVec1;
      let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_480.xy, x_480.z);
      u_xlat6.y = x_482;
      let x_484 : vec3<f32> = u_xlat26;
      let x_488 : vec4<f32> = x_111.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_484.x, x_484.y, x_484.x, x_484.y) + x_488);
      let x_491 : vec4<f32> = u_xlat5;
      let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
      let x_494 : f32 = u_xlat26.z;
      txVec2 = vec3<f32>(x_492.x, x_492.y, x_494);
      let x_501 : vec3<f32> = txVec2;
      let x_503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_501.xy, x_501.z);
      u_xlat6.z = x_503;
      let x_506 : vec4<f32> = u_xlat5;
      let x_507 : vec2<f32> = vec2<f32>(x_506.z, x_506.w);
      let x_509 : f32 = u_xlat26.z;
      txVec3 = vec3<f32>(x_507.x, x_507.y, x_509);
      let x_516 : vec3<f32> = txVec3;
      let x_518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_516.xy, x_516.z);
      u_xlat6.w = x_518;
      let x_520 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_520, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_528 : f32 = x_111.x_MainLightShadowParams.y;
      u_xlatb30 = (x_528 == 2.0f);
      let x_530 : bool = u_xlatb30;
      if (x_530) {
        let x_535 : vec3<f32> = u_xlat26;
        let x_539 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_535.x, x_535.y) * vec2<f32>(x_539.z, x_539.w)) + vec2<f32>(0.5f, 0.5f));
        let x_545 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_545);
        let x_547 : vec3<f32> = u_xlat26;
        let x_550 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_553 : vec2<f32> = u_xlat30;
        let x_555 : vec2<f32> = ((vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_550.z, x_550.w)) + -(x_553));
        let x_556 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_559.x, x_559.x, x_559.y, x_559.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_564 : vec4<f32> = u_xlat7;
        let x_566 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_564.x, x_564.x, x_564.z, x_564.z) * vec4<f32>(x_566.x, x_566.x, x_566.z, x_566.z));
        let x_570 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_570.y, x_570.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_575 : vec4<f32> = u_xlat8;
        let x_578 : vec4<f32> = u_xlat6;
        let x_581 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_578.x, x_578.y)));
        let x_582 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_581.x, x_582.y, x_581.y, x_582.w);
        let x_584 : vec4<f32> = u_xlat6;
        let x_588 : vec2<f32> = (-(vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(1.0f, 1.0f));
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_592.x, x_592.y), vec2<f32>(0.0f, 0.0f));
        let x_596 : vec2<f32> = u_xlat58;
        let x_598 : vec2<f32> = u_xlat58;
        let x_600 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_596) * x_598) + vec2<f32>(x_600.x, x_600.y));
        let x_603 : vec4<f32> = u_xlat6;
        let x_605 : vec2<f32> = max(vec2<f32>(x_603.x, x_603.y), vec2<f32>(0.0f, 0.0f));
        let x_606 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat6;
        let x_611 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = ((-(vec2<f32>(x_608.x, x_608.y)) * vec2<f32>(x_611.x, x_611.y)) + vec2<f32>(x_614.y, x_614.w));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_619 + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec4<f32> = u_xlat6;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : vec4<f32> = u_xlat7;
        let x_631 : vec2<f32> = (vec2<f32>(x_627.x, x_627.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_635 : vec4<f32> = u_xlat8;
        let x_637 : vec2<f32> = (vec2<f32>(x_635.x, x_635.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec2<f32> = u_xlat58;
        let x_641 : vec2<f32> = (x_640 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec4<f32> = u_xlat6;
        let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec4<f32> = u_xlat7;
        let x_652 : vec2<f32> = (vec2<f32>(x_650.y, x_650.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_656 : f32 = u_xlat8.x;
        u_xlat9.z = x_656;
        let x_659 : f32 = u_xlat6.x;
        u_xlat9.w = x_659;
        let x_662 : f32 = u_xlat11.x;
        u_xlat10.z = x_662;
        let x_665 : f32 = u_xlat56.x;
        u_xlat10.w = x_665;
        let x_667 : vec4<f32> = u_xlat9;
        let x_669 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_667.z, x_667.w, x_667.x, x_667.z) + vec4<f32>(x_669.z, x_669.w, x_669.x, x_669.z));
        let x_673 : f32 = u_xlat9.y;
        u_xlat8.z = x_673;
        let x_676 : f32 = u_xlat6.y;
        u_xlat8.w = x_676;
        let x_679 : f32 = u_xlat10.y;
        u_xlat11.z = x_679;
        let x_682 : f32 = u_xlat56.y;
        u_xlat11.w = x_682;
        let x_684 : vec4<f32> = u_xlat8;
        let x_686 : vec4<f32> = u_xlat11;
        let x_688 : vec3<f32> = (vec3<f32>(x_684.z, x_684.y, x_684.w) + vec3<f32>(x_686.z, x_686.y, x_686.w));
        let x_689 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat10;
        let x_693 : vec4<f32> = u_xlat7;
        let x_695 : vec3<f32> = (vec3<f32>(x_691.x, x_691.z, x_691.w) / vec3<f32>(x_693.z, x_693.w, x_693.y));
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat8;
        let x_704 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_705 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_707 : vec4<f32> = u_xlat11;
        let x_709 : vec4<f32> = u_xlat6;
        let x_711 : vec3<f32> = (vec3<f32>(x_707.z, x_707.y, x_707.w) / vec3<f32>(x_709.x, x_709.y, x_709.z));
        let x_712 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat9;
        let x_716 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat8;
        let x_722 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_724 : vec3<f32> = (vec3<f32>(x_719.y, x_719.x, x_719.z) * vec3<f32>(x_722.x, x_722.x, x_722.x));
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat9;
        let x_730 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_732 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_730.y, x_730.y, x_730.y));
        let x_733 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_736 : f32 = u_xlat9.x;
        u_xlat8.w = x_736;
        let x_738 : vec2<f32> = u_xlat30;
        let x_741 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.y, x_744.w, x_744.x, x_744.w));
        let x_747 : vec2<f32> = u_xlat30;
        let x_749 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = ((x_747 * vec2<f32>(x_749.x, x_749.y)) + vec2<f32>(x_752.z, x_752.w));
        let x_755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_758 : f32 = u_xlat8.y;
        u_xlat9.w = x_758;
        let x_760 : vec4<f32> = u_xlat9;
        let x_761 : vec2<f32> = vec2<f32>(x_760.y, x_760.z);
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_762.x, x_761.x, x_762.z, x_761.y);
        let x_765 : vec2<f32> = u_xlat30;
        let x_768 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y)) + vec4<f32>(x_771.x, x_771.y, x_771.z, x_771.y));
        let x_774 : vec2<f32> = u_xlat30;
        let x_777 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y) * vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y)) + vec4<f32>(x_780.w, x_780.y, x_780.w, x_780.z));
        let x_783 : vec2<f32> = u_xlat30;
        let x_786 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) * vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y)) + vec4<f32>(x_789.x, x_789.w, x_789.z, x_789.w));
        let x_793 : vec4<f32> = u_xlat6;
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_793.x, x_793.x, x_793.x, x_793.y) * vec4<f32>(x_795.z, x_795.w, x_795.y, x_795.z));
        let x_799 : vec4<f32> = u_xlat6;
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_799.y, x_799.y, x_799.z, x_799.z) * x_801);
        let x_804 : f32 = u_xlat6.z;
        let x_806 : f32 = u_xlat7.y;
        u_xlat30.x = (x_804 * x_806);
        let x_810 : vec4<f32> = u_xlat10;
        let x_811 : vec2<f32> = vec2<f32>(x_810.x, x_810.y);
        let x_813 : f32 = u_xlat26.z;
        txVec4 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_821 : vec3<f32> = txVec4;
        let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_821.xy, x_821.z);
        u_xlat55 = x_823;
        let x_825 : vec4<f32> = u_xlat10;
        let x_826 : vec2<f32> = vec2<f32>(x_825.z, x_825.w);
        let x_828 : f32 = u_xlat26.z;
        txVec5 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_836 : vec3<f32> = txVec5;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_836.xy, x_836.z);
        u_xlat80 = x_838;
        let x_839 : f32 = u_xlat80;
        let x_841 : f32 = u_xlat13.y;
        u_xlat80 = (x_839 * x_841);
        let x_844 : f32 = u_xlat13.x;
        let x_845 : f32 = u_xlat55;
        let x_847 : f32 = u_xlat80;
        u_xlat55 = ((x_844 * x_845) + x_847);
        let x_850 : vec4<f32> = u_xlat11;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = u_xlat26.z;
        txVec6 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec6;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_860.xy, x_860.z);
        u_xlat80 = x_862;
        let x_864 : f32 = u_xlat13.z;
        let x_865 : f32 = u_xlat80;
        let x_867 : f32 = u_xlat55;
        u_xlat55 = ((x_864 * x_865) + x_867);
        let x_870 : vec4<f32> = u_xlat9;
        let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
        let x_873 : f32 = u_xlat26.z;
        txVec7 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec7;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_880.xy, x_880.z);
        u_xlat80 = x_882;
        let x_884 : f32 = u_xlat13.w;
        let x_885 : f32 = u_xlat80;
        let x_887 : f32 = u_xlat55;
        u_xlat55 = ((x_884 * x_885) + x_887);
        let x_890 : vec4<f32> = u_xlat12;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = u_xlat26.z;
        txVec8 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec8;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
        u_xlat80 = x_902;
        let x_904 : f32 = u_xlat14.x;
        let x_905 : f32 = u_xlat80;
        let x_907 : f32 = u_xlat55;
        u_xlat55 = ((x_904 * x_905) + x_907);
        let x_910 : vec4<f32> = u_xlat12;
        let x_911 : vec2<f32> = vec2<f32>(x_910.z, x_910.w);
        let x_913 : f32 = u_xlat26.z;
        txVec9 = vec3<f32>(x_911.x, x_911.y, x_913);
        let x_920 : vec3<f32> = txVec9;
        let x_922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_920.xy, x_920.z);
        u_xlat80 = x_922;
        let x_924 : f32 = u_xlat14.y;
        let x_925 : f32 = u_xlat80;
        let x_927 : f32 = u_xlat55;
        u_xlat55 = ((x_924 * x_925) + x_927);
        let x_930 : vec4<f32> = u_xlat9;
        let x_931 : vec2<f32> = vec2<f32>(x_930.z, x_930.w);
        let x_933 : f32 = u_xlat26.z;
        txVec10 = vec3<f32>(x_931.x, x_931.y, x_933);
        let x_940 : vec3<f32> = txVec10;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_940.xy, x_940.z);
        u_xlat80 = x_942;
        let x_944 : f32 = u_xlat14.z;
        let x_945 : f32 = u_xlat80;
        let x_947 : f32 = u_xlat55;
        u_xlat55 = ((x_944 * x_945) + x_947);
        let x_950 : vec4<f32> = u_xlat8;
        let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
        let x_953 : f32 = u_xlat26.z;
        txVec11 = vec3<f32>(x_951.x, x_951.y, x_953);
        let x_960 : vec3<f32> = txVec11;
        let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
        u_xlat80 = x_962;
        let x_964 : f32 = u_xlat14.w;
        let x_965 : f32 = u_xlat80;
        let x_967 : f32 = u_xlat55;
        u_xlat55 = ((x_964 * x_965) + x_967);
        let x_970 : vec4<f32> = u_xlat8;
        let x_971 : vec2<f32> = vec2<f32>(x_970.z, x_970.w);
        let x_973 : f32 = u_xlat26.z;
        txVec12 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec12;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_980.xy, x_980.z);
        u_xlat80 = x_982;
        let x_984 : f32 = u_xlat30.x;
        let x_985 : f32 = u_xlat80;
        let x_987 : f32 = u_xlat55;
        u_xlat5.x = ((x_984 * x_985) + x_987);
      } else {
        let x_991 : vec3<f32> = u_xlat26;
        let x_994 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_991.x, x_991.y) * vec2<f32>(x_994.z, x_994.w)) + vec2<f32>(0.5f, 0.5f));
        let x_998 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_998);
        let x_1000 : vec3<f32> = u_xlat26;
        let x_1003 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = u_xlat30;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + -(x_1006));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1011.x, x_1011.x, x_1011.y, x_1011.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat7;
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1014.x, x_1014.x, x_1014.z, x_1014.z) * vec4<f32>(x_1016.x, x_1016.x, x_1016.z, x_1016.z));
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1023 : vec2<f32> = (vec2<f32>(x_1019.y, x_1019.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1029 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1026.x, x_1026.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1029.x, x_1029.y)));
        let x_1033 : vec4<f32> = u_xlat6;
        let x_1036 : vec2<f32> = (-(vec2<f32>(x_1033.x, x_1033.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1036.x, x_1037.y, x_1036.y, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1041 : vec2<f32> = min(vec2<f32>(x_1039.x, x_1039.y), vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1050 : vec4<f32> = u_xlat7;
        let x_1052 : vec2<f32> = ((-(vec2<f32>(x_1044.x, x_1044.y)) * vec2<f32>(x_1047.x, x_1047.y)) + vec2<f32>(x_1050.x, x_1050.z));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1057 : vec2<f32> = max(vec2<f32>(x_1055.x, x_1055.y), vec2<f32>(0.0f, 0.0f));
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1063 : vec4<f32> = u_xlat8;
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = ((-(vec2<f32>(x_1060.x, x_1060.y)) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.y, x_1066.w));
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1068.x, x_1069.z, x_1068.y);
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1071 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1075 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1075 * 0.08163200318813323975f);
        let x_1079 : vec2<f32> = u_xlat56;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1079.y, x_1079.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1085.x, x_1085.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1089 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1089 * 0.08163200318813323975f);
        let x_1093 : f32 = u_xlat10.y;
        u_xlat8.x = x_1093;
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1102.x, x_1103.z, x_1102.y);
        let x_1105 : vec4<f32> = u_xlat6;
        let x_1109 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1110 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1110.w);
        let x_1113 : f32 = u_xlat56.x;
        u_xlat7.y = x_1113;
        let x_1116 : f32 = u_xlat9.y;
        u_xlat7.w = x_1116;
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1118 + x_1119);
        let x_1121 : vec4<f32> = u_xlat6;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1121.y, x_1121.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1125.x, x_1124.x, x_1125.z, x_1124.y);
        let x_1127 : vec4<f32> = u_xlat6;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1127.y, x_1127.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1131.y, x_1130.y, x_1131.w);
        let x_1134 : f32 = u_xlat56.y;
        u_xlat9.y = x_1134;
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1136 + x_1137);
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1139 / x_1140);
        let x_1142 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1142 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1148 / x_1149);
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1151 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1153.w, x_1153.x, x_1153.y, x_1153.z) * vec4<f32>(x_1156.x, x_1156.x, x_1156.x, x_1156.x));
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1159.x, x_1159.w, x_1159.y, x_1159.z) * vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y));
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1166 : vec3<f32> = vec3<f32>(x_1165.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1166.z);
        let x_1170 : f32 = u_xlat9.x;
        u_xlat10.y = x_1170;
        let x_1172 : vec2<f32> = u_xlat30;
        let x_1175 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.y));
        let x_1181 : vec2<f32> = u_xlat30;
        let x_1183 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = ((x_1181 * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.y = x_1192;
        let x_1195 : f32 = u_xlat9.z;
        u_xlat10.y = x_1195;
        let x_1197 : vec2<f32> = u_xlat30;
        let x_1200 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1203 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y) * vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.y)) + vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1203.y));
        let x_1207 : vec2<f32> = u_xlat30;
        let x_1209 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1207 * vec2<f32>(x_1209.x, x_1209.y)) + vec2<f32>(x_1212.w, x_1212.y));
        let x_1216 : f32 = u_xlat10.y;
        u_xlat7.z = x_1216;
        let x_1218 : vec2<f32> = u_xlat30;
        let x_1221 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.z));
        let x_1228 : f32 = u_xlat9.w;
        u_xlat10.y = x_1228;
        let x_1231 : vec2<f32> = u_xlat30;
        let x_1234 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.y));
        let x_1241 : vec2<f32> = u_xlat30;
        let x_1243 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat10;
        let x_1248 : vec2<f32> = ((x_1241 * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1249 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1248.x, x_1248.y, x_1249.z);
        let x_1252 : f32 = u_xlat10.y;
        u_xlat7.w = x_1252;
        let x_1255 : vec2<f32> = u_xlat30;
        let x_1257 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat7;
        let x_1262 : vec2<f32> = ((x_1255 * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.x, x_1260.w));
        let x_1263 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1262.x, x_1262.y, x_1263.z, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat10;
        let x_1266 : vec3<f32> = vec3<f32>(x_1265.x, x_1265.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1266.z);
        let x_1269 : vec2<f32> = u_xlat30;
        let x_1272 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1275.y));
        let x_1279 : vec2<f32> = u_xlat30;
        let x_1281 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1279 * vec2<f32>(x_1281.x, x_1281.y)) + vec2<f32>(x_1284.w, x_1284.y));
        let x_1288 : f32 = u_xlat7.x;
        u_xlat9.x = x_1288;
        let x_1290 : vec2<f32> = u_xlat30;
        let x_1292 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat30 = ((x_1290 * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.x, x_1295.y));
        let x_1299 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1299.x, x_1299.x, x_1299.x, x_1299.x) * x_1301);
        let x_1304 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1304.y, x_1304.y, x_1304.y, x_1304.y) * x_1306);
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1309.z, x_1309.z, x_1309.z, x_1309.z) * x_1311);
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1313.w, x_1313.w, x_1313.w, x_1313.w) * x_1315);
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.x, x_1318.y);
        let x_1321 : f32 = u_xlat26.z;
        txVec13 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec13;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1328.xy, x_1328.z);
        u_xlat80 = x_1330;
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = u_xlat26.z;
        txVec14 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec14;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat7.x = x_1344;
        let x_1347 : f32 = u_xlat7.x;
        let x_1349 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1347 * x_1349);
        let x_1353 : f32 = u_xlat17.x;
        let x_1354 : f32 = u_xlat80;
        let x_1357 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1353 * x_1354) + x_1357);
        let x_1360 : vec4<f32> = u_xlat12;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat26.z;
        txVec15 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec15;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat7.x = x_1372;
        let x_1375 : f32 = u_xlat17.z;
        let x_1377 : f32 = u_xlat7.x;
        let x_1379 : f32 = u_xlat80;
        u_xlat80 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat14;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = u_xlat26.z;
        txVec16 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec16;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat7.x = x_1394;
        let x_1397 : f32 = u_xlat17.w;
        let x_1399 : f32 = u_xlat7.x;
        let x_1401 : f32 = u_xlat80;
        u_xlat80 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat13;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.x, x_1404.y);
        let x_1407 : f32 = u_xlat26.z;
        txVec17 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec17;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat7.x = x_1416;
        let x_1419 : f32 = u_xlat18.x;
        let x_1421 : f32 = u_xlat7.x;
        let x_1423 : f32 = u_xlat80;
        u_xlat80 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat13;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.z, x_1426.w);
        let x_1429 : f32 = u_xlat26.z;
        txVec18 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec18;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat7.x = x_1438;
        let x_1441 : f32 = u_xlat18.y;
        let x_1443 : f32 = u_xlat7.x;
        let x_1445 : f32 = u_xlat80;
        u_xlat80 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec2<f32> = u_xlat62;
        let x_1450 : f32 = u_xlat26.z;
        txVec19 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec19;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat7.x = x_1459;
        let x_1462 : f32 = u_xlat18.z;
        let x_1464 : f32 = u_xlat7.x;
        let x_1466 : f32 = u_xlat80;
        u_xlat80 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat14;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.z, x_1469.w);
        let x_1472 : f32 = u_xlat26.z;
        txVec20 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec20;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat7.x = x_1481;
        let x_1484 : f32 = u_xlat18.w;
        let x_1486 : f32 = u_xlat7.x;
        let x_1488 : f32 = u_xlat80;
        u_xlat80 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat15;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat26.z;
        txVec21 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec21;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat7.x = x_1503;
        let x_1506 : f32 = u_xlat19.x;
        let x_1508 : f32 = u_xlat7.x;
        let x_1510 : f32 = u_xlat80;
        u_xlat80 = ((x_1506 * x_1508) + x_1510);
        let x_1513 : vec4<f32> = u_xlat15;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.z, x_1513.w);
        let x_1516 : f32 = u_xlat26.z;
        txVec22 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec22;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat7.x = x_1525;
        let x_1528 : f32 = u_xlat19.y;
        let x_1530 : f32 = u_xlat7.x;
        let x_1532 : f32 = u_xlat80;
        u_xlat80 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec3<f32> = u_xlat32;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = u_xlat26.z;
        txVec23 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec23;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat7.x = x_1547;
        let x_1550 : f32 = u_xlat19.z;
        let x_1552 : f32 = u_xlat7.x;
        let x_1554 : f32 = u_xlat80;
        u_xlat80 = ((x_1550 * x_1552) + x_1554);
        let x_1557 : vec4<f32> = u_xlat16;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.x, x_1557.y);
        let x_1560 : f32 = u_xlat26.z;
        txVec24 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec24;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat7.x = x_1569;
        let x_1572 : f32 = u_xlat19.w;
        let x_1574 : f32 = u_xlat7.x;
        let x_1576 : f32 = u_xlat80;
        u_xlat80 = ((x_1572 * x_1574) + x_1576);
        let x_1579 : vec4<f32> = u_xlat10;
        let x_1580 : vec2<f32> = vec2<f32>(x_1579.x, x_1579.y);
        let x_1582 : f32 = u_xlat26.z;
        txVec25 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
        let x_1589 : vec3<f32> = txVec25;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1589.xy, x_1589.z);
        u_xlat7.x = x_1591;
        let x_1594 : f32 = u_xlat6.x;
        let x_1596 : f32 = u_xlat7.x;
        let x_1598 : f32 = u_xlat80;
        u_xlat80 = ((x_1594 * x_1596) + x_1598);
        let x_1601 : vec4<f32> = u_xlat10;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.z, x_1601.w);
        let x_1604 : f32 = u_xlat26.z;
        txVec26 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec26;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1611.xy, x_1611.z);
        u_xlat6.x = x_1613;
        let x_1616 : f32 = u_xlat6.y;
        let x_1618 : f32 = u_xlat6.x;
        let x_1620 : f32 = u_xlat80;
        u_xlat80 = ((x_1616 * x_1618) + x_1620);
        let x_1623 : vec2<f32> = u_xlat59;
        let x_1625 : f32 = u_xlat26.z;
        txVec27 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec27;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1632.xy, x_1632.z);
        u_xlat6.x = x_1634;
        let x_1637 : f32 = u_xlat6.z;
        let x_1639 : f32 = u_xlat6.x;
        let x_1641 : f32 = u_xlat80;
        u_xlat80 = ((x_1637 * x_1639) + x_1641);
        let x_1644 : vec2<f32> = u_xlat30;
        let x_1646 : f32 = u_xlat26.z;
        txVec28 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec28;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1653.xy, x_1653.z);
        u_xlat30.x = x_1655;
        let x_1658 : f32 = u_xlat6.w;
        let x_1660 : f32 = u_xlat30.x;
        let x_1662 : f32 = u_xlat80;
        u_xlat5.x = ((x_1658 * x_1660) + x_1662);
      }
    }
  } else {
    let x_1667 : vec3<f32> = u_xlat26;
    let x_1668 : vec2<f32> = vec2<f32>(x_1667.x, x_1667.y);
    let x_1670 : f32 = u_xlat26.z;
    txVec29 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
    let x_1677 : vec3<f32> = txVec29;
    let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1677.xy, x_1677.z);
    u_xlat5.x = x_1679;
  }
  let x_1682 : f32 = x_111.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1682) + 1.0f);
  let x_1687 : f32 = u_xlat5.x;
  let x_1689 : f32 = x_111.x_MainLightShadowParams.x;
  let x_1692 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1687 * x_1689) + x_1692);
  let x_1697 : f32 = u_xlat26.z;
  u_xlatb51 = (0.0f >= x_1697);
  let x_1701 : f32 = u_xlat26.z;
  u_xlatb76 = (x_1701 >= 1.0f);
  let x_1703 : bool = u_xlatb76;
  let x_1704 : bool = u_xlatb51;
  u_xlatb51 = (x_1703 | x_1704);
  let x_1706 : bool = u_xlatb51;
  if (x_1706) {
    x_1708 = 1.0f;
  } else {
    let x_1713 : f32 = u_xlat26.x;
    x_1708 = x_1713;
  }
  let x_1714 : f32 = x_1708;
  u_xlat26.x = x_1714;
  let x_1716 : vec3<f32> = vs_TEXCOORD7;
  let x_1719 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1721 : vec3<f32> = (x_1716 + -(x_1719));
  let x_1722 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
  let x_1725 : vec4<f32> = u_xlat5;
  let x_1727 : vec4<f32> = u_xlat5;
  u_xlat51 = dot(vec3<f32>(x_1725.x, x_1725.y, x_1725.z), vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1731 : f32 = u_xlat51;
  let x_1733 : f32 = x_111.x_MainLightShadowParams.z;
  let x_1736 : f32 = x_111.x_MainLightShadowParams.w;
  u_xlat76 = ((x_1731 * x_1733) + x_1736);
  let x_1738 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1738, 0.0f, 1.0f);
  let x_1741 : f32 = u_xlat26.x;
  u_xlat5.x = (-(x_1741) + 1.0f);
  let x_1745 : f32 = u_xlat76;
  let x_1747 : f32 = u_xlat5.x;
  let x_1750 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1745 * x_1747) + x_1750);
  let x_1755 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1755;
  let x_1759 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1759;
  let x_1763 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1763;
  let x_1765 : vec4<f32> = u_xlat5;
  let x_1768 : vec4<f32> = u_xlat2;
  u_xlat76 = dot(-(vec3<f32>(x_1765.x, x_1765.y, x_1765.z)), vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1771 : f32 = u_xlat76;
  let x_1772 : f32 = u_xlat76;
  u_xlat76 = (x_1771 + x_1772);
  let x_1774 : vec4<f32> = u_xlat2;
  let x_1776 : f32 = u_xlat76;
  let x_1780 : vec4<f32> = u_xlat5;
  let x_1783 : vec3<f32> = ((vec3<f32>(x_1774.x, x_1774.y, x_1774.z) * -(vec3<f32>(x_1776, x_1776, x_1776))) + -(vec3<f32>(x_1780.x, x_1780.y, x_1780.z)));
  let x_1784 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1786 : vec4<f32> = u_xlat2;
  let x_1788 : vec4<f32> = u_xlat5;
  u_xlat76 = dot(vec3<f32>(x_1786.x, x_1786.y, x_1786.z), vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1791, 0.0f, 1.0f);
  let x_1793 : f32 = u_xlat76;
  u_xlat76 = (-(x_1793) + 1.0f);
  let x_1796 : f32 = u_xlat76;
  let x_1797 : f32 = u_xlat76;
  u_xlat76 = (x_1796 * x_1797);
  let x_1799 : f32 = u_xlat76;
  let x_1800 : f32 = u_xlat76;
  u_xlat76 = (x_1799 * x_1800);
  let x_1803 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1803) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1810 : f32 = u_xlat1.x;
  let x_1811 : f32 = u_xlat80;
  u_xlat1.x = (x_1810 * x_1811);
  let x_1815 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1815 * 6.0f);
  let x_1827 : vec4<f32> = u_xlat6;
  let x_1830 : f32 = u_xlat1.x;
  let x_1831 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1827.x, x_1827.y, x_1827.z), x_1830);
  u_xlat6 = x_1831;
  let x_1833 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1833 + -1.0f);
  let x_1837 : f32 = x_293.unity_SpecCube0_HDR.w;
  let x_1839 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1837 * x_1839) + 1.0f);
  let x_1844 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1844, 0.0f);
  let x_1848 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1848);
  let x_1852 : f32 = u_xlat1.x;
  let x_1854 : f32 = x_293.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1852 * x_1854);
  let x_1858 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1858);
  let x_1862 : f32 = u_xlat1.x;
  let x_1864 : f32 = x_293.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1862 * x_1864);
  let x_1867 : vec4<f32> = u_xlat6;
  let x_1869 : vec4<f32> = u_xlat1;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1867.x, x_1867.y, x_1867.z) * vec3<f32>(x_1869.x, x_1869.x, x_1869.x));
  let x_1872 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
  let x_1874 : f32 = u_xlat77;
  let x_1876 : f32 = u_xlat77;
  let x_1880 : vec2<f32> = ((vec2<f32>(x_1874, x_1874) * vec2<f32>(x_1876, x_1876)) + vec2<f32>(-1.0f, 1.0f));
  let x_1881 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
  let x_1884 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1884);
  let x_1887 : vec4<f32> = u_xlat0;
  let x_1890 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1887.x, x_1887.y, x_1887.z)) + vec3<f32>(x_1890, x_1890, x_1890));
  let x_1893 : f32 = u_xlat76;
  let x_1895 : vec3<f32> = u_xlat32;
  let x_1897 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1893, x_1893, x_1893) * x_1895) + vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
  let x_1900 : vec4<f32> = u_xlat1;
  let x_1902 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1900.x, x_1900.x, x_1900.x) * x_1902);
  let x_1904 : vec4<f32> = u_xlat6;
  let x_1906 : vec3<f32> = u_xlat32;
  let x_1907 : vec3<f32> = (vec3<f32>(x_1904.x, x_1904.y, x_1904.z) * x_1906);
  let x_1908 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1910 : vec3<f32> = u_xlat3;
  let x_1911 : vec4<f32> = u_xlat4;
  let x_1914 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_1910 * vec3<f32>(x_1911.x, x_1911.y, x_1911.z)) + vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1918 : f32 = u_xlat26.x;
  let x_1920 : f32 = x_293.unity_LightData.z;
  u_xlat75 = (x_1918 * x_1920);
  let x_1922 : vec4<f32> = u_xlat2;
  let x_1925 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1922.x, x_1922.y, x_1922.z), vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1930 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1930, 0.0f, 1.0f);
  let x_1933 : f32 = u_xlat75;
  let x_1935 : f32 = u_xlat1.x;
  u_xlat75 = (x_1933 * x_1935);
  let x_1937 : f32 = u_xlat75;
  let x_1940 : vec4<f32> = x_28.x_MainLightColor;
  let x_1942 : vec3<f32> = (vec3<f32>(x_1937, x_1937, x_1937) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1942.x, x_1942.y, x_1943.z, x_1942.z);
  let x_1945 : vec4<f32> = u_xlat5;
  let x_1948 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1950 : vec3<f32> = (vec3<f32>(x_1945.x, x_1945.y, x_1945.z) + vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : vec4<f32> = u_xlat6;
  let x_1955 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : f32 = u_xlat75;
  u_xlat75 = max(x_1958, 1.17549435e-38f);
  let x_1961 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1961);
  let x_1963 : f32 = u_xlat75;
  let x_1965 : vec4<f32> = u_xlat6;
  let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1970 : vec4<f32> = u_xlat2;
  let x_1972 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1970.x, x_1970.y, x_1970.z), vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
  let x_1975 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1975, 0.0f, 1.0f);
  let x_1978 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1980 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_1978.x, x_1978.y, x_1978.z), vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
  let x_1983 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1983, 0.0f, 1.0f);
  let x_1985 : f32 = u_xlat75;
  let x_1986 : f32 = u_xlat75;
  u_xlat75 = (x_1985 * x_1986);
  let x_1988 : f32 = u_xlat75;
  let x_1990 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1988 * x_1990) + 1.00001001358032226562f);
  let x_1994 : f32 = u_xlat77;
  let x_1995 : f32 = u_xlat77;
  u_xlat77 = (x_1994 * x_1995);
  let x_1997 : f32 = u_xlat75;
  let x_1998 : f32 = u_xlat75;
  u_xlat75 = (x_1997 * x_1998);
  let x_2000 : f32 = u_xlat77;
  u_xlat77 = max(x_2000, 0.10000000149011611938f);
  let x_2003 : f32 = u_xlat75;
  let x_2004 : f32 = u_xlat77;
  u_xlat75 = (x_2003 * x_2004);
  let x_2006 : f32 = u_xlat78;
  let x_2007 : f32 = u_xlat75;
  u_xlat75 = (x_2006 * x_2007);
  let x_2009 : f32 = u_xlat79;
  let x_2010 : f32 = u_xlat75;
  u_xlat75 = (x_2009 / x_2010);
  let x_2012 : vec4<f32> = u_xlat0;
  let x_2014 : f32 = u_xlat75;
  let x_2017 : vec4<f32> = u_xlat4;
  let x_2019 : vec3<f32> = ((vec3<f32>(x_2012.x, x_2012.y, x_2012.z) * vec3<f32>(x_2014, x_2014, x_2014)) + vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
  let x_2023 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2025 : f32 = x_293.unity_LightData.y;
  u_xlat75 = min(x_2023, x_2025);
  let x_2028 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2028));
  let x_2031 : f32 = u_xlat51;
  let x_2034 : f32 = x_111.x_AdditionalShadowFadeParams.x;
  let x_2037 : f32 = x_111.x_AdditionalShadowFadeParams.y;
  u_xlat51 = ((x_2031 * x_2034) + x_2037);
  let x_2039 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2039, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2051 : u32 = u_xlatu_loop_1;
    let x_2052 : u32 = u_xlatu75;
    if ((x_2051 < x_2052)) {
    } else {
      break;
    }
    let x_2055 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2055 >> 2u);
    let x_2058 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2058 & 3u));
    let x_2061 : u32 = u_xlatu80;
    let x_2064 : vec4<f32> = x_293.unity_LightIndices[bitcast<i32>(x_2061)];
    let x_2074 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2079 : vec4<u32> = indexable[x_2074];
    u_xlat80 = dot(x_2064, bitcast<vec4<f32>>(x_2079));
    let x_2083 : f32 = u_xlat80;
    u_xlati80 = i32(x_2083);
    let x_2085 : vec3<f32> = vs_TEXCOORD7;
    let x_2096 : i32 = u_xlati80;
    let x_2098 : vec4<f32> = x_2095.x_AdditionalLightsPosition[x_2096];
    let x_2101 : i32 = u_xlati80;
    let x_2103 : vec4<f32> = x_2095.x_AdditionalLightsPosition[x_2101];
    let x_2105 : vec3<f32> = ((-(x_2085) * vec3<f32>(x_2098.w, x_2098.w, x_2098.w)) + vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
    let x_2106 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
    let x_2109 : vec4<f32> = u_xlat8;
    let x_2111 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2109.x, x_2109.y, x_2109.z), vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
    let x_2114 : f32 = u_xlat81;
    u_xlat81 = max(x_2114, 0.00006103515625f);
    let x_2118 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2118);
    let x_2120 : f32 = u_xlat83;
    let x_2122 : vec4<f32> = u_xlat8;
    let x_2124 : vec3<f32> = (vec3<f32>(x_2120, x_2120, x_2120) * vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
    let x_2125 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
    let x_2128 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2128);
    let x_2130 : f32 = u_xlat81;
    let x_2131 : i32 = u_xlati80;
    let x_2133 : f32 = x_2095.x_AdditionalLightsAttenuation[x_2131].x;
    u_xlat81 = (x_2130 * x_2133);
    let x_2135 : f32 = u_xlat81;
    let x_2137 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2135) * x_2137) + 1.0f);
    let x_2140 : f32 = u_xlat81;
    u_xlat81 = max(x_2140, 0.0f);
    let x_2142 : f32 = u_xlat81;
    let x_2143 : f32 = u_xlat81;
    u_xlat81 = (x_2142 * x_2143);
    let x_2145 : f32 = u_xlat81;
    let x_2146 : f32 = u_xlat84;
    u_xlat81 = (x_2145 * x_2146);
    let x_2148 : i32 = u_xlati80;
    let x_2150 : vec4<f32> = x_2095.x_AdditionalLightsSpotDir[x_2148];
    let x_2152 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2150.x, x_2150.y, x_2150.z), vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
    let x_2155 : f32 = u_xlat84;
    let x_2156 : i32 = u_xlati80;
    let x_2158 : f32 = x_2095.x_AdditionalLightsAttenuation[x_2156].z;
    let x_2160 : i32 = u_xlati80;
    let x_2162 : f32 = x_2095.x_AdditionalLightsAttenuation[x_2160].w;
    u_xlat84 = ((x_2155 * x_2158) + x_2162);
    let x_2164 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2164, 0.0f, 1.0f);
    let x_2166 : f32 = u_xlat84;
    let x_2167 : f32 = u_xlat84;
    u_xlat84 = (x_2166 * x_2167);
    let x_2169 : f32 = u_xlat81;
    let x_2170 : f32 = u_xlat84;
    u_xlat81 = (x_2169 * x_2170);
    let x_2174 : i32 = u_xlati80;
    let x_2176 : f32 = x_111.x_AdditionalShadowParams[x_2174].w;
    u_xlati84 = i32(x_2176);
    let x_2181 : i32 = u_xlati84;
    u_xlatb10.x = (x_2181 >= 0i);
    let x_2185 : bool = u_xlatb10.x;
    if (x_2185) {
      let x_2189 : i32 = u_xlati80;
      let x_2191 : f32 = x_111.x_AdditionalShadowParams[x_2189].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2191, x_2191, x_2191, x_2191))));
      let x_2197 : bool = u_xlatb10.x;
      if (x_2197) {
        let x_2200 : vec4<f32> = u_xlat9;
        let x_2203 : vec4<f32> = u_xlat9;
        let x_2206 : vec4<bool> = (abs(vec4<f32>(x_2200.z, x_2200.z, x_2200.y, x_2200.z)) >= abs(vec4<f32>(x_2203.x, x_2203.y, x_2203.x, x_2203.x)));
        u_xlatb10 = vec3<bool>(x_2206.x, x_2206.y, x_2206.z);
        let x_2209 : bool = u_xlatb10.y;
        let x_2211 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2209 & x_2211);
        let x_2215 : vec4<f32> = u_xlat9;
        let x_2218 : vec4<bool> = (-(vec4<f32>(x_2215.z, x_2215.y, x_2215.x, x_2215.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2218.x, x_2218.y, x_2218.z);
        let x_2222 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2222);
        let x_2227 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2227);
        let x_2231 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2231);
        let x_2236 : bool = u_xlatb10.z;
        if (x_2236) {
          let x_2241 : f32 = u_xlat35.z;
          x_2237 = x_2241;
        } else {
          let x_2244 : f32 = u_xlat11.x;
          x_2237 = x_2244;
        }
        let x_2245 : f32 = x_2237;
        u_xlat60 = x_2245;
        let x_2247 : bool = u_xlatb10.x;
        if (x_2247) {
          let x_2252 : f32 = u_xlat35.x;
          x_2248 = x_2252;
        } else {
          let x_2254 : f32 = u_xlat60;
          x_2248 = x_2254;
        }
        let x_2255 : f32 = x_2248;
        u_xlat10.x = x_2255;
        let x_2257 : i32 = u_xlati80;
        let x_2259 : f32 = x_111.x_AdditionalShadowParams[x_2257].w;
        u_xlat35.x = trunc(x_2259);
        let x_2263 : f32 = u_xlat10.x;
        let x_2265 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2263 + x_2265);
        let x_2269 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2269);
      }
      let x_2271 : i32 = u_xlati84;
      u_xlati84 = (x_2271 << bitcast<u32>(2i));
      let x_2273 : vec3<f32> = vs_TEXCOORD7;
      let x_2276 : i32 = u_xlati84;
      let x_2279 : i32 = u_xlati84;
      let x_2283 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2276 + 1i) / 4i)][((x_2279 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2273.y, x_2273.y, x_2273.y, x_2273.y) * x_2283);
      let x_2285 : i32 = u_xlati84;
      let x_2287 : i32 = u_xlati84;
      let x_2290 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[(x_2285 / 4i)][(x_2287 % 4i)];
      let x_2291 : vec3<f32> = vs_TEXCOORD7;
      let x_2294 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2290 * vec4<f32>(x_2291.x, x_2291.x, x_2291.x, x_2291.x)) + x_2294);
      let x_2296 : i32 = u_xlati84;
      let x_2299 : i32 = u_xlati84;
      let x_2303 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2296 + 2i) / 4i)][((x_2299 + 2i) % 4i)];
      let x_2304 : vec3<f32> = vs_TEXCOORD7;
      let x_2307 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2303 * vec4<f32>(x_2304.z, x_2304.z, x_2304.z, x_2304.z)) + x_2307);
      let x_2309 : vec4<f32> = u_xlat10;
      let x_2310 : i32 = u_xlati84;
      let x_2313 : i32 = u_xlati84;
      let x_2317 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2310 + 3i) / 4i)][((x_2313 + 3i) % 4i)];
      u_xlat10 = (x_2309 + x_2317);
      let x_2319 : vec4<f32> = u_xlat10;
      let x_2321 : vec4<f32> = u_xlat10;
      let x_2323 : vec3<f32> = (vec3<f32>(x_2319.x, x_2319.y, x_2319.z) / vec3<f32>(x_2321.w, x_2321.w, x_2321.w));
      let x_2324 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
      let x_2327 : i32 = u_xlati80;
      let x_2329 : f32 = x_111.x_AdditionalShadowParams[x_2327].y;
      u_xlatb84 = (0.0f < x_2329);
      let x_2331 : bool = u_xlatb84;
      if (x_2331) {
        let x_2334 : i32 = u_xlati80;
        let x_2336 : f32 = x_111.x_AdditionalShadowParams[x_2334].y;
        u_xlatb84 = (1.0f == x_2336);
        let x_2338 : bool = u_xlatb84;
        if (x_2338) {
          let x_2341 : vec4<f32> = u_xlat10;
          let x_2345 : vec4<f32> = x_111.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y) + x_2345);
          let x_2348 : vec4<f32> = u_xlat11;
          let x_2349 : vec2<f32> = vec2<f32>(x_2348.x, x_2348.y);
          let x_2351 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
          let x_2359 : vec3<f32> = txVec30;
          let x_2361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2359.xy, x_2359.z);
          u_xlat12.x = x_2361;
          let x_2364 : vec4<f32> = u_xlat11;
          let x_2365 : vec2<f32> = vec2<f32>(x_2364.z, x_2364.w);
          let x_2367 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2365.x, x_2365.y, x_2367);
          let x_2374 : vec3<f32> = txVec31;
          let x_2376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2374.xy, x_2374.z);
          u_xlat12.y = x_2376;
          let x_2378 : vec4<f32> = u_xlat10;
          let x_2382 : vec4<f32> = x_111.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2378.x, x_2378.y, x_2378.x, x_2378.y) + x_2382);
          let x_2385 : vec4<f32> = u_xlat11;
          let x_2386 : vec2<f32> = vec2<f32>(x_2385.x, x_2385.y);
          let x_2388 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2386.x, x_2386.y, x_2388);
          let x_2395 : vec3<f32> = txVec32;
          let x_2397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2395.xy, x_2395.z);
          u_xlat12.z = x_2397;
          let x_2400 : vec4<f32> = u_xlat11;
          let x_2401 : vec2<f32> = vec2<f32>(x_2400.z, x_2400.w);
          let x_2403 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2401.x, x_2401.y, x_2403);
          let x_2410 : vec3<f32> = txVec33;
          let x_2412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2410.xy, x_2410.z);
          u_xlat12.w = x_2412;
          let x_2414 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2414, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2418 : i32 = u_xlati80;
          let x_2420 : f32 = x_111.x_AdditionalShadowParams[x_2418].y;
          u_xlatb85 = (2.0f == x_2420);
          let x_2422 : bool = u_xlatb85;
          if (x_2422) {
            let x_2425 : vec4<f32> = u_xlat10;
            let x_2429 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2432 : vec2<f32> = ((vec2<f32>(x_2425.x, x_2425.y) * vec2<f32>(x_2429.z, x_2429.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2433 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2432.x, x_2432.y, x_2433.z, x_2433.w);
            let x_2435 : vec4<f32> = u_xlat11;
            let x_2437 : vec2<f32> = floor(vec2<f32>(x_2435.x, x_2435.y));
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2441 : vec4<f32> = u_xlat10;
            let x_2444 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2447 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(x_2444.z, x_2444.w)) + -(vec2<f32>(x_2447.x, x_2447.y)));
            let x_2451 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2451.x, x_2451.x, x_2451.y, x_2451.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2454 : vec4<f32> = u_xlat12;
            let x_2456 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2454.x, x_2454.x, x_2454.z, x_2454.z) * vec4<f32>(x_2456.x, x_2456.x, x_2456.z, x_2456.z));
            let x_2459 : vec4<f32> = u_xlat13;
            let x_2461 : vec2<f32> = (vec2<f32>(x_2459.y, x_2459.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2462 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2461.x, x_2462.y, x_2461.y, x_2462.w);
            let x_2464 : vec4<f32> = u_xlat13;
            let x_2467 : vec2<f32> = u_xlat61;
            let x_2469 : vec2<f32> = ((vec2<f32>(x_2464.x, x_2464.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2467));
            let x_2470 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2473 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2473) + vec2<f32>(1.0f, 1.0f));
            let x_2476 : vec2<f32> = u_xlat61;
            let x_2477 : vec2<f32> = min(x_2476, vec2<f32>(0.0f, 0.0f));
            let x_2478 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
            let x_2480 : vec4<f32> = u_xlat14;
            let x_2483 : vec4<f32> = u_xlat14;
            let x_2486 : vec2<f32> = u_xlat63;
            let x_2487 : vec2<f32> = ((-(vec2<f32>(x_2480.x, x_2480.y)) * vec2<f32>(x_2483.x, x_2483.y)) + x_2486);
            let x_2488 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2490, vec2<f32>(0.0f, 0.0f));
            let x_2492 : vec2<f32> = u_xlat61;
            let x_2494 : vec2<f32> = u_xlat61;
            let x_2496 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2492) * x_2494) + vec2<f32>(x_2496.y, x_2496.w));
            let x_2499 : vec4<f32> = u_xlat14;
            let x_2501 : vec2<f32> = (vec2<f32>(x_2499.x, x_2499.y) + vec2<f32>(1.0f, 1.0f));
            let x_2502 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
            let x_2504 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2504 + vec2<f32>(1.0f, 1.0f));
            let x_2506 : vec4<f32> = u_xlat13;
            let x_2508 : vec2<f32> = (vec2<f32>(x_2506.x, x_2506.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
            let x_2511 : vec2<f32> = u_xlat63;
            let x_2512 : vec2<f32> = (x_2511 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2513 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2512.x, x_2512.y, x_2513.z, x_2513.w);
            let x_2515 : vec4<f32> = u_xlat14;
            let x_2517 : vec2<f32> = (vec2<f32>(x_2515.x, x_2515.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2518 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2517.x, x_2517.y, x_2518.z, x_2518.w);
            let x_2520 : vec2<f32> = u_xlat61;
            let x_2521 : vec2<f32> = (x_2520 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2522 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2524 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2524.y, x_2524.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2528 : f32 = u_xlat14.x;
            u_xlat15.z = x_2528;
            let x_2531 : f32 = u_xlat61.x;
            u_xlat15.w = x_2531;
            let x_2534 : f32 = u_xlat16.x;
            u_xlat13.z = x_2534;
            let x_2537 : f32 = u_xlat12.x;
            u_xlat13.w = x_2537;
            let x_2539 : vec4<f32> = u_xlat13;
            let x_2541 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2539.z, x_2539.w, x_2539.x, x_2539.z) + vec4<f32>(x_2541.z, x_2541.w, x_2541.x, x_2541.z));
            let x_2545 : f32 = u_xlat15.y;
            u_xlat14.z = x_2545;
            let x_2548 : f32 = u_xlat61.y;
            u_xlat14.w = x_2548;
            let x_2551 : f32 = u_xlat13.y;
            u_xlat16.z = x_2551;
            let x_2554 : f32 = u_xlat12.z;
            u_xlat16.w = x_2554;
            let x_2556 : vec4<f32> = u_xlat14;
            let x_2558 : vec4<f32> = u_xlat16;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2556.z, x_2556.y, x_2556.w) + vec3<f32>(x_2558.z, x_2558.y, x_2558.w));
            let x_2561 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat13;
            let x_2565 : vec4<f32> = u_xlat17;
            let x_2567 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.z, x_2563.w) / vec3<f32>(x_2565.z, x_2565.w, x_2565.y));
            let x_2568 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
            let x_2570 : vec4<f32> = u_xlat13;
            let x_2572 : vec3<f32> = (vec3<f32>(x_2570.x, x_2570.y, x_2570.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2573 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2573.w);
            let x_2575 : vec4<f32> = u_xlat16;
            let x_2577 : vec4<f32> = u_xlat12;
            let x_2579 : vec3<f32> = (vec3<f32>(x_2575.z, x_2575.y, x_2575.w) / vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
            let x_2580 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
            let x_2582 : vec4<f32> = u_xlat14;
            let x_2584 : vec3<f32> = (vec3<f32>(x_2582.x, x_2582.y, x_2582.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2585 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2584.x, x_2584.y, x_2584.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat13;
            let x_2590 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2592 : vec3<f32> = (vec3<f32>(x_2587.y, x_2587.x, x_2587.z) * vec3<f32>(x_2590.x, x_2590.x, x_2590.x));
            let x_2593 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
            let x_2595 : vec4<f32> = u_xlat14;
            let x_2598 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2600 : vec3<f32> = (vec3<f32>(x_2595.x, x_2595.y, x_2595.z) * vec3<f32>(x_2598.y, x_2598.y, x_2598.y));
            let x_2601 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
            let x_2604 : f32 = u_xlat14.x;
            u_xlat13.w = x_2604;
            let x_2606 : vec4<f32> = u_xlat11;
            let x_2609 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2612 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2606.x, x_2606.y, x_2606.x, x_2606.y) * vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y)) + vec4<f32>(x_2612.y, x_2612.w, x_2612.x, x_2612.w));
            let x_2615 : vec4<f32> = u_xlat11;
            let x_2618 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2621 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2615.x, x_2615.y) * vec2<f32>(x_2618.x, x_2618.y)) + vec2<f32>(x_2621.z, x_2621.w));
            let x_2625 : f32 = u_xlat13.y;
            u_xlat14.w = x_2625;
            let x_2627 : vec4<f32> = u_xlat14;
            let x_2628 : vec2<f32> = vec2<f32>(x_2627.y, x_2627.z);
            let x_2629 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2629.x, x_2628.x, x_2629.z, x_2628.y);
            let x_2631 : vec4<f32> = u_xlat11;
            let x_2634 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2637 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.y) * vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.y)) + vec4<f32>(x_2637.x, x_2637.y, x_2637.z, x_2637.y));
            let x_2640 : vec4<f32> = u_xlat11;
            let x_2643 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2646 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y) * vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y)) + vec4<f32>(x_2646.w, x_2646.y, x_2646.w, x_2646.z));
            let x_2649 : vec4<f32> = u_xlat11;
            let x_2652 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2655 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2649.x, x_2649.y, x_2649.x, x_2649.y) * vec4<f32>(x_2652.x, x_2652.y, x_2652.x, x_2652.y)) + vec4<f32>(x_2655.x, x_2655.w, x_2655.z, x_2655.w));
            let x_2658 : vec4<f32> = u_xlat12;
            let x_2660 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2658.x, x_2658.x, x_2658.x, x_2658.y) * vec4<f32>(x_2660.z, x_2660.w, x_2660.y, x_2660.z));
            let x_2663 : vec4<f32> = u_xlat12;
            let x_2665 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2663.y, x_2663.y, x_2663.z, x_2663.z) * x_2665);
            let x_2669 : f32 = u_xlat12.z;
            let x_2671 : f32 = u_xlat17.y;
            u_xlat85 = (x_2669 * x_2671);
            let x_2674 : vec4<f32> = u_xlat15;
            let x_2675 : vec2<f32> = vec2<f32>(x_2674.x, x_2674.y);
            let x_2677 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
            let x_2684 : vec3<f32> = txVec34;
            let x_2686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
            u_xlat11.x = x_2686;
            let x_2689 : vec4<f32> = u_xlat15;
            let x_2690 : vec2<f32> = vec2<f32>(x_2689.z, x_2689.w);
            let x_2692 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2690.x, x_2690.y, x_2692);
            let x_2700 : vec3<f32> = txVec35;
            let x_2702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2700.xy, x_2700.z);
            u_xlat36 = x_2702;
            let x_2703 : f32 = u_xlat36;
            let x_2705 : f32 = u_xlat18.y;
            u_xlat36 = (x_2703 * x_2705);
            let x_2708 : f32 = u_xlat18.x;
            let x_2710 : f32 = u_xlat11.x;
            let x_2712 : f32 = u_xlat36;
            u_xlat11.x = ((x_2708 * x_2710) + x_2712);
            let x_2716 : vec2<f32> = u_xlat61;
            let x_2718 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2716.x, x_2716.y, x_2718);
            let x_2725 : vec3<f32> = txVec36;
            let x_2727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2725.xy, x_2725.z);
            u_xlat36 = x_2727;
            let x_2729 : f32 = u_xlat18.z;
            let x_2730 : f32 = u_xlat36;
            let x_2733 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2729 * x_2730) + x_2733);
            let x_2737 : vec4<f32> = u_xlat14;
            let x_2738 : vec2<f32> = vec2<f32>(x_2737.x, x_2737.y);
            let x_2740 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
            let x_2747 : vec3<f32> = txVec37;
            let x_2749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
            u_xlat36 = x_2749;
            let x_2751 : f32 = u_xlat18.w;
            let x_2752 : f32 = u_xlat36;
            let x_2755 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2751 * x_2752) + x_2755);
            let x_2759 : vec4<f32> = u_xlat16;
            let x_2760 : vec2<f32> = vec2<f32>(x_2759.x, x_2759.y);
            let x_2762 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2760.x, x_2760.y, x_2762);
            let x_2769 : vec3<f32> = txVec38;
            let x_2771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2769.xy, x_2769.z);
            u_xlat36 = x_2771;
            let x_2773 : f32 = u_xlat19.x;
            let x_2774 : f32 = u_xlat36;
            let x_2777 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2773 * x_2774) + x_2777);
            let x_2781 : vec4<f32> = u_xlat16;
            let x_2782 : vec2<f32> = vec2<f32>(x_2781.z, x_2781.w);
            let x_2784 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2782.x, x_2782.y, x_2784);
            let x_2791 : vec3<f32> = txVec39;
            let x_2793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2791.xy, x_2791.z);
            u_xlat36 = x_2793;
            let x_2795 : f32 = u_xlat19.y;
            let x_2796 : f32 = u_xlat36;
            let x_2799 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2795 * x_2796) + x_2799);
            let x_2803 : vec4<f32> = u_xlat14;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.z, x_2803.w);
            let x_2806 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec40;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat36 = x_2815;
            let x_2817 : f32 = u_xlat19.z;
            let x_2818 : f32 = u_xlat36;
            let x_2821 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2817 * x_2818) + x_2821);
            let x_2825 : vec4<f32> = u_xlat13;
            let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
            let x_2828 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
            let x_2835 : vec3<f32> = txVec41;
            let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
            u_xlat36 = x_2837;
            let x_2839 : f32 = u_xlat19.w;
            let x_2840 : f32 = u_xlat36;
            let x_2843 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2839 * x_2840) + x_2843);
            let x_2847 : vec4<f32> = u_xlat13;
            let x_2848 : vec2<f32> = vec2<f32>(x_2847.z, x_2847.w);
            let x_2850 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2848.x, x_2848.y, x_2850);
            let x_2857 : vec3<f32> = txVec42;
            let x_2859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2857.xy, x_2857.z);
            u_xlat36 = x_2859;
            let x_2860 : f32 = u_xlat85;
            let x_2861 : f32 = u_xlat36;
            let x_2864 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2860 * x_2861) + x_2864);
          } else {
            let x_2867 : vec4<f32> = u_xlat10;
            let x_2870 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2873 : vec2<f32> = ((vec2<f32>(x_2867.x, x_2867.y) * vec2<f32>(x_2870.z, x_2870.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2874 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2873.x, x_2873.y, x_2874.z, x_2874.w);
            let x_2876 : vec4<f32> = u_xlat11;
            let x_2878 : vec2<f32> = floor(vec2<f32>(x_2876.x, x_2876.y));
            let x_2879 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2878.x, x_2878.y, x_2879.z, x_2879.w);
            let x_2881 : vec4<f32> = u_xlat10;
            let x_2884 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2887 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2881.x, x_2881.y) * vec2<f32>(x_2884.z, x_2884.w)) + -(vec2<f32>(x_2887.x, x_2887.y)));
            let x_2891 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2891.x, x_2891.x, x_2891.y, x_2891.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2894 : vec4<f32> = u_xlat12;
            let x_2896 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2894.x, x_2894.x, x_2894.z, x_2894.z) * vec4<f32>(x_2896.x, x_2896.x, x_2896.z, x_2896.z));
            let x_2899 : vec4<f32> = u_xlat13;
            let x_2901 : vec2<f32> = (vec2<f32>(x_2899.y, x_2899.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2902 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2902.x, x_2901.x, x_2902.z, x_2901.y);
            let x_2904 : vec4<f32> = u_xlat13;
            let x_2907 : vec2<f32> = u_xlat61;
            let x_2909 : vec2<f32> = ((vec2<f32>(x_2904.x, x_2904.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2907));
            let x_2910 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2909.x, x_2910.y, x_2909.y, x_2910.w);
            let x_2912 : vec2<f32> = u_xlat61;
            let x_2914 : vec2<f32> = (-(x_2912) + vec2<f32>(1.0f, 1.0f));
            let x_2915 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
            let x_2917 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2917, vec2<f32>(0.0f, 0.0f));
            let x_2919 : vec2<f32> = u_xlat63;
            let x_2921 : vec2<f32> = u_xlat63;
            let x_2923 : vec4<f32> = u_xlat13;
            let x_2925 : vec2<f32> = ((-(x_2919) * x_2921) + vec2<f32>(x_2923.x, x_2923.y));
            let x_2926 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2925.x, x_2925.y, x_2926.z, x_2926.w);
            let x_2928 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2928, vec2<f32>(0.0f, 0.0f));
            let x_2931 : vec2<f32> = u_xlat63;
            let x_2933 : vec2<f32> = u_xlat63;
            let x_2935 : vec4<f32> = u_xlat12;
            let x_2937 : vec2<f32> = ((-(x_2931) * x_2933) + vec2<f32>(x_2935.y, x_2935.w));
            let x_2938 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2937.x, x_2938.y, x_2937.y);
            let x_2940 : vec4<f32> = u_xlat13;
            let x_2943 : vec2<f32> = (vec2<f32>(x_2940.x, x_2940.y) + vec2<f32>(2.0f, 2.0f));
            let x_2944 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec3<f32> = u_xlat37;
            let x_2948 : vec2<f32> = (vec2<f32>(x_2946.x, x_2946.z) + vec2<f32>(2.0f, 2.0f));
            let x_2949 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2949.x, x_2948.x, x_2949.z, x_2948.y);
            let x_2952 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2952 * 0.08163200318813323975f);
            let x_2955 : vec4<f32> = u_xlat12;
            let x_2958 : vec3<f32> = (vec3<f32>(x_2955.z, x_2955.x, x_2955.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2959 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2958.x, x_2958.y, x_2958.z, x_2959.w);
            let x_2961 : vec4<f32> = u_xlat13;
            let x_2963 : vec2<f32> = (vec2<f32>(x_2961.x, x_2961.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2964 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2963.x, x_2963.y, x_2964.z, x_2964.w);
            let x_2967 : f32 = u_xlat16.y;
            u_xlat15.x = x_2967;
            let x_2969 : vec2<f32> = u_xlat61;
            let x_2972 : vec2<f32> = ((vec2<f32>(x_2969.x, x_2969.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2973 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2973.x, x_2972.x, x_2973.z, x_2972.y);
            let x_2975 : vec2<f32> = u_xlat61;
            let x_2978 : vec2<f32> = ((vec2<f32>(x_2975.x, x_2975.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2978.x, x_2979.y, x_2978.y, x_2979.w);
            let x_2982 : f32 = u_xlat12.x;
            u_xlat13.y = x_2982;
            let x_2985 : f32 = u_xlat14.y;
            u_xlat13.w = x_2985;
            let x_2987 : vec4<f32> = u_xlat13;
            let x_2988 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2987 + x_2988);
            let x_2990 : vec2<f32> = u_xlat61;
            let x_2993 : vec2<f32> = ((vec2<f32>(x_2990.y, x_2990.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2994 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2994.x, x_2993.x, x_2994.z, x_2993.y);
            let x_2996 : vec2<f32> = u_xlat61;
            let x_2999 : vec2<f32> = ((vec2<f32>(x_2996.y, x_2996.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3000 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2999.x, x_3000.y, x_2999.y, x_3000.w);
            let x_3003 : f32 = u_xlat12.y;
            u_xlat14.y = x_3003;
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3006 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3005 + x_3006);
            let x_3008 : vec4<f32> = u_xlat13;
            let x_3009 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3008 / x_3009);
            let x_3011 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3011 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3013 : vec4<f32> = u_xlat14;
            let x_3014 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3013 / x_3014);
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3016 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3021 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3018.w, x_3018.x, x_3018.y, x_3018.z) * vec4<f32>(x_3021.x, x_3021.x, x_3021.x, x_3021.x));
            let x_3024 : vec4<f32> = u_xlat14;
            let x_3027 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3024.x, x_3024.w, x_3024.y, x_3024.z) * vec4<f32>(x_3027.y, x_3027.y, x_3027.y, x_3027.y));
            let x_3030 : vec4<f32> = u_xlat13;
            let x_3031 : vec3<f32> = vec3<f32>(x_3030.y, x_3030.z, x_3030.w);
            let x_3032 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3031.x, x_3032.y, x_3031.y, x_3031.z);
            let x_3035 : f32 = u_xlat14.x;
            u_xlat16.y = x_3035;
            let x_3037 : vec4<f32> = u_xlat11;
            let x_3040 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3043.y));
            let x_3046 : vec4<f32> = u_xlat11;
            let x_3049 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.x, x_3049.y)) + vec2<f32>(x_3052.w, x_3052.y));
            let x_3056 : f32 = u_xlat16.y;
            u_xlat13.y = x_3056;
            let x_3059 : f32 = u_xlat14.z;
            u_xlat16.y = x_3059;
            let x_3061 : vec4<f32> = u_xlat11;
            let x_3064 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y) * vec4<f32>(x_3064.x, x_3064.y, x_3064.x, x_3064.y)) + vec4<f32>(x_3067.x, x_3067.y, x_3067.z, x_3067.y));
            let x_3070 : vec4<f32> = u_xlat11;
            let x_3073 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3076 : vec4<f32> = u_xlat16;
            let x_3078 : vec2<f32> = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3073.x, x_3073.y)) + vec2<f32>(x_3076.w, x_3076.y));
            let x_3079 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3078.x, x_3078.y, x_3079.z, x_3079.w);
            let x_3082 : f32 = u_xlat16.y;
            u_xlat13.z = x_3082;
            let x_3085 : vec4<f32> = u_xlat11;
            let x_3088 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y) * vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y)) + vec4<f32>(x_3091.x, x_3091.y, x_3091.x, x_3091.z));
            let x_3095 : f32 = u_xlat14.w;
            u_xlat16.y = x_3095;
            let x_3098 : vec4<f32> = u_xlat11;
            let x_3101 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3104 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3098.x, x_3098.y, x_3098.x, x_3098.y) * vec4<f32>(x_3101.x, x_3101.y, x_3101.x, x_3101.y)) + vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3104.y));
            let x_3108 : vec4<f32> = u_xlat11;
            let x_3111 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3114 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3108.x, x_3108.y) * vec2<f32>(x_3111.x, x_3111.y)) + vec2<f32>(x_3114.w, x_3114.y));
            let x_3118 : f32 = u_xlat16.y;
            u_xlat13.w = x_3118;
            let x_3121 : vec4<f32> = u_xlat11;
            let x_3124 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3127 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(x_3124.x, x_3124.y)) + vec2<f32>(x_3127.x, x_3127.w));
            let x_3130 : vec4<f32> = u_xlat16;
            let x_3131 : vec3<f32> = vec3<f32>(x_3130.x, x_3130.z, x_3130.w);
            let x_3132 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3131.x, x_3132.y, x_3131.y, x_3131.z);
            let x_3134 : vec4<f32> = u_xlat11;
            let x_3137 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3140 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3134.x, x_3134.y, x_3134.x, x_3134.y) * vec4<f32>(x_3137.x, x_3137.y, x_3137.x, x_3137.y)) + vec4<f32>(x_3140.x, x_3140.y, x_3140.z, x_3140.y));
            let x_3144 : vec4<f32> = u_xlat11;
            let x_3147 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3144.x, x_3144.y) * vec2<f32>(x_3147.x, x_3147.y)) + vec2<f32>(x_3150.w, x_3150.y));
            let x_3154 : f32 = u_xlat13.x;
            u_xlat14.x = x_3154;
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
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
      let x_3549 : f32 = x_111.x_AdditionalShadowParams[x_3547].x;
      u_xlat10.x = (1.0f + -(x_3549));
      let x_3553 : f32 = u_xlat84;
      let x_3554 : i32 = u_xlati80;
      let x_3556 : f32 = x_111.x_AdditionalShadowParams[x_3554].x;
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
    let x_3583 : f32 = u_xlat51;
    let x_3585 : f32 = u_xlat10.x;
    let x_3587 : f32 = u_xlat84;
    u_xlat84 = ((x_3583 * x_3585) + x_3587);
    let x_3589 : f32 = u_xlat81;
    let x_3590 : f32 = u_xlat84;
    u_xlat81 = (x_3589 * x_3590);
    let x_3592 : vec4<f32> = u_xlat2;
    let x_3594 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3592.x, x_3592.y, x_3592.z), vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
    let x_3597 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3597, 0.0f, 1.0f);
    let x_3599 : f32 = u_xlat81;
    let x_3600 : f32 = u_xlat84;
    u_xlat81 = (x_3599 * x_3600);
    let x_3602 : f32 = u_xlat81;
    let x_3604 : i32 = u_xlati80;
    let x_3606 : vec4<f32> = x_2095.x_AdditionalLightsColor[x_3604];
    let x_3608 : vec3<f32> = (vec3<f32>(x_3602, x_3602, x_3602) * vec3<f32>(x_3606.x, x_3606.y, x_3606.z));
    let x_3609 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3608.x, x_3608.y, x_3608.z, x_3609.w);
    let x_3611 : vec4<f32> = u_xlat8;
    let x_3613 : f32 = u_xlat83;
    let x_3616 : vec4<f32> = u_xlat5;
    let x_3618 : vec3<f32> = ((vec3<f32>(x_3611.x, x_3611.y, x_3611.z) * vec3<f32>(x_3613, x_3613, x_3613)) + vec3<f32>(x_3616.x, x_3616.y, x_3616.z));
    let x_3619 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3618.x, x_3618.y, x_3618.z, x_3619.w);
    let x_3621 : vec4<f32> = u_xlat8;
    let x_3623 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3621.x, x_3621.y, x_3621.z), vec3<f32>(x_3623.x, x_3623.y, x_3623.z));
    let x_3626 : f32 = u_xlat80;
    u_xlat80 = max(x_3626, 1.17549435e-38f);
    let x_3628 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3628);
    let x_3630 : f32 = u_xlat80;
    let x_3632 : vec4<f32> = u_xlat8;
    let x_3634 : vec3<f32> = (vec3<f32>(x_3630, x_3630, x_3630) * vec3<f32>(x_3632.x, x_3632.y, x_3632.z));
    let x_3635 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3634.x, x_3634.y, x_3634.z, x_3635.w);
    let x_3637 : vec4<f32> = u_xlat2;
    let x_3639 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3637.x, x_3637.y, x_3637.z), vec3<f32>(x_3639.x, x_3639.y, x_3639.z));
    let x_3642 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3642, 0.0f, 1.0f);
    let x_3644 : vec4<f32> = u_xlat9;
    let x_3646 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3644.x, x_3644.y, x_3644.z), vec3<f32>(x_3646.x, x_3646.y, x_3646.z));
    let x_3649 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3649, 0.0f, 1.0f);
    let x_3651 : f32 = u_xlat80;
    let x_3652 : f32 = u_xlat80;
    u_xlat80 = (x_3651 * x_3652);
    let x_3654 : f32 = u_xlat80;
    let x_3656 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3654 * x_3656) + 1.00001001358032226562f);
    let x_3659 : f32 = u_xlat81;
    let x_3660 : f32 = u_xlat81;
    u_xlat81 = (x_3659 * x_3660);
    let x_3662 : f32 = u_xlat80;
    let x_3663 : f32 = u_xlat80;
    u_xlat80 = (x_3662 * x_3663);
    let x_3665 : f32 = u_xlat81;
    u_xlat81 = max(x_3665, 0.10000000149011611938f);
    let x_3667 : f32 = u_xlat80;
    let x_3668 : f32 = u_xlat81;
    u_xlat80 = (x_3667 * x_3668);
    let x_3670 : f32 = u_xlat78;
    let x_3671 : f32 = u_xlat80;
    u_xlat80 = (x_3670 * x_3671);
    let x_3673 : f32 = u_xlat79;
    let x_3674 : f32 = u_xlat80;
    u_xlat80 = (x_3673 / x_3674);
    let x_3676 : vec4<f32> = u_xlat0;
    let x_3678 : f32 = u_xlat80;
    let x_3681 : vec4<f32> = u_xlat4;
    let x_3683 : vec3<f32> = ((vec3<f32>(x_3676.x, x_3676.y, x_3676.z) * vec3<f32>(x_3678, x_3678, x_3678)) + vec3<f32>(x_3681.x, x_3681.y, x_3681.z));
    let x_3684 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3684.w);
    let x_3686 : vec4<f32> = u_xlat8;
    let x_3688 : vec4<f32> = u_xlat10;
    let x_3691 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3686.x, x_3686.y, x_3686.z) * vec3<f32>(x_3688.x, x_3688.y, x_3688.z)) + x_3691);

    continuing {
      let x_3693 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3693 + bitcast<u32>(1i));
    }
  }
  let x_3695 : vec4<f32> = u_xlat6;
  let x_3697 : vec4<f32> = u_xlat1;
  let x_3700 : vec3<f32> = u_xlat3;
  let x_3701 : vec3<f32> = ((vec3<f32>(x_3695.x, x_3695.y, x_3695.z) * vec3<f32>(x_3697.x, x_3697.y, x_3697.w)) + x_3700);
  let x_3702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3701.x, x_3701.y, x_3701.z, x_3702.w);
  let x_3706 : vec3<f32> = u_xlat32;
  let x_3707 : vec4<f32> = u_xlat0;
  let x_3709 : vec3<f32> = (x_3706 + vec3<f32>(x_3707.x, x_3707.y, x_3707.z));
  let x_3710 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3710.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


