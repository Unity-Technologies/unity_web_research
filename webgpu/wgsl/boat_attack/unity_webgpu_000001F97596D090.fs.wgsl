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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlatb30 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb55 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb76 : bool;

var<private> u_xlat51 : f32;

var<private> u_xlat76 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2148 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

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

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb81 : bool;

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
  var x_1785 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2296 : f32;
  var x_2307 : f32;
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
  var x_3639 : f32;
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
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  let x_85 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_90 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_90);
  let x_94 : vec3<f32> = u_xlat26;
  let x_96 : vec4<f32> = vs_TEXCOORD3;
  let x_98 : vec3<f32> = (vec3<f32>(x_94.x, x_94.x, x_94.x) * vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_103 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres0;
  u_xlat26 = (x_103 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
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
  let x_291 : f32 = vs_TEXCOORD7.y;
  let x_294 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_291 * x_294);
  let x_298 : f32 = x_29.unity_MatrixV[0i].z;
  let x_300 : f32 = vs_TEXCOORD7.x;
  let x_303 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_298 * x_300) + x_303);
  let x_307 : f32 = x_29.unity_MatrixV[2i].z;
  let x_309 : f32 = vs_TEXCOORD7.z;
  let x_312 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_307 * x_309) + x_312);
  let x_316 : f32 = u_xlat3.x;
  let x_318 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_316 + x_318);
  let x_322 : f32 = u_xlat3.x;
  let x_325 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_322) + -(x_325));
  let x_330 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_330, 0.0f);
  let x_334 : f32 = u_xlat3.x;
  let x_337 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_334 * x_337);
  u_xlat2.w = 1.0f;
  let x_347 : vec4<f32> = x_344.unity_SHAr;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_347, x_348);
  let x_353 : vec4<f32> = x_344.unity_SHAg;
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_353, x_354);
  let x_359 : vec4<f32> = x_344.unity_SHAb;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_359, x_360);
  let x_363 : vec4<f32> = u_xlat2;
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_363.y, x_363.z, x_363.z, x_363.x) * vec4<f32>(x_365.x, x_365.y, x_365.z, x_365.z));
  let x_370 : vec4<f32> = x_344.unity_SHBr;
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_344.unity_SHBg;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_344.unity_SHBb;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_382, x_383);
  let x_388 : f32 = u_xlat2.y;
  let x_390 : f32 = u_xlat2.y;
  u_xlat77 = (x_388 * x_390);
  let x_393 : f32 = u_xlat2.x;
  let x_395 : f32 = u_xlat2.x;
  let x_397 : f32 = u_xlat77;
  u_xlat77 = ((x_393 * x_395) + -(x_397));
  let x_403 : vec4<f32> = x_344.unity_SHC;
  let x_405 : f32 = u_xlat77;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat28 = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405, x_405, x_405)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat28;
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat28 = (x_411 + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec3<f32> = u_xlat28;
  u_xlat28 = max(x_415, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : f32 = u_xlat1.x;
  u_xlat77 = ((-(x_418) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_423 : f32 = u_xlat77;
  u_xlat4.x = (-(x_423) + 1.0f);
  let x_428 : vec4<f32> = u_xlat0;
  let x_430 : f32 = u_xlat77;
  u_xlat29 = (vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430));
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.x, x_440.x) * vec3<f32>(x_442.x, x_442.y, x_442.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_451) + 1.0f);
  let x_456 : f32 = u_xlat1.x;
  let x_458 : f32 = u_xlat1.x;
  u_xlat77 = (x_456 * x_458);
  let x_460 : f32 = u_xlat77;
  u_xlat77 = max(x_460, 0.0078125f);
  let x_463 : f32 = u_xlat77;
  let x_464 : f32 = u_xlat77;
  u_xlat5.x = (x_463 * x_464);
  let x_469 : f32 = u_xlat0.w;
  let x_471 : f32 = u_xlat4.x;
  u_xlat75 = (x_469 + x_471);
  let x_473 : f32 = u_xlat75;
  u_xlat75 = clamp(x_473, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat77;
  u_xlat4.x = ((x_475 * 4.0f) + 2.0f);
  let x_481 : f32 = x_111.x_MainLightShadowParams.y;
  u_xlatb30 = (0.0f < x_481);
  let x_483 : bool = u_xlatb30;
  if (x_483) {
    let x_487 : f32 = x_111.x_MainLightShadowParams.y;
    u_xlatb30 = (x_487 == 1.0f);
    let x_489 : bool = u_xlatb30;
    if (x_489) {
      let x_492 : vec3<f32> = u_xlat26;
      let x_495 : vec4<f32> = x_111.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_492.x, x_492.y, x_492.x, x_492.y) + x_495);
      let x_499 : vec4<f32> = u_xlat6;
      let x_500 : vec2<f32> = vec2<f32>(x_499.x, x_499.y);
      let x_502 : f32 = u_xlat26.z;
      txVec0 = vec3<f32>(x_500.x, x_500.y, x_502);
      let x_515 : vec3<f32> = txVec0;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_515.xy, x_515.z);
      u_xlat7.x = x_517;
      let x_520 : vec4<f32> = u_xlat6;
      let x_521 : vec2<f32> = vec2<f32>(x_520.z, x_520.w);
      let x_523 : f32 = u_xlat26.z;
      txVec1 = vec3<f32>(x_521.x, x_521.y, x_523);
      let x_530 : vec3<f32> = txVec1;
      let x_532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_530.xy, x_530.z);
      u_xlat7.y = x_532;
      let x_534 : vec3<f32> = u_xlat26;
      let x_538 : vec4<f32> = x_111.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_534.x, x_534.y, x_534.x, x_534.y) + x_538);
      let x_541 : vec4<f32> = u_xlat6;
      let x_542 : vec2<f32> = vec2<f32>(x_541.x, x_541.y);
      let x_544 : f32 = u_xlat26.z;
      txVec2 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec2;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
      u_xlat7.z = x_553;
      let x_556 : vec4<f32> = u_xlat6;
      let x_557 : vec2<f32> = vec2<f32>(x_556.z, x_556.w);
      let x_559 : f32 = u_xlat26.z;
      txVec3 = vec3<f32>(x_557.x, x_557.y, x_559);
      let x_566 : vec3<f32> = txVec3;
      let x_568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_566.xy, x_566.z);
      u_xlat7.w = x_568;
      let x_571 : vec4<f32> = u_xlat7;
      u_xlat30.x = dot(x_571, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_579 : f32 = x_111.x_MainLightShadowParams.y;
      u_xlatb55 = (x_579 == 2.0f);
      let x_581 : bool = u_xlatb55;
      if (x_581) {
        let x_586 : vec3<f32> = u_xlat26;
        let x_590 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_590.z, x_590.w)) + vec2<f32>(0.5f, 0.5f));
        let x_596 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_596);
        let x_598 : vec3<f32> = u_xlat26;
        let x_601 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_604 : vec2<f32> = u_xlat55;
        let x_606 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.y) * vec2<f32>(x_601.z, x_601.w)) + -(x_604));
        let x_607 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_609.x, x_609.x, x_609.y, x_609.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_614 : vec4<f32> = u_xlat7;
        let x_616 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_614.x, x_614.x, x_614.z, x_614.z) * vec4<f32>(x_616.x, x_616.x, x_616.z, x_616.z));
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_620.y, x_620.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_625 : vec4<f32> = u_xlat8;
        let x_628 : vec4<f32> = u_xlat6;
        let x_631 : vec2<f32> = ((vec2<f32>(x_625.x, x_625.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_628.x, x_628.y)));
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_631.x, x_632.y, x_631.y, x_632.w);
        let x_634 : vec4<f32> = u_xlat6;
        let x_638 : vec2<f32> = (-(vec2<f32>(x_634.x, x_634.y)) + vec2<f32>(1.0f, 1.0f));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_642.x, x_642.y), vec2<f32>(0.0f, 0.0f));
        let x_646 : vec2<f32> = u_xlat58;
        let x_648 : vec2<f32> = u_xlat58;
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_646) * x_648) + vec2<f32>(x_650.x, x_650.y));
        let x_653 : vec4<f32> = u_xlat6;
        let x_655 : vec2<f32> = max(vec2<f32>(x_653.x, x_653.y), vec2<f32>(0.0f, 0.0f));
        let x_656 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_658 : vec4<f32> = u_xlat6;
        let x_661 : vec4<f32> = u_xlat6;
        let x_664 : vec4<f32> = u_xlat7;
        let x_666 : vec2<f32> = ((-(vec2<f32>(x_658.x, x_658.y)) * vec2<f32>(x_661.x, x_661.y)) + vec2<f32>(x_664.y, x_664.w));
        let x_667 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_669 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_669 + vec2<f32>(1.0f, 1.0f));
        let x_671 : vec4<f32> = u_xlat6;
        let x_673 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) + vec2<f32>(1.0f, 1.0f));
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec4<f32> = u_xlat7;
        let x_681 : vec2<f32> = (vec2<f32>(x_677.x, x_677.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_682 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_682.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_687 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_688 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_690 : vec2<f32> = u_xlat58;
        let x_691 : vec2<f32> = (x_690 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_692 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_695 : vec4<f32> = u_xlat6;
        let x_697 : vec2<f32> = (vec2<f32>(x_695.x, x_695.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_698 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat7;
        let x_702 : vec2<f32> = (vec2<f32>(x_700.y, x_700.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_706 : f32 = u_xlat8.x;
        u_xlat9.z = x_706;
        let x_709 : f32 = u_xlat6.x;
        u_xlat9.w = x_709;
        let x_712 : f32 = u_xlat11.x;
        u_xlat10.z = x_712;
        let x_715 : f32 = u_xlat56.x;
        u_xlat10.w = x_715;
        let x_717 : vec4<f32> = u_xlat9;
        let x_719 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_717.z, x_717.w, x_717.x, x_717.z) + vec4<f32>(x_719.z, x_719.w, x_719.x, x_719.z));
        let x_723 : f32 = u_xlat9.y;
        u_xlat8.z = x_723;
        let x_726 : f32 = u_xlat6.y;
        u_xlat8.w = x_726;
        let x_729 : f32 = u_xlat10.y;
        u_xlat11.z = x_729;
        let x_732 : f32 = u_xlat56.y;
        u_xlat11.w = x_732;
        let x_734 : vec4<f32> = u_xlat8;
        let x_736 : vec4<f32> = u_xlat11;
        let x_738 : vec3<f32> = (vec3<f32>(x_734.z, x_734.y, x_734.w) + vec3<f32>(x_736.z, x_736.y, x_736.w));
        let x_739 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat10;
        let x_743 : vec4<f32> = u_xlat7;
        let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.z, x_741.w) / vec3<f32>(x_743.z, x_743.w, x_743.y));
        let x_746 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat8;
        let x_754 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat11;
        let x_759 : vec4<f32> = u_xlat6;
        let x_761 : vec3<f32> = (vec3<f32>(x_757.z, x_757.y, x_757.w) / vec3<f32>(x_759.x, x_759.y, x_759.z));
        let x_762 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat9;
        let x_766 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat8;
        let x_772 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_774 : vec3<f32> = (vec3<f32>(x_769.y, x_769.x, x_769.z) * vec3<f32>(x_772.x, x_772.x, x_772.x));
        let x_775 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat9;
        let x_780 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_782 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_780.y, x_780.y, x_780.y));
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
        let x_786 : f32 = u_xlat9.x;
        u_xlat8.w = x_786;
        let x_788 : vec2<f32> = u_xlat55;
        let x_791 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_794 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y) * vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.y)) + vec4<f32>(x_794.y, x_794.w, x_794.x, x_794.w));
        let x_797 : vec2<f32> = u_xlat55;
        let x_799 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_802 : vec4<f32> = u_xlat8;
        let x_804 : vec2<f32> = ((x_797 * vec2<f32>(x_799.x, x_799.y)) + vec2<f32>(x_802.z, x_802.w));
        let x_805 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
        let x_808 : f32 = u_xlat8.y;
        u_xlat9.w = x_808;
        let x_810 : vec4<f32> = u_xlat9;
        let x_811 : vec2<f32> = vec2<f32>(x_810.y, x_810.z);
        let x_812 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_812.x, x_811.x, x_812.z, x_811.y);
        let x_815 : vec2<f32> = u_xlat55;
        let x_818 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_821 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_815.x, x_815.y, x_815.x, x_815.y) * vec4<f32>(x_818.x, x_818.y, x_818.x, x_818.y)) + vec4<f32>(x_821.x, x_821.y, x_821.z, x_821.y));
        let x_824 : vec2<f32> = u_xlat55;
        let x_827 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_830 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y) * vec4<f32>(x_827.x, x_827.y, x_827.x, x_827.y)) + vec4<f32>(x_830.w, x_830.y, x_830.w, x_830.z));
        let x_833 : vec2<f32> = u_xlat55;
        let x_836 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_839 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.y) * vec4<f32>(x_836.x, x_836.y, x_836.x, x_836.y)) + vec4<f32>(x_839.x, x_839.w, x_839.z, x_839.w));
        let x_843 : vec4<f32> = u_xlat6;
        let x_845 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_843.x, x_843.x, x_843.x, x_843.y) * vec4<f32>(x_845.z, x_845.w, x_845.y, x_845.z));
        let x_849 : vec4<f32> = u_xlat6;
        let x_851 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_849.y, x_849.y, x_849.z, x_849.z) * x_851);
        let x_854 : f32 = u_xlat6.z;
        let x_856 : f32 = u_xlat7.y;
        u_xlat55.x = (x_854 * x_856);
        let x_860 : vec4<f32> = u_xlat10;
        let x_861 : vec2<f32> = vec2<f32>(x_860.x, x_860.y);
        let x_863 : f32 = u_xlat26.z;
        txVec4 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_871 : vec3<f32> = txVec4;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_871.xy, x_871.z);
        u_xlat80 = x_873;
        let x_875 : vec4<f32> = u_xlat10;
        let x_876 : vec2<f32> = vec2<f32>(x_875.z, x_875.w);
        let x_878 : f32 = u_xlat26.z;
        txVec5 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec5;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_885.xy, x_885.z);
        u_xlat6.x = x_887;
        let x_890 : f32 = u_xlat6.x;
        let x_892 : f32 = u_xlat13.y;
        u_xlat6.x = (x_890 * x_892);
        let x_896 : f32 = u_xlat13.x;
        let x_897 : f32 = u_xlat80;
        let x_900 : f32 = u_xlat6.x;
        u_xlat80 = ((x_896 * x_897) + x_900);
        let x_903 : vec4<f32> = u_xlat11;
        let x_904 : vec2<f32> = vec2<f32>(x_903.x, x_903.y);
        let x_906 : f32 = u_xlat26.z;
        txVec6 = vec3<f32>(x_904.x, x_904.y, x_906);
        let x_913 : vec3<f32> = txVec6;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_913.xy, x_913.z);
        u_xlat6.x = x_915;
        let x_918 : f32 = u_xlat13.z;
        let x_920 : f32 = u_xlat6.x;
        let x_922 : f32 = u_xlat80;
        u_xlat80 = ((x_918 * x_920) + x_922);
        let x_925 : vec4<f32> = u_xlat9;
        let x_926 : vec2<f32> = vec2<f32>(x_925.x, x_925.y);
        let x_928 : f32 = u_xlat26.z;
        txVec7 = vec3<f32>(x_926.x, x_926.y, x_928);
        let x_935 : vec3<f32> = txVec7;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
        u_xlat6.x = x_937;
        let x_940 : f32 = u_xlat13.w;
        let x_942 : f32 = u_xlat6.x;
        let x_944 : f32 = u_xlat80;
        u_xlat80 = ((x_940 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat12;
        let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.y);
        let x_950 : f32 = u_xlat26.z;
        txVec8 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec8;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat6.x = x_959;
        let x_962 : f32 = u_xlat14.x;
        let x_964 : f32 = u_xlat6.x;
        let x_966 : f32 = u_xlat80;
        u_xlat80 = ((x_962 * x_964) + x_966);
        let x_969 : vec4<f32> = u_xlat12;
        let x_970 : vec2<f32> = vec2<f32>(x_969.z, x_969.w);
        let x_972 : f32 = u_xlat26.z;
        txVec9 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec9;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_979.xy, x_979.z);
        u_xlat6.x = x_981;
        let x_984 : f32 = u_xlat14.y;
        let x_986 : f32 = u_xlat6.x;
        let x_988 : f32 = u_xlat80;
        u_xlat80 = ((x_984 * x_986) + x_988);
        let x_991 : vec4<f32> = u_xlat9;
        let x_992 : vec2<f32> = vec2<f32>(x_991.z, x_991.w);
        let x_994 : f32 = u_xlat26.z;
        txVec10 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec10;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1001.xy, x_1001.z);
        u_xlat6.x = x_1003;
        let x_1006 : f32 = u_xlat14.z;
        let x_1008 : f32 = u_xlat6.x;
        let x_1010 : f32 = u_xlat80;
        u_xlat80 = ((x_1006 * x_1008) + x_1010);
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.x, x_1013.y);
        let x_1016 : f32 = u_xlat26.z;
        txVec11 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1023 : vec3<f32> = txVec11;
        let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1023.xy, x_1023.z);
        u_xlat6.x = x_1025;
        let x_1028 : f32 = u_xlat14.w;
        let x_1030 : f32 = u_xlat6.x;
        let x_1032 : f32 = u_xlat80;
        u_xlat80 = ((x_1028 * x_1030) + x_1032);
        let x_1035 : vec4<f32> = u_xlat8;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.z, x_1035.w);
        let x_1038 : f32 = u_xlat26.z;
        txVec12 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1045 : vec3<f32> = txVec12;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1045.xy, x_1045.z);
        u_xlat6.x = x_1047;
        let x_1050 : f32 = u_xlat55.x;
        let x_1052 : f32 = u_xlat6.x;
        let x_1054 : f32 = u_xlat80;
        u_xlat30.x = ((x_1050 * x_1052) + x_1054);
      } else {
        let x_1058 : vec3<f32> = u_xlat26;
        let x_1061 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.z, x_1061.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1065 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_1065);
        let x_1067 : vec3<f32> = u_xlat26;
        let x_1070 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1073 : vec2<f32> = u_xlat55;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1070.z, x_1070.w)) + -(x_1073));
        let x_1076 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1078.x, x_1078.x, x_1078.y, x_1078.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1081.x, x_1081.x, x_1081.z, x_1081.z) * vec4<f32>(x_1083.x, x_1083.x, x_1083.z, x_1083.z));
        let x_1086 : vec4<f32> = u_xlat8;
        let x_1090 : vec2<f32> = (vec2<f32>(x_1086.y, x_1086.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1091.x, x_1090.x, x_1091.z, x_1090.y);
        let x_1093 : vec4<f32> = u_xlat8;
        let x_1096 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1093.x, x_1093.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1096.x, x_1096.y)));
        let x_1100 : vec4<f32> = u_xlat6;
        let x_1103 : vec2<f32> = (-(vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat6;
        let x_1108 : vec2<f32> = min(vec2<f32>(x_1106.x, x_1106.y), vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1119 : vec2<f32> = ((-(vec2<f32>(x_1111.x, x_1111.y)) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.x, x_1117.z));
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat6;
        let x_1124 : vec2<f32> = max(vec2<f32>(x_1122.x, x_1122.y), vec2<f32>(0.0f, 0.0f));
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1130 : vec4<f32> = u_xlat8;
        let x_1133 : vec4<f32> = u_xlat7;
        let x_1135 : vec2<f32> = ((-(vec2<f32>(x_1127.x, x_1127.y)) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.y, x_1133.w));
        let x_1136 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1136.x, x_1135.x, x_1136.z, x_1135.y);
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1138 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1142 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1142 * 0.08163200318813323975f);
        let x_1146 : vec2<f32> = u_xlat56;
        let x_1149 : vec2<f32> = (vec2<f32>(x_1146.y, x_1146.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1152.x, x_1152.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1156 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1156 * 0.08163200318813323975f);
        let x_1160 : f32 = u_xlat10.y;
        u_xlat8.x = x_1160;
        let x_1162 : vec4<f32> = u_xlat6;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1169.x, x_1170.z, x_1169.y);
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1172.x, x_1172.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1177 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1177.w);
        let x_1180 : f32 = u_xlat56.x;
        u_xlat7.y = x_1180;
        let x_1183 : f32 = u_xlat9.y;
        u_xlat7.w = x_1183;
        let x_1185 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1185 + x_1186);
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1188.y, x_1188.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1192.x, x_1191.x, x_1192.z, x_1191.y);
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1197 : vec2<f32> = ((vec2<f32>(x_1194.y, x_1194.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1198 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1197.x, x_1198.y, x_1197.y, x_1198.w);
        let x_1201 : f32 = u_xlat56.y;
        u_xlat9.y = x_1201;
        let x_1203 : vec4<f32> = u_xlat9;
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1203 + x_1204);
        let x_1206 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1206 / x_1207);
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1209 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1216 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1215 / x_1216);
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1218 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1223 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1220.w, x_1220.x, x_1220.y, x_1220.z) * vec4<f32>(x_1223.x, x_1223.x, x_1223.x, x_1223.x));
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1229 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1226.x, x_1226.w, x_1226.y, x_1226.z) * vec4<f32>(x_1229.y, x_1229.y, x_1229.y, x_1229.y));
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1233 : vec3<f32> = vec3<f32>(x_1232.y, x_1232.z, x_1232.w);
        let x_1234 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1233.z);
        let x_1237 : f32 = u_xlat9.x;
        u_xlat10.y = x_1237;
        let x_1239 : vec2<f32> = u_xlat55;
        let x_1242 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1245.y));
        let x_1248 : vec2<f32> = u_xlat55;
        let x_1250 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat10;
        let x_1255 : vec2<f32> = ((x_1248 * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.w, x_1253.y));
        let x_1256 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
        let x_1259 : f32 = u_xlat10.y;
        u_xlat7.y = x_1259;
        let x_1262 : f32 = u_xlat9.z;
        u_xlat10.y = x_1262;
        let x_1264 : vec2<f32> = u_xlat55;
        let x_1267 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y) * vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y)) + vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1270.y));
        let x_1274 : vec2<f32> = u_xlat55;
        let x_1276 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1279 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1274 * vec2<f32>(x_1276.x, x_1276.y)) + vec2<f32>(x_1279.w, x_1279.y));
        let x_1283 : f32 = u_xlat10.y;
        u_xlat7.z = x_1283;
        let x_1285 : vec2<f32> = u_xlat55;
        let x_1288 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.z));
        let x_1295 : f32 = u_xlat9.w;
        u_xlat10.y = x_1295;
        let x_1298 : vec2<f32> = u_xlat55;
        let x_1301 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1308 : vec2<f32> = u_xlat55;
        let x_1310 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat10;
        let x_1315 : vec2<f32> = ((x_1308 * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.w, x_1313.y));
        let x_1316 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1315.x, x_1315.y, x_1316.z);
        let x_1319 : f32 = u_xlat10.y;
        u_xlat7.w = x_1319;
        let x_1322 : vec2<f32> = u_xlat55;
        let x_1324 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec2<f32> = ((x_1322 * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.x, x_1327.w));
        let x_1330 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1332 : vec4<f32> = u_xlat10;
        let x_1333 : vec3<f32> = vec3<f32>(x_1332.x, x_1332.z, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1334.y, x_1333.y, x_1333.z);
        let x_1336 : vec2<f32> = u_xlat55;
        let x_1339 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y) * vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y)) + vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1342.y));
        let x_1346 : vec2<f32> = u_xlat55;
        let x_1348 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1346 * vec2<f32>(x_1348.x, x_1348.y)) + vec2<f32>(x_1351.w, x_1351.y));
        let x_1355 : f32 = u_xlat7.x;
        u_xlat9.x = x_1355;
        let x_1357 : vec2<f32> = u_xlat55;
        let x_1359 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat55 = ((x_1357 * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.y));
        let x_1366 : vec4<f32> = u_xlat6;
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1366.x, x_1366.x, x_1366.x, x_1366.x) * x_1368);
        let x_1371 : vec4<f32> = u_xlat6;
        let x_1373 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1371.y, x_1371.y, x_1371.y, x_1371.y) * x_1373);
        let x_1376 : vec4<f32> = u_xlat6;
        let x_1378 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1376.z, x_1376.z, x_1376.z, x_1376.z) * x_1378);
        let x_1380 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1380.w, x_1380.w, x_1380.w, x_1380.w) * x_1382);
        let x_1385 : vec4<f32> = u_xlat11;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = u_xlat26.z;
        txVec13 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec13;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat7.x = x_1397;
        let x_1400 : vec4<f32> = u_xlat11;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.z, x_1400.w);
        let x_1403 : f32 = u_xlat26.z;
        txVec14 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1411 : vec3<f32> = txVec14;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat82 = x_1413;
        let x_1414 : f32 = u_xlat82;
        let x_1416 : f32 = u_xlat17.y;
        u_xlat82 = (x_1414 * x_1416);
        let x_1419 : f32 = u_xlat17.x;
        let x_1421 : f32 = u_xlat7.x;
        let x_1423 : f32 = u_xlat82;
        u_xlat7.x = ((x_1419 * x_1421) + x_1423);
        let x_1427 : vec4<f32> = u_xlat12;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.x, x_1427.y);
        let x_1430 : f32 = u_xlat26.z;
        txVec15 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec15;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat82 = x_1439;
        let x_1441 : f32 = u_xlat17.z;
        let x_1442 : f32 = u_xlat82;
        let x_1445 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1441 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat14;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat26.z;
        txVec16 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec16;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat82 = x_1461;
        let x_1463 : f32 = u_xlat17.w;
        let x_1464 : f32 = u_xlat82;
        let x_1467 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1463 * x_1464) + x_1467);
        let x_1471 : vec4<f32> = u_xlat13;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.x, x_1471.y);
        let x_1474 : f32 = u_xlat26.z;
        txVec17 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec17;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat82 = x_1483;
        let x_1485 : f32 = u_xlat18.x;
        let x_1486 : f32 = u_xlat82;
        let x_1489 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1485 * x_1486) + x_1489);
        let x_1493 : vec4<f32> = u_xlat13;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.z, x_1493.w);
        let x_1496 : f32 = u_xlat26.z;
        txVec18 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec18;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat82 = x_1505;
        let x_1507 : f32 = u_xlat18.y;
        let x_1508 : f32 = u_xlat82;
        let x_1511 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1507 * x_1508) + x_1511);
        let x_1515 : vec2<f32> = u_xlat62;
        let x_1517 : f32 = u_xlat26.z;
        txVec19 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec19;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1524.xy, x_1524.z);
        u_xlat82 = x_1526;
        let x_1528 : f32 = u_xlat18.z;
        let x_1529 : f32 = u_xlat82;
        let x_1532 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1528 * x_1529) + x_1532);
        let x_1536 : vec4<f32> = u_xlat14;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = u_xlat26.z;
        txVec20 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec20;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat82 = x_1548;
        let x_1550 : f32 = u_xlat18.w;
        let x_1551 : f32 = u_xlat82;
        let x_1554 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1550 * x_1551) + x_1554);
        let x_1558 : vec4<f32> = u_xlat15;
        let x_1559 : vec2<f32> = vec2<f32>(x_1558.x, x_1558.y);
        let x_1561 : f32 = u_xlat26.z;
        txVec21 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec21;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1568.xy, x_1568.z);
        u_xlat82 = x_1570;
        let x_1572 : f32 = u_xlat19.x;
        let x_1573 : f32 = u_xlat82;
        let x_1576 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1572 * x_1573) + x_1576);
        let x_1580 : vec4<f32> = u_xlat15;
        let x_1581 : vec2<f32> = vec2<f32>(x_1580.z, x_1580.w);
        let x_1583 : f32 = u_xlat26.z;
        txVec22 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec22;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1590.xy, x_1590.z);
        u_xlat82 = x_1592;
        let x_1594 : f32 = u_xlat19.y;
        let x_1595 : f32 = u_xlat82;
        let x_1598 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1594 * x_1595) + x_1598);
        let x_1602 : vec3<f32> = u_xlat32;
        let x_1603 : vec2<f32> = vec2<f32>(x_1602.x, x_1602.y);
        let x_1605 : f32 = u_xlat26.z;
        txVec23 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec23;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1612.xy, x_1612.z);
        u_xlat32.x = x_1614;
        let x_1617 : f32 = u_xlat19.z;
        let x_1619 : f32 = u_xlat32.x;
        let x_1622 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1617 * x_1619) + x_1622);
        let x_1626 : vec4<f32> = u_xlat16;
        let x_1627 : vec2<f32> = vec2<f32>(x_1626.x, x_1626.y);
        let x_1629 : f32 = u_xlat26.z;
        txVec24 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec24;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1636.xy, x_1636.z);
        u_xlat32.x = x_1638;
        let x_1641 : f32 = u_xlat19.w;
        let x_1643 : f32 = u_xlat32.x;
        let x_1646 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1641 * x_1643) + x_1646);
        let x_1650 : vec4<f32> = u_xlat10;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.x, x_1650.y);
        let x_1653 : f32 = u_xlat26.z;
        txVec25 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec25;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat32.x = x_1662;
        let x_1665 : f32 = u_xlat6.x;
        let x_1667 : f32 = u_xlat32.x;
        let x_1670 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1665 * x_1667) + x_1670);
        let x_1674 : vec4<f32> = u_xlat10;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.z, x_1674.w);
        let x_1677 : f32 = u_xlat26.z;
        txVec26 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec26;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat7.x = x_1686;
        let x_1689 : f32 = u_xlat6.y;
        let x_1691 : f32 = u_xlat7.x;
        let x_1694 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1689 * x_1691) + x_1694);
        let x_1698 : vec2<f32> = u_xlat59;
        let x_1700 : f32 = u_xlat26.z;
        txVec27 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1708 : vec3<f32> = txVec27;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat31 = x_1710;
        let x_1712 : f32 = u_xlat6.z;
        let x_1713 : f32 = u_xlat31;
        let x_1716 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1712 * x_1713) + x_1716);
        let x_1720 : vec2<f32> = u_xlat55;
        let x_1722 : f32 = u_xlat26.z;
        txVec28 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec28;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat55.x = x_1731;
        let x_1734 : f32 = u_xlat6.w;
        let x_1736 : f32 = u_xlat55.x;
        let x_1739 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1734 * x_1736) + x_1739);
      }
    }
  } else {
    let x_1744 : vec3<f32> = u_xlat26;
    let x_1745 : vec2<f32> = vec2<f32>(x_1744.x, x_1744.y);
    let x_1747 : f32 = u_xlat26.z;
    txVec29 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
    let x_1754 : vec3<f32> = txVec29;
    let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1754.xy, x_1754.z);
    u_xlat30.x = x_1756;
  }
  let x_1759 : f32 = x_111.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1759) + 1.0f);
  let x_1764 : f32 = u_xlat30.x;
  let x_1766 : f32 = x_111.x_MainLightShadowParams.x;
  let x_1769 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1764 * x_1766) + x_1769);
  let x_1774 : f32 = u_xlat26.z;
  u_xlatb51 = (0.0f >= x_1774);
  let x_1778 : f32 = u_xlat26.z;
  u_xlatb76 = (x_1778 >= 1.0f);
  let x_1780 : bool = u_xlatb76;
  let x_1781 : bool = u_xlatb51;
  u_xlatb51 = (x_1780 | x_1781);
  let x_1783 : bool = u_xlatb51;
  if (x_1783) {
    x_1785 = 1.0f;
  } else {
    let x_1790 : f32 = u_xlat26.x;
    x_1785 = x_1790;
  }
  let x_1791 : f32 = x_1785;
  u_xlat26.x = x_1791;
  let x_1793 : vec3<f32> = vs_TEXCOORD7;
  let x_1796 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_1793 + -(x_1796));
  let x_1800 : vec3<f32> = u_xlat30;
  let x_1801 : vec3<f32> = u_xlat30;
  u_xlat51 = dot(x_1800, x_1801);
  let x_1804 : f32 = u_xlat51;
  let x_1806 : f32 = x_111.x_MainLightShadowParams.z;
  let x_1809 : f32 = x_111.x_MainLightShadowParams.w;
  u_xlat76 = ((x_1804 * x_1806) + x_1809);
  let x_1811 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1811, 0.0f, 1.0f);
  let x_1814 : f32 = u_xlat26.x;
  u_xlat30.x = (-(x_1814) + 1.0f);
  let x_1818 : f32 = u_xlat76;
  let x_1820 : f32 = u_xlat30.x;
  let x_1823 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1818 * x_1820) + x_1823);
  let x_1827 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1827;
  let x_1831 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1831;
  let x_1835 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1835;
  let x_1837 : vec4<f32> = u_xlat6;
  let x_1840 : vec4<f32> = u_xlat2;
  u_xlat76 = dot(-(vec3<f32>(x_1837.x, x_1837.y, x_1837.z)), vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
  let x_1843 : f32 = u_xlat76;
  let x_1844 : f32 = u_xlat76;
  u_xlat76 = (x_1843 + x_1844);
  let x_1846 : vec4<f32> = u_xlat2;
  let x_1848 : f32 = u_xlat76;
  let x_1852 : vec4<f32> = u_xlat6;
  u_xlat30 = ((vec3<f32>(x_1846.x, x_1846.y, x_1846.z) * -(vec3<f32>(x_1848, x_1848, x_1848))) + -(vec3<f32>(x_1852.x, x_1852.y, x_1852.z)));
  let x_1856 : vec4<f32> = u_xlat2;
  let x_1858 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_1856.x, x_1856.y, x_1856.z), vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1861, 0.0f, 1.0f);
  let x_1863 : f32 = u_xlat76;
  u_xlat76 = (-(x_1863) + 1.0f);
  let x_1866 : f32 = u_xlat76;
  let x_1867 : f32 = u_xlat76;
  u_xlat76 = (x_1866 * x_1867);
  let x_1869 : f32 = u_xlat76;
  let x_1870 : f32 = u_xlat76;
  u_xlat76 = (x_1869 * x_1870);
  let x_1874 : f32 = u_xlat1.x;
  u_xlat81 = ((-(x_1874) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1881 : f32 = u_xlat1.x;
  let x_1882 : f32 = u_xlat81;
  u_xlat1.x = (x_1881 * x_1882);
  let x_1886 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1886 * 6.0f);
  let x_1898 : vec3<f32> = u_xlat30;
  let x_1900 : f32 = u_xlat1.x;
  let x_1901 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1898, x_1900);
  u_xlat7 = x_1901;
  let x_1903 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1903 + -1.0f);
  let x_1907 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_1909 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1907 * x_1909) + 1.0f);
  let x_1914 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1914, 0.0f);
  let x_1918 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1918);
  let x_1922 : f32 = u_xlat1.x;
  let x_1924 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1922 * x_1924);
  let x_1928 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1928);
  let x_1932 : f32 = u_xlat1.x;
  let x_1934 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1932 * x_1934);
  let x_1937 : vec4<f32> = u_xlat7;
  let x_1939 : vec4<f32> = u_xlat1;
  u_xlat30 = (vec3<f32>(x_1937.x, x_1937.y, x_1937.z) * vec3<f32>(x_1939.x, x_1939.x, x_1939.x));
  let x_1942 : f32 = u_xlat77;
  let x_1944 : f32 = u_xlat77;
  let x_1948 : vec2<f32> = ((vec2<f32>(x_1942, x_1942) * vec2<f32>(x_1944, x_1944)) + vec2<f32>(-1.0f, 1.0f));
  let x_1949 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1949.w);
  let x_1952 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1952);
  let x_1955 : vec4<f32> = u_xlat0;
  let x_1958 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1955.x, x_1955.y, x_1955.z)) + vec3<f32>(x_1958, x_1958, x_1958));
  let x_1961 : f32 = u_xlat76;
  let x_1963 : vec3<f32> = u_xlat32;
  let x_1965 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1961, x_1961, x_1961) * x_1963) + vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : vec4<f32> = u_xlat1;
  let x_1970 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1968.x, x_1968.x, x_1968.x) * x_1970);
  let x_1972 : vec3<f32> = u_xlat30;
  let x_1973 : vec3<f32> = u_xlat32;
  u_xlat30 = (x_1972 * x_1973);
  let x_1975 : vec3<f32> = u_xlat28;
  let x_1976 : vec3<f32> = u_xlat29;
  let x_1978 : vec3<f32> = u_xlat30;
  u_xlat28 = ((x_1975 * x_1976) + x_1978);
  let x_1981 : f32 = u_xlat26.x;
  let x_1983 : f32 = x_344.unity_LightData.z;
  u_xlat75 = (x_1981 * x_1983);
  let x_1985 : vec4<f32> = u_xlat2;
  let x_1988 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1993 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1993, 0.0f, 1.0f);
  let x_1996 : f32 = u_xlat75;
  let x_1998 : f32 = u_xlat1.x;
  u_xlat75 = (x_1996 * x_1998);
  let x_2000 : f32 = u_xlat75;
  let x_2003 : vec4<f32> = x_29.x_MainLightColor;
  let x_2005 : vec3<f32> = (vec3<f32>(x_2000, x_2000, x_2000) * vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2005.x, x_2005.y, x_2006.z, x_2005.z);
  let x_2008 : vec4<f32> = u_xlat6;
  let x_2011 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat30 = (vec3<f32>(x_2008.x, x_2008.y, x_2008.z) + vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
  let x_2014 : vec3<f32> = u_xlat30;
  let x_2015 : vec3<f32> = u_xlat30;
  u_xlat75 = dot(x_2014, x_2015);
  let x_2017 : f32 = u_xlat75;
  u_xlat75 = max(x_2017, 1.17549435e-38f);
  let x_2020 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2020);
  let x_2022 : f32 = u_xlat75;
  let x_2024 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2022, x_2022, x_2022) * x_2024);
  let x_2026 : vec4<f32> = u_xlat2;
  let x_2028 : vec3<f32> = u_xlat30;
  u_xlat75 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), x_2028);
  let x_2030 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2030, 0.0f, 1.0f);
  let x_2033 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2035 : vec3<f32> = u_xlat30;
  u_xlat77 = dot(vec3<f32>(x_2033.x, x_2033.y, x_2033.z), x_2035);
  let x_2037 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2037, 0.0f, 1.0f);
  let x_2039 : f32 = u_xlat75;
  let x_2040 : f32 = u_xlat75;
  u_xlat75 = (x_2039 * x_2040);
  let x_2042 : f32 = u_xlat75;
  let x_2044 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2042 * x_2044) + 1.00001001358032226562f);
  let x_2048 : f32 = u_xlat77;
  let x_2049 : f32 = u_xlat77;
  u_xlat77 = (x_2048 * x_2049);
  let x_2051 : f32 = u_xlat75;
  let x_2052 : f32 = u_xlat75;
  u_xlat75 = (x_2051 * x_2052);
  let x_2054 : f32 = u_xlat77;
  u_xlat77 = max(x_2054, 0.10000000149011611938f);
  let x_2057 : f32 = u_xlat75;
  let x_2058 : f32 = u_xlat77;
  u_xlat75 = (x_2057 * x_2058);
  let x_2061 : f32 = u_xlat4.x;
  let x_2062 : f32 = u_xlat75;
  u_xlat75 = (x_2061 * x_2062);
  let x_2065 : f32 = u_xlat5.x;
  let x_2066 : f32 = u_xlat75;
  u_xlat75 = (x_2065 / x_2066);
  let x_2068 : vec4<f32> = u_xlat0;
  let x_2070 : f32 = u_xlat75;
  let x_2073 : vec3<f32> = u_xlat29;
  u_xlat30 = ((vec3<f32>(x_2068.x, x_2068.y, x_2068.z) * vec3<f32>(x_2070, x_2070, x_2070)) + x_2073);
  let x_2076 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2078 : f32 = x_344.unity_LightData.y;
  u_xlat75 = min(x_2076, x_2078);
  let x_2081 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2081));
  let x_2084 : f32 = u_xlat51;
  let x_2087 : f32 = x_111.x_AdditionalShadowFadeParams.x;
  let x_2090 : f32 = x_111.x_AdditionalShadowFadeParams.y;
  u_xlat51 = ((x_2084 * x_2087) + x_2090);
  let x_2092 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2092, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2104 : u32 = u_xlatu_loop_1;
    let x_2105 : u32 = u_xlatu75;
    if ((x_2104 < x_2105)) {
    } else {
      break;
    }
    let x_2108 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2108 >> 2u);
    let x_2111 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2111 & 3u));
    let x_2114 : u32 = u_xlatu81;
    let x_2117 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_2114)];
    let x_2127 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2132 : vec4<u32> = indexable[x_2127];
    u_xlat81 = dot(x_2117, bitcast<vec4<f32>>(x_2132));
    let x_2136 : f32 = u_xlat81;
    u_xlati81 = i32(x_2136);
    let x_2138 : vec3<f32> = vs_TEXCOORD7;
    let x_2149 : i32 = u_xlati81;
    let x_2151 : vec4<f32> = x_2148.x_AdditionalLightsPosition[x_2149];
    let x_2154 : i32 = u_xlati81;
    let x_2156 : vec4<f32> = x_2148.x_AdditionalLightsPosition[x_2154];
    let x_2158 : vec3<f32> = ((-(x_2138) * vec3<f32>(x_2151.w, x_2151.w, x_2151.w)) + vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
    let x_2159 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2158.x, x_2158.y, x_2158.z, x_2159.w);
    let x_2162 : vec4<f32> = u_xlat8;
    let x_2164 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
    let x_2167 : f32 = u_xlat83;
    u_xlat83 = max(x_2167, 0.00006103515625f);
    let x_2170 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2170);
    let x_2174 : vec4<f32> = u_xlat8;
    let x_2176 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * vec3<f32>(x_2176.x, x_2176.x, x_2176.x));
    let x_2179 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2179);
    let x_2182 : f32 = u_xlat83;
    let x_2183 : i32 = u_xlati81;
    let x_2185 : f32 = x_2148.x_AdditionalLightsAttenuation[x_2183].x;
    u_xlat83 = (x_2182 * x_2185);
    let x_2187 : f32 = u_xlat83;
    let x_2189 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2187) * x_2189) + 1.0f);
    let x_2192 : f32 = u_xlat83;
    u_xlat83 = max(x_2192, 0.0f);
    let x_2194 : f32 = u_xlat83;
    let x_2195 : f32 = u_xlat83;
    u_xlat83 = (x_2194 * x_2195);
    let x_2197 : f32 = u_xlat83;
    let x_2199 : f32 = u_xlat10.x;
    u_xlat83 = (x_2197 * x_2199);
    let x_2201 : i32 = u_xlati81;
    let x_2203 : vec4<f32> = x_2148.x_AdditionalLightsSpotDir[x_2201];
    let x_2205 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2203.x, x_2203.y, x_2203.z), x_2205);
    let x_2209 : f32 = u_xlat10.x;
    let x_2210 : i32 = u_xlati81;
    let x_2212 : f32 = x_2148.x_AdditionalLightsAttenuation[x_2210].z;
    let x_2214 : i32 = u_xlati81;
    let x_2216 : f32 = x_2148.x_AdditionalLightsAttenuation[x_2214].w;
    u_xlat10.x = ((x_2209 * x_2212) + x_2216);
    let x_2220 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2220, 0.0f, 1.0f);
    let x_2224 : f32 = u_xlat10.x;
    let x_2226 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2224 * x_2226);
    let x_2229 : f32 = u_xlat83;
    let x_2231 : f32 = u_xlat10.x;
    u_xlat83 = (x_2229 * x_2231);
    let x_2235 : i32 = u_xlati81;
    let x_2237 : f32 = x_111.x_AdditionalShadowParams[x_2235].w;
    u_xlati10 = i32(x_2237);
    let x_2242 : i32 = u_xlati10;
    u_xlatb35.x = (x_2242 >= 0i);
    let x_2246 : bool = u_xlatb35.x;
    if (x_2246) {
      let x_2250 : i32 = u_xlati81;
      let x_2252 : f32 = x_111.x_AdditionalShadowParams[x_2250].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2252, x_2252, x_2252, x_2252))));
      let x_2258 : bool = u_xlatb35.x;
      if (x_2258) {
        let x_2261 : vec3<f32> = u_xlat34;
        let x_2264 : vec3<f32> = u_xlat34;
        let x_2267 : vec4<bool> = (abs(vec4<f32>(x_2261.z, x_2261.z, x_2261.y, x_2261.y)) >= abs(vec4<f32>(x_2264.x, x_2264.y, x_2264.x, x_2264.x)));
        u_xlatb35 = vec3<bool>(x_2267.x, x_2267.y, x_2267.z);
        let x_2270 : bool = u_xlatb35.y;
        let x_2272 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2270 & x_2272);
        let x_2276 : vec3<f32> = u_xlat34;
        let x_2279 : vec4<bool> = (-(vec4<f32>(x_2276.z, x_2276.y, x_2276.x, x_2276.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2279.x, x_2279.y, x_2279.z);
        let x_2282 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2282);
        let x_2287 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2287);
        let x_2292 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2292);
        let x_2295 : bool = u_xlatb35.z;
        if (x_2295) {
          let x_2300 : f32 = u_xlat11.y;
          x_2296 = x_2300;
        } else {
          let x_2302 : f32 = u_xlat60;
          x_2296 = x_2302;
        }
        let x_2303 : f32 = x_2296;
        u_xlat60 = x_2303;
        let x_2306 : bool = u_xlatb35.x;
        if (x_2306) {
          let x_2311 : f32 = u_xlat11.x;
          x_2307 = x_2311;
        } else {
          let x_2313 : f32 = u_xlat60;
          x_2307 = x_2313;
        }
        let x_2314 : f32 = x_2307;
        u_xlat35 = x_2314;
        let x_2315 : i32 = u_xlati81;
        let x_2317 : f32 = x_111.x_AdditionalShadowParams[x_2315].w;
        u_xlat60 = trunc(x_2317);
        let x_2319 : f32 = u_xlat35;
        let x_2320 : f32 = u_xlat60;
        u_xlat35 = (x_2319 + x_2320);
        let x_2322 : f32 = u_xlat35;
        u_xlati10 = i32(x_2322);
      }
      let x_2324 : i32 = u_xlati10;
      u_xlati10 = (x_2324 << bitcast<u32>(2i));
      let x_2326 : vec3<f32> = vs_TEXCOORD7;
      let x_2329 : i32 = u_xlati10;
      let x_2332 : i32 = u_xlati10;
      let x_2336 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2329 + 1i) / 4i)][((x_2332 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2326.y, x_2326.y, x_2326.y, x_2326.y) * x_2336);
      let x_2338 : i32 = u_xlati10;
      let x_2340 : i32 = u_xlati10;
      let x_2343 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[(x_2338 / 4i)][(x_2340 % 4i)];
      let x_2344 : vec3<f32> = vs_TEXCOORD7;
      let x_2347 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2343 * vec4<f32>(x_2344.x, x_2344.x, x_2344.x, x_2344.x)) + x_2347);
      let x_2349 : i32 = u_xlati10;
      let x_2352 : i32 = u_xlati10;
      let x_2356 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2349 + 2i) / 4i)][((x_2352 + 2i) % 4i)];
      let x_2357 : vec3<f32> = vs_TEXCOORD7;
      let x_2360 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2356 * vec4<f32>(x_2357.z, x_2357.z, x_2357.z, x_2357.z)) + x_2360);
      let x_2362 : vec4<f32> = u_xlat11;
      let x_2363 : i32 = u_xlati10;
      let x_2366 : i32 = u_xlati10;
      let x_2370 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2363 + 3i) / 4i)][((x_2366 + 3i) % 4i)];
      u_xlat10 = (x_2362 + x_2370);
      let x_2372 : vec4<f32> = u_xlat10;
      let x_2374 : vec4<f32> = u_xlat10;
      let x_2376 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) / vec3<f32>(x_2374.w, x_2374.w, x_2374.w));
      let x_2377 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
      let x_2380 : i32 = u_xlati81;
      let x_2382 : f32 = x_111.x_AdditionalShadowParams[x_2380].y;
      u_xlatb85 = (0.0f < x_2382);
      let x_2384 : bool = u_xlatb85;
      if (x_2384) {
        let x_2387 : i32 = u_xlati81;
        let x_2389 : f32 = x_111.x_AdditionalShadowParams[x_2387].y;
        u_xlatb85 = (1.0f == x_2389);
        let x_2391 : bool = u_xlatb85;
        if (x_2391) {
          let x_2394 : vec4<f32> = u_xlat10;
          let x_2398 : vec4<f32> = x_111.x_AdditionalShadowOffset0;
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
          let x_2435 : vec4<f32> = x_111.x_AdditionalShadowOffset1;
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
          let x_2473 : f32 = x_111.x_AdditionalShadowParams[x_2471].y;
          u_xlatb11.x = (2.0f == x_2473);
          let x_2477 : bool = u_xlatb11.x;
          if (x_2477) {
            let x_2480 : vec4<f32> = u_xlat10;
            let x_2484 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2487 : vec2<f32> = ((vec2<f32>(x_2480.x, x_2480.y) * vec2<f32>(x_2484.z, x_2484.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2488 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2492 : vec2<f32> = floor(vec2<f32>(x_2490.x, x_2490.y));
            let x_2493 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2496 : vec4<f32> = u_xlat10;
            let x_2499 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
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
            let x_2528 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2528) + vec2<f32>(1.0f, 1.0f));
            let x_2531 : vec2<f32> = u_xlat61;
            let x_2532 : vec2<f32> = min(x_2531, vec2<f32>(0.0f, 0.0f));
            let x_2533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2535 : vec4<f32> = u_xlat14;
            let x_2538 : vec4<f32> = u_xlat14;
            let x_2541 : vec2<f32> = u_xlat63;
            let x_2542 : vec2<f32> = ((-(vec2<f32>(x_2535.x, x_2535.y)) * vec2<f32>(x_2538.x, x_2538.y)) + x_2541);
            let x_2543 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2542.x, x_2542.y, x_2543.z, x_2543.w);
            let x_2545 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2545, vec2<f32>(0.0f, 0.0f));
            let x_2547 : vec2<f32> = u_xlat61;
            let x_2549 : vec2<f32> = u_xlat61;
            let x_2551 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2547) * x_2549) + vec2<f32>(x_2551.y, x_2551.w));
            let x_2554 : vec4<f32> = u_xlat14;
            let x_2556 : vec2<f32> = (vec2<f32>(x_2554.x, x_2554.y) + vec2<f32>(1.0f, 1.0f));
            let x_2557 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2556.x, x_2556.y, x_2557.z, x_2557.w);
            let x_2559 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2559 + vec2<f32>(1.0f, 1.0f));
            let x_2561 : vec4<f32> = u_xlat13;
            let x_2563 : vec2<f32> = (vec2<f32>(x_2561.x, x_2561.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2564 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2563.x, x_2563.y, x_2564.z, x_2564.w);
            let x_2566 : vec2<f32> = u_xlat63;
            let x_2567 : vec2<f32> = (x_2566 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2568 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
            let x_2570 : vec4<f32> = u_xlat14;
            let x_2572 : vec2<f32> = (vec2<f32>(x_2570.x, x_2570.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2573 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2572.x, x_2572.y, x_2573.z, x_2573.w);
            let x_2575 : vec2<f32> = u_xlat61;
            let x_2576 : vec2<f32> = (x_2575 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2577 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2579.y, x_2579.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2583 : f32 = u_xlat14.x;
            u_xlat15.z = x_2583;
            let x_2586 : f32 = u_xlat61.x;
            u_xlat15.w = x_2586;
            let x_2589 : f32 = u_xlat16.x;
            u_xlat13.z = x_2589;
            let x_2592 : f32 = u_xlat12.x;
            u_xlat13.w = x_2592;
            let x_2594 : vec4<f32> = u_xlat13;
            let x_2596 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2594.z, x_2594.w, x_2594.x, x_2594.z) + vec4<f32>(x_2596.z, x_2596.w, x_2596.x, x_2596.z));
            let x_2600 : f32 = u_xlat15.y;
            u_xlat14.z = x_2600;
            let x_2603 : f32 = u_xlat61.y;
            u_xlat14.w = x_2603;
            let x_2606 : f32 = u_xlat13.y;
            u_xlat16.z = x_2606;
            let x_2609 : f32 = u_xlat12.z;
            u_xlat16.w = x_2609;
            let x_2611 : vec4<f32> = u_xlat14;
            let x_2613 : vec4<f32> = u_xlat16;
            let x_2615 : vec3<f32> = (vec3<f32>(x_2611.z, x_2611.y, x_2611.w) + vec3<f32>(x_2613.z, x_2613.y, x_2613.w));
            let x_2616 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
            let x_2618 : vec4<f32> = u_xlat13;
            let x_2620 : vec4<f32> = u_xlat17;
            let x_2622 : vec3<f32> = (vec3<f32>(x_2618.x, x_2618.z, x_2618.w) / vec3<f32>(x_2620.z, x_2620.w, x_2620.y));
            let x_2623 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
            let x_2625 : vec4<f32> = u_xlat13;
            let x_2627 : vec3<f32> = (vec3<f32>(x_2625.x, x_2625.y, x_2625.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2628 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
            let x_2630 : vec4<f32> = u_xlat16;
            let x_2632 : vec4<f32> = u_xlat12;
            let x_2634 : vec3<f32> = (vec3<f32>(x_2630.z, x_2630.y, x_2630.w) / vec3<f32>(x_2632.x, x_2632.y, x_2632.z));
            let x_2635 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
            let x_2637 : vec4<f32> = u_xlat14;
            let x_2639 : vec3<f32> = (vec3<f32>(x_2637.x, x_2637.y, x_2637.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
            let x_2642 : vec4<f32> = u_xlat13;
            let x_2645 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2647 : vec3<f32> = (vec3<f32>(x_2642.y, x_2642.x, x_2642.z) * vec3<f32>(x_2645.x, x_2645.x, x_2645.x));
            let x_2648 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
            let x_2650 : vec4<f32> = u_xlat14;
            let x_2653 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2655 : vec3<f32> = (vec3<f32>(x_2650.x, x_2650.y, x_2650.z) * vec3<f32>(x_2653.y, x_2653.y, x_2653.y));
            let x_2656 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
            let x_2659 : f32 = u_xlat14.x;
            u_xlat13.w = x_2659;
            let x_2661 : vec4<f32> = u_xlat11;
            let x_2664 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2661.x, x_2661.y, x_2661.x, x_2661.y) * vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y)) + vec4<f32>(x_2667.y, x_2667.w, x_2667.x, x_2667.w));
            let x_2670 : vec4<f32> = u_xlat11;
            let x_2673 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2676 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2670.x, x_2670.y) * vec2<f32>(x_2673.x, x_2673.y)) + vec2<f32>(x_2676.z, x_2676.w));
            let x_2680 : f32 = u_xlat13.y;
            u_xlat14.w = x_2680;
            let x_2682 : vec4<f32> = u_xlat14;
            let x_2683 : vec2<f32> = vec2<f32>(x_2682.y, x_2682.z);
            let x_2684 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2684.x, x_2683.x, x_2684.z, x_2683.y);
            let x_2686 : vec4<f32> = u_xlat11;
            let x_2689 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2686.x, x_2686.y, x_2686.x, x_2686.y) * vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.y)) + vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2692.y));
            let x_2695 : vec4<f32> = u_xlat11;
            let x_2698 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2701 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2695.x, x_2695.y, x_2695.x, x_2695.y) * vec4<f32>(x_2698.x, x_2698.y, x_2698.x, x_2698.y)) + vec4<f32>(x_2701.w, x_2701.y, x_2701.w, x_2701.z));
            let x_2704 : vec4<f32> = u_xlat11;
            let x_2707 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2710 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2704.x, x_2704.y, x_2704.x, x_2704.y) * vec4<f32>(x_2707.x, x_2707.y, x_2707.x, x_2707.y)) + vec4<f32>(x_2710.x, x_2710.w, x_2710.z, x_2710.w));
            let x_2713 : vec4<f32> = u_xlat12;
            let x_2715 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2713.x, x_2713.x, x_2713.x, x_2713.y) * vec4<f32>(x_2715.z, x_2715.w, x_2715.y, x_2715.z));
            let x_2718 : vec4<f32> = u_xlat12;
            let x_2720 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2718.y, x_2718.y, x_2718.z, x_2718.z) * x_2720);
            let x_2723 : f32 = u_xlat12.z;
            let x_2725 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2723 * x_2725);
            let x_2729 : vec4<f32> = u_xlat15;
            let x_2730 : vec2<f32> = vec2<f32>(x_2729.x, x_2729.y);
            let x_2732 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2730.x, x_2730.y, x_2732);
            let x_2740 : vec3<f32> = txVec34;
            let x_2742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2740.xy, x_2740.z);
            u_xlat36 = x_2742;
            let x_2744 : vec4<f32> = u_xlat15;
            let x_2745 : vec2<f32> = vec2<f32>(x_2744.z, x_2744.w);
            let x_2747 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2745.x, x_2745.y, x_2747);
            let x_2754 : vec3<f32> = txVec35;
            let x_2756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2754.xy, x_2754.z);
            u_xlat12.x = x_2756;
            let x_2759 : f32 = u_xlat12.x;
            let x_2761 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2759 * x_2761);
            let x_2765 : f32 = u_xlat18.x;
            let x_2766 : f32 = u_xlat36;
            let x_2769 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2765 * x_2766) + x_2769);
            let x_2772 : vec2<f32> = u_xlat61;
            let x_2774 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2772.x, x_2772.y, x_2774);
            let x_2781 : vec3<f32> = txVec36;
            let x_2783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2781.xy, x_2781.z);
            u_xlat61.x = x_2783;
            let x_2786 : f32 = u_xlat18.z;
            let x_2788 : f32 = u_xlat61.x;
            let x_2790 : f32 = u_xlat36;
            u_xlat36 = ((x_2786 * x_2788) + x_2790);
            let x_2793 : vec4<f32> = u_xlat14;
            let x_2794 : vec2<f32> = vec2<f32>(x_2793.x, x_2793.y);
            let x_2796 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
            let x_2803 : vec3<f32> = txVec37;
            let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
            u_xlat61.x = x_2805;
            let x_2808 : f32 = u_xlat18.w;
            let x_2810 : f32 = u_xlat61.x;
            let x_2812 : f32 = u_xlat36;
            u_xlat36 = ((x_2808 * x_2810) + x_2812);
            let x_2815 : vec4<f32> = u_xlat16;
            let x_2816 : vec2<f32> = vec2<f32>(x_2815.x, x_2815.y);
            let x_2818 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2816.x, x_2816.y, x_2818);
            let x_2825 : vec3<f32> = txVec38;
            let x_2827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2825.xy, x_2825.z);
            u_xlat61.x = x_2827;
            let x_2830 : f32 = u_xlat19.x;
            let x_2832 : f32 = u_xlat61.x;
            let x_2834 : f32 = u_xlat36;
            u_xlat36 = ((x_2830 * x_2832) + x_2834);
            let x_2837 : vec4<f32> = u_xlat16;
            let x_2838 : vec2<f32> = vec2<f32>(x_2837.z, x_2837.w);
            let x_2840 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
            let x_2847 : vec3<f32> = txVec39;
            let x_2849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
            u_xlat61.x = x_2849;
            let x_2852 : f32 = u_xlat19.y;
            let x_2854 : f32 = u_xlat61.x;
            let x_2856 : f32 = u_xlat36;
            u_xlat36 = ((x_2852 * x_2854) + x_2856);
            let x_2859 : vec4<f32> = u_xlat14;
            let x_2860 : vec2<f32> = vec2<f32>(x_2859.z, x_2859.w);
            let x_2862 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec40;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat61.x = x_2871;
            let x_2874 : f32 = u_xlat19.z;
            let x_2876 : f32 = u_xlat61.x;
            let x_2878 : f32 = u_xlat36;
            u_xlat36 = ((x_2874 * x_2876) + x_2878);
            let x_2881 : vec4<f32> = u_xlat13;
            let x_2882 : vec2<f32> = vec2<f32>(x_2881.x, x_2881.y);
            let x_2884 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2882.x, x_2882.y, x_2884);
            let x_2891 : vec3<f32> = txVec41;
            let x_2893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2891.xy, x_2891.z);
            u_xlat61.x = x_2893;
            let x_2896 : f32 = u_xlat19.w;
            let x_2898 : f32 = u_xlat61.x;
            let x_2900 : f32 = u_xlat36;
            u_xlat36 = ((x_2896 * x_2898) + x_2900);
            let x_2903 : vec4<f32> = u_xlat13;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.z, x_2903.w);
            let x_2906 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec42;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat61.x = x_2915;
            let x_2918 : f32 = u_xlat11.x;
            let x_2920 : f32 = u_xlat61.x;
            let x_2922 : f32 = u_xlat36;
            u_xlat85 = ((x_2918 * x_2920) + x_2922);
          } else {
            let x_2925 : vec4<f32> = u_xlat10;
            let x_2928 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2931 : vec2<f32> = ((vec2<f32>(x_2925.x, x_2925.y) * vec2<f32>(x_2928.z, x_2928.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2932 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2931.x, x_2931.y, x_2932.z, x_2932.w);
            let x_2934 : vec4<f32> = u_xlat11;
            let x_2936 : vec2<f32> = floor(vec2<f32>(x_2934.x, x_2934.y));
            let x_2937 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2939 : vec4<f32> = u_xlat10;
            let x_2942 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2945 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2939.x, x_2939.y) * vec2<f32>(x_2942.z, x_2942.w)) + -(vec2<f32>(x_2945.x, x_2945.y)));
            let x_2949 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2949.x, x_2949.x, x_2949.y, x_2949.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2952 : vec4<f32> = u_xlat12;
            let x_2954 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2952.x, x_2952.x, x_2952.z, x_2952.z) * vec4<f32>(x_2954.x, x_2954.x, x_2954.z, x_2954.z));
            let x_2957 : vec4<f32> = u_xlat13;
            let x_2959 : vec2<f32> = (vec2<f32>(x_2957.y, x_2957.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2960 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2960.x, x_2959.x, x_2960.z, x_2959.y);
            let x_2962 : vec4<f32> = u_xlat13;
            let x_2965 : vec2<f32> = u_xlat61;
            let x_2967 : vec2<f32> = ((vec2<f32>(x_2962.x, x_2962.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2965));
            let x_2968 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2967.x, x_2968.y, x_2967.y, x_2968.w);
            let x_2970 : vec2<f32> = u_xlat61;
            let x_2972 : vec2<f32> = (-(x_2970) + vec2<f32>(1.0f, 1.0f));
            let x_2973 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2972.x, x_2972.y, x_2973.z, x_2973.w);
            let x_2975 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2975, vec2<f32>(0.0f, 0.0f));
            let x_2977 : vec2<f32> = u_xlat63;
            let x_2979 : vec2<f32> = u_xlat63;
            let x_2981 : vec4<f32> = u_xlat13;
            let x_2983 : vec2<f32> = ((-(x_2977) * x_2979) + vec2<f32>(x_2981.x, x_2981.y));
            let x_2984 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2983.x, x_2983.y, x_2984.z, x_2984.w);
            let x_2986 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2986, vec2<f32>(0.0f, 0.0f));
            let x_2989 : vec2<f32> = u_xlat63;
            let x_2991 : vec2<f32> = u_xlat63;
            let x_2993 : vec4<f32> = u_xlat12;
            let x_2995 : vec2<f32> = ((-(x_2989) * x_2991) + vec2<f32>(x_2993.y, x_2993.w));
            let x_2996 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2995.x, x_2996.y, x_2995.y);
            let x_2998 : vec4<f32> = u_xlat13;
            let x_3001 : vec2<f32> = (vec2<f32>(x_2998.x, x_2998.y) + vec2<f32>(2.0f, 2.0f));
            let x_3002 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3001.x, x_3001.y, x_3002.z, x_3002.w);
            let x_3004 : vec3<f32> = u_xlat37;
            let x_3006 : vec2<f32> = (vec2<f32>(x_3004.x, x_3004.z) + vec2<f32>(2.0f, 2.0f));
            let x_3007 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3007.x, x_3006.x, x_3007.z, x_3006.y);
            let x_3010 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3010 * 0.08163200318813323975f);
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3016 : vec3<f32> = (vec3<f32>(x_3013.z, x_3013.x, x_3013.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3017 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3016.x, x_3016.y, x_3016.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat13;
            let x_3021 : vec2<f32> = (vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3022 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3025 : f32 = u_xlat16.y;
            u_xlat15.x = x_3025;
            let x_3027 : vec2<f32> = u_xlat61;
            let x_3030 : vec2<f32> = ((vec2<f32>(x_3027.x, x_3027.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3031 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3031.x, x_3030.x, x_3031.z, x_3030.y);
            let x_3033 : vec2<f32> = u_xlat61;
            let x_3036 : vec2<f32> = ((vec2<f32>(x_3033.x, x_3033.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3037 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3036.x, x_3037.y, x_3036.y, x_3037.w);
            let x_3040 : f32 = u_xlat12.x;
            u_xlat13.y = x_3040;
            let x_3043 : f32 = u_xlat14.y;
            u_xlat13.w = x_3043;
            let x_3045 : vec4<f32> = u_xlat13;
            let x_3046 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3045 + x_3046);
            let x_3048 : vec2<f32> = u_xlat61;
            let x_3051 : vec2<f32> = ((vec2<f32>(x_3048.y, x_3048.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3052 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3052.x, x_3051.x, x_3052.z, x_3051.y);
            let x_3054 : vec2<f32> = u_xlat61;
            let x_3057 : vec2<f32> = ((vec2<f32>(x_3054.y, x_3054.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3058 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3057.x, x_3058.y, x_3057.y, x_3058.w);
            let x_3061 : f32 = u_xlat12.y;
            u_xlat14.y = x_3061;
            let x_3063 : vec4<f32> = u_xlat14;
            let x_3064 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3063 + x_3064);
            let x_3066 : vec4<f32> = u_xlat13;
            let x_3067 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3066 / x_3067);
            let x_3069 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3069 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3071 : vec4<f32> = u_xlat14;
            let x_3072 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3071 / x_3072);
            let x_3074 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3074 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3076 : vec4<f32> = u_xlat13;
            let x_3079 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3076.w, x_3076.x, x_3076.y, x_3076.z) * vec4<f32>(x_3079.x, x_3079.x, x_3079.x, x_3079.x));
            let x_3082 : vec4<f32> = u_xlat14;
            let x_3085 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3082.x, x_3082.w, x_3082.y, x_3082.z) * vec4<f32>(x_3085.y, x_3085.y, x_3085.y, x_3085.y));
            let x_3088 : vec4<f32> = u_xlat13;
            let x_3089 : vec3<f32> = vec3<f32>(x_3088.y, x_3088.z, x_3088.w);
            let x_3090 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3089.x, x_3090.y, x_3089.y, x_3089.z);
            let x_3093 : f32 = u_xlat14.x;
            u_xlat16.y = x_3093;
            let x_3095 : vec4<f32> = u_xlat11;
            let x_3098 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3101 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.y) * vec4<f32>(x_3098.x, x_3098.y, x_3098.x, x_3098.y)) + vec4<f32>(x_3101.x, x_3101.y, x_3101.z, x_3101.y));
            let x_3104 : vec4<f32> = u_xlat11;
            let x_3107 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3110 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3104.x, x_3104.y) * vec2<f32>(x_3107.x, x_3107.y)) + vec2<f32>(x_3110.w, x_3110.y));
            let x_3114 : f32 = u_xlat16.y;
            u_xlat13.y = x_3114;
            let x_3117 : f32 = u_xlat14.z;
            u_xlat16.y = x_3117;
            let x_3119 : vec4<f32> = u_xlat11;
            let x_3122 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3125 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y) * vec4<f32>(x_3122.x, x_3122.y, x_3122.x, x_3122.y)) + vec4<f32>(x_3125.x, x_3125.y, x_3125.z, x_3125.y));
            let x_3128 : vec4<f32> = u_xlat11;
            let x_3131 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3134 : vec4<f32> = u_xlat16;
            let x_3136 : vec2<f32> = ((vec2<f32>(x_3128.x, x_3128.y) * vec2<f32>(x_3131.x, x_3131.y)) + vec2<f32>(x_3134.w, x_3134.y));
            let x_3137 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3136.x, x_3136.y, x_3137.z, x_3137.w);
            let x_3140 : f32 = u_xlat16.y;
            u_xlat13.z = x_3140;
            let x_3143 : vec4<f32> = u_xlat11;
            let x_3146 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3143.x, x_3143.y, x_3143.x, x_3143.y) * vec4<f32>(x_3146.x, x_3146.y, x_3146.x, x_3146.y)) + vec4<f32>(x_3149.x, x_3149.y, x_3149.x, x_3149.z));
            let x_3153 : f32 = u_xlat14.w;
            u_xlat16.y = x_3153;
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y) * vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y)) + vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3162.y));
            let x_3166 : vec4<f32> = u_xlat11;
            let x_3169 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3172 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3166.x, x_3166.y) * vec2<f32>(x_3169.x, x_3169.y)) + vec2<f32>(x_3172.w, x_3172.y));
            let x_3176 : f32 = u_xlat16.y;
            u_xlat13.w = x_3176;
            let x_3179 : vec4<f32> = u_xlat11;
            let x_3182 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3179.x, x_3179.y) * vec2<f32>(x_3182.x, x_3182.y)) + vec2<f32>(x_3185.x, x_3185.w));
            let x_3188 : vec4<f32> = u_xlat16;
            let x_3189 : vec3<f32> = vec3<f32>(x_3188.x, x_3188.z, x_3188.w);
            let x_3190 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3189.x, x_3190.y, x_3189.y, x_3189.z);
            let x_3192 : vec4<f32> = u_xlat11;
            let x_3195 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3198 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3192.x, x_3192.y, x_3192.x, x_3192.y) * vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y)) + vec4<f32>(x_3198.x, x_3198.y, x_3198.z, x_3198.y));
            let x_3202 : vec4<f32> = u_xlat11;
            let x_3205 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3208 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3202.x, x_3202.y) * vec2<f32>(x_3205.x, x_3205.y)) + vec2<f32>(x_3208.w, x_3208.y));
            let x_3212 : f32 = u_xlat13.x;
            u_xlat14.x = x_3212;
            let x_3214 : vec4<f32> = u_xlat11;
            let x_3217 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3220 : vec4<f32> = u_xlat14;
            let x_3222 : vec2<f32> = ((vec2<f32>(x_3214.x, x_3214.y) * vec2<f32>(x_3217.x, x_3217.y)) + vec2<f32>(x_3220.x, x_3220.y));
            let x_3223 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3222.x, x_3222.y, x_3223.z, x_3223.w);
            let x_3226 : vec4<f32> = u_xlat12;
            let x_3228 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3226.x, x_3226.x, x_3226.x, x_3226.x) * x_3228);
            let x_3231 : vec4<f32> = u_xlat12;
            let x_3233 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3231.y, x_3231.y, x_3231.y, x_3231.y) * x_3233);
            let x_3236 : vec4<f32> = u_xlat12;
            let x_3238 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3236.z, x_3236.z, x_3236.z, x_3236.z) * x_3238);
            let x_3240 : vec4<f32> = u_xlat12;
            let x_3242 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3240.w, x_3240.w, x_3240.w, x_3240.w) * x_3242);
            let x_3245 : vec4<f32> = u_xlat17;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.x, x_3245.y);
            let x_3248 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec43;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat13.x = x_3257;
            let x_3260 : vec4<f32> = u_xlat17;
            let x_3261 : vec2<f32> = vec2<f32>(x_3260.z, x_3260.w);
            let x_3263 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3271 : vec3<f32> = txVec44;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat88 = x_3273;
            let x_3274 : f32 = u_xlat88;
            let x_3276 : f32 = u_xlat22.y;
            u_xlat88 = (x_3274 * x_3276);
            let x_3279 : f32 = u_xlat22.x;
            let x_3281 : f32 = u_xlat13.x;
            let x_3283 : f32 = u_xlat88;
            u_xlat13.x = ((x_3279 * x_3281) + x_3283);
            let x_3287 : vec2<f32> = u_xlat61;
            let x_3289 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec45;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat61.x = x_3298;
            let x_3301 : f32 = u_xlat22.z;
            let x_3303 : f32 = u_xlat61.x;
            let x_3306 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3301 * x_3303) + x_3306);
            let x_3310 : vec4<f32> = u_xlat20;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.x, x_3310.y);
            let x_3313 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3321 : vec3<f32> = txVec46;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat86 = x_3323;
            let x_3325 : f32 = u_xlat22.w;
            let x_3326 : f32 = u_xlat86;
            let x_3329 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3325 * x_3326) + x_3329);
            let x_3333 : vec4<f32> = u_xlat18;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.x, x_3333.y);
            let x_3336 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec47;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat86 = x_3345;
            let x_3347 : f32 = u_xlat23.x;
            let x_3348 : f32 = u_xlat86;
            let x_3351 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3347 * x_3348) + x_3351);
            let x_3355 : vec4<f32> = u_xlat18;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.z, x_3355.w);
            let x_3358 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec48;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat86 = x_3367;
            let x_3369 : f32 = u_xlat23.y;
            let x_3370 : f32 = u_xlat86;
            let x_3373 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3369 * x_3370) + x_3373);
            let x_3377 : vec4<f32> = u_xlat19;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.x, x_3377.y);
            let x_3380 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec49;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat86 = x_3389;
            let x_3391 : f32 = u_xlat23.z;
            let x_3392 : f32 = u_xlat86;
            let x_3395 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3391 * x_3392) + x_3395);
            let x_3399 : vec4<f32> = u_xlat20;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.z, x_3399.w);
            let x_3402 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec50;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat86 = x_3411;
            let x_3413 : f32 = u_xlat23.w;
            let x_3414 : f32 = u_xlat86;
            let x_3417 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3413 * x_3414) + x_3417);
            let x_3421 : vec4<f32> = u_xlat21;
            let x_3422 : vec2<f32> = vec2<f32>(x_3421.x, x_3421.y);
            let x_3424 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec51;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat86 = x_3433;
            let x_3435 : f32 = u_xlat24.x;
            let x_3436 : f32 = u_xlat86;
            let x_3439 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3435 * x_3436) + x_3439);
            let x_3443 : vec4<f32> = u_xlat21;
            let x_3444 : vec2<f32> = vec2<f32>(x_3443.z, x_3443.w);
            let x_3446 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec52;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat86 = x_3455;
            let x_3457 : f32 = u_xlat24.y;
            let x_3458 : f32 = u_xlat86;
            let x_3461 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3457 * x_3458) + x_3461);
            let x_3465 : vec2<f32> = u_xlat38;
            let x_3467 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3474 : vec3<f32> = txVec53;
            let x_3476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3474.xy, x_3474.z);
            u_xlat86 = x_3476;
            let x_3478 : f32 = u_xlat24.z;
            let x_3479 : f32 = u_xlat86;
            let x_3482 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3478 * x_3479) + x_3482);
            let x_3486 : vec2<f32> = u_xlat69;
            let x_3488 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec54;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat86 = x_3497;
            let x_3499 : f32 = u_xlat24.w;
            let x_3500 : f32 = u_xlat86;
            let x_3503 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3499 * x_3500) + x_3503);
            let x_3507 : vec4<f32> = u_xlat16;
            let x_3508 : vec2<f32> = vec2<f32>(x_3507.x, x_3507.y);
            let x_3510 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3508.x, x_3508.y, x_3510);
            let x_3517 : vec3<f32> = txVec55;
            let x_3519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3517.xy, x_3517.z);
            u_xlat86 = x_3519;
            let x_3521 : f32 = u_xlat12.x;
            let x_3522 : f32 = u_xlat86;
            let x_3525 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3521 * x_3522) + x_3525);
            let x_3529 : vec4<f32> = u_xlat16;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.z, x_3529.w);
            let x_3532 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec56;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat86 = x_3541;
            let x_3543 : f32 = u_xlat12.y;
            let x_3544 : f32 = u_xlat86;
            let x_3547 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3543 * x_3544) + x_3547);
            let x_3551 : vec2<f32> = u_xlat64;
            let x_3553 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec57;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat86 = x_3562;
            let x_3564 : f32 = u_xlat12.z;
            let x_3565 : f32 = u_xlat86;
            let x_3568 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3564 * x_3565) + x_3568);
            let x_3572 : vec4<f32> = u_xlat11;
            let x_3573 : vec2<f32> = vec2<f32>(x_3572.x, x_3572.y);
            let x_3575 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3573.x, x_3573.y, x_3575);
            let x_3582 : vec3<f32> = txVec58;
            let x_3584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3582.xy, x_3582.z);
            u_xlat11.x = x_3584;
            let x_3587 : f32 = u_xlat12.w;
            let x_3589 : f32 = u_xlat11.x;
            let x_3592 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3587 * x_3589) + x_3592);
          }
        }
      } else {
        let x_3596 : vec4<f32> = u_xlat10;
        let x_3597 : vec2<f32> = vec2<f32>(x_3596.x, x_3596.y);
        let x_3599 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3597.x, x_3597.y, x_3599);
        let x_3606 : vec3<f32> = txVec59;
        let x_3608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3606.xy, x_3606.z);
        u_xlat85 = x_3608;
      }
      let x_3609 : i32 = u_xlati81;
      let x_3611 : f32 = x_111.x_AdditionalShadowParams[x_3609].x;
      u_xlat10.x = (1.0f + -(x_3611));
      let x_3615 : f32 = u_xlat85;
      let x_3616 : i32 = u_xlati81;
      let x_3618 : f32 = x_111.x_AdditionalShadowParams[x_3616].x;
      let x_3621 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3615 * x_3618) + x_3621);
      let x_3625 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3625);
      let x_3630 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3630 >= 1.0f);
      let x_3632 : bool = u_xlatb60;
      let x_3634 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3632 | x_3634);
      let x_3638 : bool = u_xlatb35.x;
      if (x_3638) {
        x_3639 = 1.0f;
      } else {
        let x_3644 : f32 = u_xlat10.x;
        x_3639 = x_3644;
      }
      let x_3645 : f32 = x_3639;
      u_xlat10.x = x_3645;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3650 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3650) + 1.0f);
    let x_3653 : f32 = u_xlat51;
    let x_3654 : f32 = u_xlat35;
    let x_3657 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3653 * x_3654) + x_3657);
    let x_3660 : f32 = u_xlat83;
    let x_3662 : f32 = u_xlat10.x;
    u_xlat83 = (x_3660 * x_3662);
    let x_3664 : vec4<f32> = u_xlat2;
    let x_3666 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3664.x, x_3664.y, x_3664.z), x_3666);
    let x_3670 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3670, 0.0f, 1.0f);
    let x_3673 : f32 = u_xlat83;
    let x_3675 : f32 = u_xlat10.x;
    u_xlat83 = (x_3673 * x_3675);
    let x_3677 : f32 = u_xlat83;
    let x_3679 : i32 = u_xlati81;
    let x_3681 : vec4<f32> = x_2148.x_AdditionalLightsColor[x_3679];
    let x_3683 : vec3<f32> = (vec3<f32>(x_3677, x_3677, x_3677) * vec3<f32>(x_3681.x, x_3681.y, x_3681.z));
    let x_3684 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3684.w);
    let x_3686 : vec4<f32> = u_xlat8;
    let x_3688 : vec4<f32> = u_xlat9;
    let x_3691 : vec4<f32> = u_xlat6;
    let x_3693 : vec3<f32> = ((vec3<f32>(x_3686.x, x_3686.y, x_3686.z) * vec3<f32>(x_3688.x, x_3688.x, x_3688.x)) + vec3<f32>(x_3691.x, x_3691.y, x_3691.z));
    let x_3694 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3693.x, x_3693.y, x_3693.z, x_3694.w);
    let x_3696 : vec4<f32> = u_xlat8;
    let x_3698 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3696.x, x_3696.y, x_3696.z), vec3<f32>(x_3698.x, x_3698.y, x_3698.z));
    let x_3701 : f32 = u_xlat81;
    u_xlat81 = max(x_3701, 1.17549435e-38f);
    let x_3703 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3703);
    let x_3705 : f32 = u_xlat81;
    let x_3707 : vec4<f32> = u_xlat8;
    let x_3709 : vec3<f32> = (vec3<f32>(x_3705, x_3705, x_3705) * vec3<f32>(x_3707.x, x_3707.y, x_3707.z));
    let x_3710 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3710.w);
    let x_3712 : vec4<f32> = u_xlat2;
    let x_3714 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3712.x, x_3712.y, x_3712.z), vec3<f32>(x_3714.x, x_3714.y, x_3714.z));
    let x_3717 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3717, 0.0f, 1.0f);
    let x_3719 : vec3<f32> = u_xlat34;
    let x_3720 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3719, vec3<f32>(x_3720.x, x_3720.y, x_3720.z));
    let x_3725 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3725, 0.0f, 1.0f);
    let x_3728 : f32 = u_xlat81;
    let x_3729 : f32 = u_xlat81;
    u_xlat81 = (x_3728 * x_3729);
    let x_3731 : f32 = u_xlat81;
    let x_3733 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3731 * x_3733) + 1.00001001358032226562f);
    let x_3737 : f32 = u_xlat8.x;
    let x_3739 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3737 * x_3739);
    let x_3742 : f32 = u_xlat81;
    let x_3743 : f32 = u_xlat81;
    u_xlat81 = (x_3742 * x_3743);
    let x_3746 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3746, 0.10000000149011611938f);
    let x_3749 : f32 = u_xlat81;
    let x_3751 : f32 = u_xlat8.x;
    u_xlat81 = (x_3749 * x_3751);
    let x_3754 : f32 = u_xlat4.x;
    let x_3755 : f32 = u_xlat81;
    u_xlat81 = (x_3754 * x_3755);
    let x_3758 : f32 = u_xlat5.x;
    let x_3759 : f32 = u_xlat81;
    u_xlat81 = (x_3758 / x_3759);
    let x_3761 : vec4<f32> = u_xlat0;
    let x_3763 : f32 = u_xlat81;
    let x_3766 : vec3<f32> = u_xlat29;
    let x_3767 : vec3<f32> = ((vec3<f32>(x_3761.x, x_3761.y, x_3761.z) * vec3<f32>(x_3763, x_3763, x_3763)) + x_3766);
    let x_3768 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3767.x, x_3767.y, x_3767.z, x_3768.w);
    let x_3770 : vec4<f32> = u_xlat8;
    let x_3772 : vec4<f32> = u_xlat10;
    let x_3775 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3770.x, x_3770.y, x_3770.z) * vec3<f32>(x_3772.x, x_3772.y, x_3772.z)) + x_3775);

    continuing {
      let x_3777 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3777 + bitcast<u32>(1i));
    }
  }
  let x_3779 : vec3<f32> = u_xlat30;
  let x_3780 : vec4<f32> = u_xlat1;
  let x_3783 : vec3<f32> = u_xlat28;
  let x_3784 : vec3<f32> = ((x_3779 * vec3<f32>(x_3780.x, x_3780.y, x_3780.w)) + x_3783);
  let x_3785 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3784.x, x_3784.y, x_3784.z, x_3785.w);
  let x_3787 : vec3<f32> = u_xlat32;
  let x_3788 : vec4<f32> = u_xlat0;
  let x_3790 : vec3<f32> = (x_3787 + vec3<f32>(x_3788.x, x_3788.y, x_3788.z));
  let x_3791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3790.x, x_3790.y, x_3790.z, x_3791.w);
  let x_3794 : f32 = u_xlat3.x;
  let x_3796 : f32 = u_xlat3.x;
  u_xlat75 = (x_3794 * -(x_3796));
  let x_3799 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3799);
  let x_3801 : vec4<f32> = u_xlat0;
  let x_3804 : vec4<f32> = x_29.unity_FogColor;
  let x_3807 : vec3<f32> = (vec3<f32>(x_3801.x, x_3801.y, x_3801.z) + -(vec3<f32>(x_3804.x, x_3804.y, x_3804.z)));
  let x_3808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3807.x, x_3807.y, x_3807.z, x_3808.w);
  let x_3812 : f32 = u_xlat75;
  let x_3814 : vec4<f32> = u_xlat0;
  let x_3818 : vec4<f32> = x_29.unity_FogColor;
  let x_3820 : vec3<f32> = ((vec3<f32>(x_3812, x_3812, x_3812) * vec3<f32>(x_3814.x, x_3814.y, x_3814.z)) + vec3<f32>(x_3818.x, x_3818.y, x_3818.z));
  let x_3821 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3820.x, x_3820.y, x_3820.z, x_3821.w);
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


