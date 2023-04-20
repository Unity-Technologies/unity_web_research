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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_108 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

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

var<private> u_xlatb5 : bool;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1804 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2047 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

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

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

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
  var x_1682 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2189 : f32;
  var x_2200 : f32;
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
  u_xlat1 = x_76.x;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat26;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_99 : vec3<f32> = vs_TEXCOORD7;
  let x_111 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres0;
  let x_114 : vec3<f32> = (x_99 + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = vs_TEXCOORD7;
  let x_121 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres1;
  let x_124 : vec3<f32> = (x_118 + -(vec3<f32>(x_121.x, x_121.y, x_121.z)));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_128 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_136 : vec3<f32> = vs_TEXCOORD7;
  let x_139 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres3;
  let x_142 : vec3<f32> = (x_136 + -(vec3<f32>(x_139.x, x_139.y, x_139.z)));
  let x_143 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_151 : vec4<f32> = u_xlat3;
  let x_153 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_151.x, x_151.y, x_151.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec3<f32> = u_xlat4;
  let x_159 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_158, x_159);
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_173 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = x_108.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_173 < x_176);
  let x_179 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_179);
  let x_184 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) + vec3<f32>(x_211.y, x_211.z, x_211.w));
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat2;
  let x_219 : vec3<f32> = max(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_220.x, x_219.x, x_219.y, x_219.z);
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_222, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_230 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_230) + 4.0f);
  let x_237 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_237);
  let x_241 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_241) << bitcast<u32>(2i));
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_247 : i32 = u_xlati2;
  let x_250 : i32 = u_xlati2;
  let x_254 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_247 + 1i) / 4i)][((x_250 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_245.y, x_245.y, x_245.y) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_262 : vec4<f32> = x_108.x_MainLightWorldToShadow[(x_257 / 4i)][(x_259 % 4i)];
  let x_264 : vec3<f32> = vs_TEXCOORD7;
  let x_267 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + x_267);
  let x_269 : i32 = u_xlati2;
  let x_272 : i32 = u_xlati2;
  let x_276 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_269 + 2i) / 4i)][((x_272 + 2i) % 4i)];
  let x_278 : vec3<f32> = vs_TEXCOORD7;
  let x_281 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.z, x_278.z, x_278.z)) + x_281);
  let x_283 : vec3<f32> = u_xlat27;
  let x_284 : i32 = u_xlati2;
  let x_287 : i32 = u_xlati2;
  let x_291 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_284 + 3i) / 4i)][((x_287 + 3i) % 4i)];
  let x_293 : vec3<f32> = (x_283 + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_301 : vec4<f32> = vs_TEXCOORD0;
  let x_304 : f32 = x_28.x_GlobalMipBias.x;
  let x_305 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_301.z, x_301.w), x_304);
  u_xlat3 = x_305;
  let x_310 : vec4<f32> = vs_TEXCOORD0;
  let x_313 : f32 = x_28.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_310.z, x_310.w), x_313);
  u_xlat4 = vec3<f32>(x_314.x, x_314.y, x_314.z);
  let x_316 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec3<f32> = u_xlat26;
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(x_324, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat77;
  u_xlat77 = (x_328 + 0.5f);
  let x_331 : f32 = u_xlat77;
  let x_333 : vec3<f32> = u_xlat4;
  let x_334 : vec3<f32> = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = u_xlat3.w;
  u_xlat77 = max(x_338, 0.00009999999747378752f);
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : f32 = u_xlat77;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) / vec3<f32>(x_343, x_343, x_343));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : f32 = u_xlat1;
  u_xlat77 = ((-(x_348) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_354 : f32 = u_xlat77;
  u_xlat78 = (-(x_354) + 1.0f);
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : f32 = u_xlat77;
  u_xlat4 = (vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359, x_359, x_359));
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : f32 = u_xlat1;
  let x_371 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_380) + 1.0f);
  let x_383 : f32 = u_xlat1;
  let x_384 : f32 = u_xlat1;
  u_xlat77 = (x_383 * x_384);
  let x_386 : f32 = u_xlat77;
  u_xlat77 = max(x_386, 0.0078125f);
  let x_390 : f32 = u_xlat77;
  let x_391 : f32 = u_xlat77;
  u_xlat79 = (x_390 * x_391);
  let x_395 : f32 = u_xlat0.w;
  let x_396 : f32 = u_xlat78;
  u_xlat75 = (x_395 + x_396);
  let x_398 : f32 = u_xlat75;
  u_xlat75 = clamp(x_398, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat77;
  u_xlat78 = ((x_400 * 4.0f) + 2.0f);
  let x_406 : f32 = x_108.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_406);
  let x_408 : bool = u_xlatb5;
  if (x_408) {
    let x_412 : f32 = x_108.x_MainLightShadowParams.y;
    u_xlatb5 = (x_412 == 1.0f);
    let x_414 : bool = u_xlatb5;
    if (x_414) {
      let x_417 : vec4<f32> = u_xlat2;
      let x_421 : vec4<f32> = x_108.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_417.x, x_417.y, x_417.x, x_417.y) + x_421);
      let x_425 : vec4<f32> = u_xlat5;
      let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
      let x_428 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_441 : vec3<f32> = txVec0;
      let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_441.xy, x_441.z);
      u_xlat6.x = x_443;
      let x_446 : vec4<f32> = u_xlat5;
      let x_447 : vec2<f32> = vec2<f32>(x_446.z, x_446.w);
      let x_449 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_447.x, x_447.y, x_449);
      let x_456 : vec3<f32> = txVec1;
      let x_458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_456.xy, x_456.z);
      u_xlat6.y = x_458;
      let x_460 : vec4<f32> = u_xlat2;
      let x_464 : vec4<f32> = x_108.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_460.x, x_460.y, x_460.x, x_460.y) + x_464);
      let x_467 : vec4<f32> = u_xlat5;
      let x_468 : vec2<f32> = vec2<f32>(x_467.x, x_467.y);
      let x_470 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_468.x, x_468.y, x_470);
      let x_477 : vec3<f32> = txVec2;
      let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_477.xy, x_477.z);
      u_xlat6.z = x_479;
      let x_482 : vec4<f32> = u_xlat5;
      let x_483 : vec2<f32> = vec2<f32>(x_482.z, x_482.w);
      let x_485 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_492 : vec3<f32> = txVec3;
      let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_492.xy, x_492.z);
      u_xlat6.w = x_494;
      let x_496 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_496, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_504 : f32 = x_108.x_MainLightShadowParams.y;
      u_xlatb30 = (x_504 == 2.0f);
      let x_506 : bool = u_xlatb30;
      if (x_506) {
        let x_511 : vec4<f32> = u_xlat2;
        let x_515 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_515.z, x_515.w)) + vec2<f32>(0.5f, 0.5f));
        let x_520 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_520);
        let x_522 : vec4<f32> = u_xlat2;
        let x_525 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_528 : vec2<f32> = u_xlat30;
        let x_530 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.z, x_525.w)) + -(x_528));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_534.x, x_534.x, x_534.y, x_534.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_539 : vec4<f32> = u_xlat7;
        let x_541 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_539.x, x_539.x, x_539.z, x_539.z) * vec4<f32>(x_541.x, x_541.x, x_541.z, x_541.z));
        let x_545 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_545.y, x_545.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_550 : vec4<f32> = u_xlat8;
        let x_553 : vec4<f32> = u_xlat6;
        let x_556 : vec2<f32> = ((vec2<f32>(x_550.x, x_550.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_553.x, x_553.y)));
        let x_557 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_556.x, x_557.y, x_556.y, x_557.w);
        let x_559 : vec4<f32> = u_xlat6;
        let x_563 : vec2<f32> = (-(vec2<f32>(x_559.x, x_559.y)) + vec2<f32>(1.0f, 1.0f));
        let x_564 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_567.x, x_567.y), vec2<f32>(0.0f, 0.0f));
        let x_571 : vec2<f32> = u_xlat58;
        let x_573 : vec2<f32> = u_xlat58;
        let x_575 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_571) * x_573) + vec2<f32>(x_575.x, x_575.y));
        let x_578 : vec4<f32> = u_xlat6;
        let x_580 : vec2<f32> = max(vec2<f32>(x_578.x, x_578.y), vec2<f32>(0.0f, 0.0f));
        let x_581 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = u_xlat6;
        let x_589 : vec4<f32> = u_xlat7;
        let x_591 : vec2<f32> = ((-(vec2<f32>(x_583.x, x_583.y)) * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_589.y, x_589.w));
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_594 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_594 + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec4<f32> = u_xlat6;
        let x_598 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) + vec2<f32>(1.0f, 1.0f));
        let x_599 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_602 : vec4<f32> = u_xlat7;
        let x_606 : vec2<f32> = (vec2<f32>(x_602.x, x_602.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_607 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_610 : vec4<f32> = u_xlat8;
        let x_612 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_613 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_615 : vec2<f32> = u_xlat58;
        let x_616 : vec2<f32> = (x_615 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat6;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_623 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat7;
        let x_627 : vec2<f32> = (vec2<f32>(x_625.y, x_625.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_631 : f32 = u_xlat8.x;
        u_xlat9.z = x_631;
        let x_634 : f32 = u_xlat6.x;
        u_xlat9.w = x_634;
        let x_637 : f32 = u_xlat11.x;
        u_xlat10.z = x_637;
        let x_640 : f32 = u_xlat56.x;
        u_xlat10.w = x_640;
        let x_642 : vec4<f32> = u_xlat9;
        let x_644 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_642.z, x_642.w, x_642.x, x_642.z) + vec4<f32>(x_644.z, x_644.w, x_644.x, x_644.z));
        let x_648 : f32 = u_xlat9.y;
        u_xlat8.z = x_648;
        let x_651 : f32 = u_xlat6.y;
        u_xlat8.w = x_651;
        let x_654 : f32 = u_xlat10.y;
        u_xlat11.z = x_654;
        let x_657 : f32 = u_xlat56.y;
        u_xlat11.w = x_657;
        let x_659 : vec4<f32> = u_xlat8;
        let x_661 : vec4<f32> = u_xlat11;
        let x_663 : vec3<f32> = (vec3<f32>(x_659.z, x_659.y, x_659.w) + vec3<f32>(x_661.z, x_661.y, x_661.w));
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat10;
        let x_668 : vec4<f32> = u_xlat7;
        let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.z, x_666.w) / vec3<f32>(x_668.z, x_668.w, x_668.y));
        let x_671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat8;
        let x_678 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat11;
        let x_683 : vec4<f32> = u_xlat6;
        let x_685 : vec3<f32> = (vec3<f32>(x_681.z, x_681.y, x_681.w) / vec3<f32>(x_683.x, x_683.y, x_683.z));
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat9;
        let x_690 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_691 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat8;
        let x_696 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_698 : vec3<f32> = (vec3<f32>(x_693.y, x_693.x, x_693.z) * vec3<f32>(x_696.x, x_696.x, x_696.x));
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
        let x_701 : vec4<f32> = u_xlat9;
        let x_704 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_706 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(x_704.y, x_704.y, x_704.y));
        let x_707 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
        let x_710 : f32 = u_xlat9.x;
        u_xlat8.w = x_710;
        let x_712 : vec2<f32> = u_xlat30;
        let x_715 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y) * vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y)) + vec4<f32>(x_718.y, x_718.w, x_718.x, x_718.w));
        let x_721 : vec2<f32> = u_xlat30;
        let x_723 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_726 : vec4<f32> = u_xlat8;
        let x_728 : vec2<f32> = ((x_721 * vec2<f32>(x_723.x, x_723.y)) + vec2<f32>(x_726.z, x_726.w));
        let x_729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_732 : f32 = u_xlat8.y;
        u_xlat9.w = x_732;
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.y, x_734.z);
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_735.x, x_736.z, x_735.y);
        let x_739 : vec2<f32> = u_xlat30;
        let x_742 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.y));
        let x_748 : vec2<f32> = u_xlat30;
        let x_751 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_748.x, x_748.y, x_748.x, x_748.y) * vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.y)) + vec4<f32>(x_754.w, x_754.y, x_754.w, x_754.z));
        let x_757 : vec2<f32> = u_xlat30;
        let x_760 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_763 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_757.x, x_757.y, x_757.x, x_757.y) * vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y)) + vec4<f32>(x_763.x, x_763.w, x_763.z, x_763.w));
        let x_767 : vec4<f32> = u_xlat6;
        let x_769 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_767.x, x_767.x, x_767.x, x_767.y) * vec4<f32>(x_769.z, x_769.w, x_769.y, x_769.z));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_773.y, x_773.y, x_773.z, x_773.z) * x_775);
        let x_778 : f32 = u_xlat6.z;
        let x_780 : f32 = u_xlat7.y;
        u_xlat30.x = (x_778 * x_780);
        let x_784 : vec4<f32> = u_xlat10;
        let x_785 : vec2<f32> = vec2<f32>(x_784.x, x_784.y);
        let x_787 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_795 : vec3<f32> = txVec4;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat55 = x_797;
        let x_799 : vec4<f32> = u_xlat10;
        let x_800 : vec2<f32> = vec2<f32>(x_799.z, x_799.w);
        let x_802 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_810 : vec3<f32> = txVec5;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat80 = x_812;
        let x_813 : f32 = u_xlat80;
        let x_815 : f32 = u_xlat13.y;
        u_xlat80 = (x_813 * x_815);
        let x_818 : f32 = u_xlat13.x;
        let x_819 : f32 = u_xlat55;
        let x_821 : f32 = u_xlat80;
        u_xlat55 = ((x_818 * x_819) + x_821);
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.x, x_824.y);
        let x_827 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec6;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
        u_xlat80 = x_836;
        let x_838 : f32 = u_xlat13.z;
        let x_839 : f32 = u_xlat80;
        let x_841 : f32 = u_xlat55;
        u_xlat55 = ((x_838 * x_839) + x_841);
        let x_844 : vec4<f32> = u_xlat9;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_854 : vec3<f32> = txVec7;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_854.xy, x_854.z);
        u_xlat80 = x_856;
        let x_858 : f32 = u_xlat13.w;
        let x_859 : f32 = u_xlat80;
        let x_861 : f32 = u_xlat55;
        u_xlat55 = ((x_858 * x_859) + x_861);
        let x_864 : vec4<f32> = u_xlat12;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec8;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat80 = x_876;
        let x_878 : f32 = u_xlat14.x;
        let x_879 : f32 = u_xlat80;
        let x_881 : f32 = u_xlat55;
        u_xlat55 = ((x_878 * x_879) + x_881);
        let x_884 : vec4<f32> = u_xlat12;
        let x_885 : vec2<f32> = vec2<f32>(x_884.z, x_884.w);
        let x_887 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_894 : vec3<f32> = txVec9;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
        u_xlat80 = x_896;
        let x_898 : f32 = u_xlat14.y;
        let x_899 : f32 = u_xlat80;
        let x_901 : f32 = u_xlat55;
        u_xlat55 = ((x_898 * x_899) + x_901);
        let x_904 : vec4<f32> = u_xlat9;
        let x_905 : vec2<f32> = vec2<f32>(x_904.z, x_904.w);
        let x_907 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec10;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat80 = x_916;
        let x_918 : f32 = u_xlat14.z;
        let x_919 : f32 = u_xlat80;
        let x_921 : f32 = u_xlat55;
        u_xlat55 = ((x_918 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat8;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec11;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat80 = x_936;
        let x_938 : f32 = u_xlat14.w;
        let x_939 : f32 = u_xlat80;
        let x_941 : f32 = u_xlat55;
        u_xlat55 = ((x_938 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat8;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec12;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat80 = x_956;
        let x_958 : f32 = u_xlat30.x;
        let x_959 : f32 = u_xlat80;
        let x_961 : f32 = u_xlat55;
        u_xlat5.x = ((x_958 * x_959) + x_961);
      } else {
        let x_965 : vec4<f32> = u_xlat2;
        let x_968 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_968.z, x_968.w)) + vec2<f32>(0.5f, 0.5f));
        let x_972 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_972);
        let x_974 : vec4<f32> = u_xlat2;
        let x_977 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_980 : vec2<f32> = u_xlat30;
        let x_982 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_977.z, x_977.w)) + -(x_980));
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_985.x, x_985.x, x_985.y, x_985.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_988 : vec4<f32> = u_xlat7;
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_988.x, x_988.x, x_988.z, x_988.z) * vec4<f32>(x_990.x, x_990.x, x_990.z, x_990.z));
        let x_993 : vec4<f32> = u_xlat8;
        let x_997 : vec2<f32> = (vec2<f32>(x_993.y, x_993.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1000.x, x_1000.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1003.x, x_1003.y)));
        let x_1007 : vec4<f32> = u_xlat6;
        let x_1010 : vec2<f32> = (-(vec2<f32>(x_1007.x, x_1007.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1011.y, x_1010.y, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1015 : vec2<f32> = min(vec2<f32>(x_1013.x, x_1013.y), vec2<f32>(0.0f, 0.0f));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1021 : vec4<f32> = u_xlat8;
        let x_1024 : vec4<f32> = u_xlat7;
        let x_1026 : vec2<f32> = ((-(vec2<f32>(x_1018.x, x_1018.y)) * vec2<f32>(x_1021.x, x_1021.y)) + vec2<f32>(x_1024.x, x_1024.z));
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1026.x, x_1027.y, x_1026.y, x_1027.w);
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1031 : vec2<f32> = max(vec2<f32>(x_1029.x, x_1029.y), vec2<f32>(0.0f, 0.0f));
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = ((-(vec2<f32>(x_1034.x, x_1034.y)) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.y, x_1040.w));
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1045 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1049 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1049 * 0.08163200318813323975f);
        let x_1053 : vec2<f32> = u_xlat56;
        let x_1056 : vec2<f32> = (vec2<f32>(x_1053.y, x_1053.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1059.x, x_1059.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1063 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1063 * 0.08163200318813323975f);
        let x_1067 : f32 = u_xlat10.y;
        u_xlat8.x = x_1067;
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1076.x, x_1077.z, x_1076.y);
        let x_1079 : vec4<f32> = u_xlat6;
        let x_1083 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1083.x, x_1084.y, x_1083.y, x_1084.w);
        let x_1087 : f32 = u_xlat56.x;
        u_xlat7.y = x_1087;
        let x_1090 : f32 = u_xlat9.y;
        u_xlat7.w = x_1090;
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1092 + x_1093);
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1095.y, x_1095.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1099.x, x_1098.x, x_1099.z, x_1098.y);
        let x_1101 : vec4<f32> = u_xlat6;
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1101.y, x_1101.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1105.w);
        let x_1108 : f32 = u_xlat56.y;
        u_xlat9.y = x_1108;
        let x_1110 : vec4<f32> = u_xlat9;
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1110 + x_1111);
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1113 / x_1114);
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1116 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1123 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1122 / x_1123);
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1125 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1127 : vec4<f32> = u_xlat7;
        let x_1130 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1127.w, x_1127.x, x_1127.y, x_1127.z) * vec4<f32>(x_1130.x, x_1130.x, x_1130.x, x_1130.x));
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1136 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1133.x, x_1133.w, x_1133.y, x_1133.z) * vec4<f32>(x_1136.y, x_1136.y, x_1136.y, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1140 : vec3<f32> = vec3<f32>(x_1139.y, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1140.z);
        let x_1144 : f32 = u_xlat9.x;
        u_xlat10.y = x_1144;
        let x_1146 : vec2<f32> = u_xlat30;
        let x_1149 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y) * vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.y)) + vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.y));
        let x_1155 : vec2<f32> = u_xlat30;
        let x_1157 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1162 : vec2<f32> = ((x_1155 * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1163 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.y = x_1166;
        let x_1169 : f32 = u_xlat9.z;
        u_xlat10.y = x_1169;
        let x_1171 : vec2<f32> = u_xlat30;
        let x_1174 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1181 : vec2<f32> = u_xlat30;
        let x_1183 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1181 * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1190 : f32 = u_xlat10.y;
        u_xlat7.z = x_1190;
        let x_1192 : vec2<f32> = u_xlat30;
        let x_1195 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y) * vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y)) + vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.z));
        let x_1202 : f32 = u_xlat9.w;
        u_xlat10.y = x_1202;
        let x_1205 : vec2<f32> = u_xlat30;
        let x_1208 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1215 : vec2<f32> = u_xlat30;
        let x_1217 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1222 : vec2<f32> = ((x_1215 * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1223 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1222.x, x_1222.y, x_1223.z);
        let x_1226 : f32 = u_xlat10.y;
        u_xlat7.w = x_1226;
        let x_1229 : vec2<f32> = u_xlat30;
        let x_1231 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = ((x_1229 * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.x, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec3<f32> = vec3<f32>(x_1239.x, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1240.x, x_1241.y, x_1240.y, x_1240.z);
        let x_1243 : vec2<f32> = u_xlat30;
        let x_1246 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec2<f32> = u_xlat30;
        let x_1255 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1253 * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.w, x_1258.y));
        let x_1262 : f32 = u_xlat7.x;
        u_xlat9.x = x_1262;
        let x_1264 : vec2<f32> = u_xlat30;
        let x_1266 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat30 = ((x_1264 * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.x, x_1269.y));
        let x_1273 : vec4<f32> = u_xlat6;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1273.x, x_1273.x, x_1273.x, x_1273.x) * x_1275);
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1278.y, x_1278.y, x_1278.y, x_1278.y) * x_1280);
        let x_1283 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1283.z, x_1283.z, x_1283.z, x_1283.z) * x_1285);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1287.w, x_1287.w, x_1287.w, x_1287.w) * x_1289);
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec13;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat80 = x_1304;
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.z, x_1306.w);
        let x_1309 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec14;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat7.x = x_1318;
        let x_1321 : f32 = u_xlat7.x;
        let x_1323 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1321 * x_1323);
        let x_1327 : f32 = u_xlat17.x;
        let x_1328 : f32 = u_xlat80;
        let x_1331 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1327 * x_1328) + x_1331);
        let x_1334 : vec4<f32> = u_xlat12;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec15;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat7.x = x_1346;
        let x_1349 : f32 = u_xlat17.z;
        let x_1351 : f32 = u_xlat7.x;
        let x_1353 : f32 = u_xlat80;
        u_xlat80 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat14;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec16;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat7.x = x_1368;
        let x_1371 : f32 = u_xlat17.w;
        let x_1373 : f32 = u_xlat7.x;
        let x_1375 : f32 = u_xlat80;
        u_xlat80 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat13;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec17;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat7.x = x_1390;
        let x_1393 : f32 = u_xlat18.x;
        let x_1395 : f32 = u_xlat7.x;
        let x_1397 : f32 = u_xlat80;
        u_xlat80 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat13;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.z, x_1400.w);
        let x_1403 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec18;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat7.x = x_1412;
        let x_1415 : f32 = u_xlat18.y;
        let x_1417 : f32 = u_xlat7.x;
        let x_1419 : f32 = u_xlat80;
        u_xlat80 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec2<f32> = u_xlat62;
        let x_1424 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec19;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat7.x = x_1433;
        let x_1436 : f32 = u_xlat18.z;
        let x_1438 : f32 = u_xlat7.x;
        let x_1440 : f32 = u_xlat80;
        u_xlat80 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat14;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.z, x_1443.w);
        let x_1446 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec20;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat7.x = x_1455;
        let x_1458 : f32 = u_xlat18.w;
        let x_1460 : f32 = u_xlat7.x;
        let x_1462 : f32 = u_xlat80;
        u_xlat80 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat15;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec21;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat7.x = x_1477;
        let x_1480 : f32 = u_xlat19.x;
        let x_1482 : f32 = u_xlat7.x;
        let x_1484 : f32 = u_xlat80;
        u_xlat80 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat15;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec22;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat7.x = x_1499;
        let x_1502 : f32 = u_xlat19.y;
        let x_1504 : f32 = u_xlat7.x;
        let x_1506 : f32 = u_xlat80;
        u_xlat80 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec3<f32> = u_xlat32;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec23;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat7.x = x_1521;
        let x_1524 : f32 = u_xlat19.z;
        let x_1526 : f32 = u_xlat7.x;
        let x_1528 : f32 = u_xlat80;
        u_xlat80 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat16;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec24;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat7.x = x_1543;
        let x_1546 : f32 = u_xlat19.w;
        let x_1548 : f32 = u_xlat7.x;
        let x_1550 : f32 = u_xlat80;
        u_xlat80 = ((x_1546 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat10;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.x, x_1553.y);
        let x_1556 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec25;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat7.x = x_1565;
        let x_1568 : f32 = u_xlat6.x;
        let x_1570 : f32 = u_xlat7.x;
        let x_1572 : f32 = u_xlat80;
        u_xlat80 = ((x_1568 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat10;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec26;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat6.x = x_1587;
        let x_1590 : f32 = u_xlat6.y;
        let x_1592 : f32 = u_xlat6.x;
        let x_1594 : f32 = u_xlat80;
        u_xlat80 = ((x_1590 * x_1592) + x_1594);
        let x_1597 : vec2<f32> = u_xlat59;
        let x_1599 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec27;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat6.x = x_1608;
        let x_1611 : f32 = u_xlat6.z;
        let x_1613 : f32 = u_xlat6.x;
        let x_1615 : f32 = u_xlat80;
        u_xlat80 = ((x_1611 * x_1613) + x_1615);
        let x_1618 : vec2<f32> = u_xlat30;
        let x_1620 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec28;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat30.x = x_1629;
        let x_1632 : f32 = u_xlat6.w;
        let x_1634 : f32 = u_xlat30.x;
        let x_1636 : f32 = u_xlat80;
        u_xlat5.x = ((x_1632 * x_1634) + x_1636);
      }
    }
  } else {
    let x_1641 : vec4<f32> = u_xlat2;
    let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
    let x_1644 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
    let x_1651 : vec3<f32> = txVec29;
    let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1651.xy, x_1651.z);
    u_xlat5.x = x_1653;
  }
  let x_1656 : f32 = x_108.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1656) + 1.0f);
  let x_1661 : f32 = u_xlat5.x;
  let x_1663 : f32 = x_108.x_MainLightShadowParams.x;
  let x_1666 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1661 * x_1663) + x_1666);
  let x_1671 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_1671);
  let x_1675 : f32 = u_xlat2.z;
  u_xlatb52 = (x_1675 >= 1.0f);
  let x_1677 : bool = u_xlatb52;
  let x_1678 : bool = u_xlatb27;
  u_xlatb27 = (x_1677 | x_1678);
  let x_1680 : bool = u_xlatb27;
  if (x_1680) {
    x_1682 = 1.0f;
  } else {
    let x_1687 : f32 = u_xlat2.x;
    x_1682 = x_1687;
  }
  let x_1688 : f32 = x_1682;
  u_xlat2.x = x_1688;
  let x_1690 : vec3<f32> = vs_TEXCOORD7;
  let x_1693 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1695 : vec3<f32> = (x_1690 + -(x_1693));
  let x_1696 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat5;
  let x_1700 : vec4<f32> = u_xlat5;
  u_xlat27.x = dot(vec3<f32>(x_1698.x, x_1698.y, x_1698.z), vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1706 : f32 = u_xlat27.x;
  let x_1708 : f32 = x_108.x_MainLightShadowParams.z;
  let x_1711 : f32 = x_108.x_MainLightShadowParams.w;
  u_xlat52 = ((x_1706 * x_1708) + x_1711);
  let x_1713 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1713, 0.0f, 1.0f);
  let x_1716 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_1716) + 1.0f);
  let x_1720 : f32 = u_xlat52;
  let x_1722 : f32 = u_xlat5.x;
  let x_1725 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1720 * x_1722) + x_1725);
  let x_1730 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1730;
  let x_1734 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1734;
  let x_1738 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1738;
  let x_1740 : vec4<f32> = u_xlat5;
  let x_1743 : vec3<f32> = u_xlat26;
  u_xlat52 = dot(-(vec3<f32>(x_1740.x, x_1740.y, x_1740.z)), x_1743);
  let x_1745 : f32 = u_xlat52;
  let x_1746 : f32 = u_xlat52;
  u_xlat52 = (x_1745 + x_1746);
  let x_1748 : vec3<f32> = u_xlat26;
  let x_1749 : f32 = u_xlat52;
  let x_1753 : vec4<f32> = u_xlat5;
  let x_1756 : vec3<f32> = ((x_1748 * -(vec3<f32>(x_1749, x_1749, x_1749))) + -(vec3<f32>(x_1753.x, x_1753.y, x_1753.z)));
  let x_1757 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
  let x_1759 : vec3<f32> = u_xlat26;
  let x_1760 : vec4<f32> = u_xlat5;
  u_xlat52 = dot(x_1759, vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
  let x_1763 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1763, 0.0f, 1.0f);
  let x_1765 : f32 = u_xlat52;
  u_xlat52 = (-(x_1765) + 1.0f);
  let x_1768 : f32 = u_xlat52;
  let x_1769 : f32 = u_xlat52;
  u_xlat52 = (x_1768 * x_1769);
  let x_1771 : f32 = u_xlat52;
  let x_1772 : f32 = u_xlat52;
  u_xlat52 = (x_1771 * x_1772);
  let x_1774 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1774) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1780 : f32 = u_xlat1;
  let x_1781 : f32 = u_xlat80;
  u_xlat1 = (x_1780 * x_1781);
  let x_1783 : f32 = u_xlat1;
  u_xlat1 = (x_1783 * 6.0f);
  let x_1794 : vec4<f32> = u_xlat6;
  let x_1796 : f32 = u_xlat1;
  let x_1797 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1794.x, x_1794.y, x_1794.z), x_1796);
  u_xlat6 = x_1797;
  let x_1799 : f32 = u_xlat6.w;
  u_xlat1 = (x_1799 + -1.0f);
  let x_1806 : f32 = x_1804.unity_SpecCube0_HDR.w;
  let x_1807 : f32 = u_xlat1;
  u_xlat1 = ((x_1806 * x_1807) + 1.0f);
  let x_1810 : f32 = u_xlat1;
  u_xlat1 = max(x_1810, 0.0f);
  let x_1812 : f32 = u_xlat1;
  u_xlat1 = log2(x_1812);
  let x_1814 : f32 = u_xlat1;
  let x_1816 : f32 = x_1804.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1814 * x_1816);
  let x_1818 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1818);
  let x_1820 : f32 = u_xlat1;
  let x_1822 : f32 = x_1804.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1820 * x_1822);
  let x_1824 : vec4<f32> = u_xlat6;
  let x_1826 : f32 = u_xlat1;
  let x_1828 : vec3<f32> = (vec3<f32>(x_1824.x, x_1824.y, x_1824.z) * vec3<f32>(x_1826, x_1826, x_1826));
  let x_1829 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  let x_1831 : f32 = u_xlat77;
  let x_1833 : f32 = u_xlat77;
  let x_1837 : vec2<f32> = ((vec2<f32>(x_1831, x_1831) * vec2<f32>(x_1833, x_1833)) + vec2<f32>(-1.0f, 1.0f));
  let x_1838 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1837.x, x_1837.y, x_1838.z, x_1838.w);
  let x_1841 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1841);
  let x_1843 : vec4<f32> = u_xlat0;
  let x_1846 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1843.x, x_1843.y, x_1843.z)) + vec3<f32>(x_1846, x_1846, x_1846));
  let x_1849 : f32 = u_xlat52;
  let x_1851 : vec3<f32> = u_xlat32;
  let x_1853 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1849, x_1849, x_1849) * x_1851) + vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : f32 = u_xlat1;
  let x_1858 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1856, x_1856, x_1856) * x_1858);
  let x_1860 : vec4<f32> = u_xlat6;
  let x_1862 : vec3<f32> = u_xlat32;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1860.x, x_1860.y, x_1860.z) * x_1862);
  let x_1864 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec4<f32> = u_xlat3;
  let x_1868 : vec3<f32> = u_xlat4;
  let x_1870 : vec4<f32> = u_xlat6;
  let x_1872 : vec3<f32> = ((vec3<f32>(x_1866.x, x_1866.y, x_1866.z) * x_1868) + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  let x_1876 : f32 = u_xlat2.x;
  let x_1878 : f32 = x_1804.unity_LightData.z;
  u_xlat75 = (x_1876 * x_1878);
  let x_1880 : vec3<f32> = u_xlat26;
  let x_1882 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1880, vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
  let x_1885 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1885, 0.0f, 1.0f);
  let x_1887 : f32 = u_xlat75;
  let x_1888 : f32 = u_xlat1;
  u_xlat75 = (x_1887 * x_1888);
  let x_1890 : f32 = u_xlat75;
  let x_1893 : vec4<f32> = x_28.x_MainLightColor;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1895.x, x_1896.y, x_1895.y, x_1895.z);
  let x_1898 : vec4<f32> = u_xlat5;
  let x_1901 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1898.x, x_1898.y, x_1898.z) + vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec4<f32> = u_xlat6;
  let x_1908 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1906.x, x_1906.y, x_1906.z), vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : f32 = u_xlat75;
  u_xlat75 = max(x_1911, 1.17549435e-38f);
  let x_1914 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1914);
  let x_1916 : f32 = u_xlat75;
  let x_1918 : vec4<f32> = u_xlat6;
  let x_1920 : vec3<f32> = (vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
  let x_1921 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
  let x_1923 : vec3<f32> = u_xlat26;
  let x_1924 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1923, vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1927, 0.0f, 1.0f);
  let x_1930 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1932 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1930.x, x_1930.y, x_1930.z), vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1935, 0.0f, 1.0f);
  let x_1937 : f32 = u_xlat75;
  let x_1938 : f32 = u_xlat75;
  u_xlat75 = (x_1937 * x_1938);
  let x_1940 : f32 = u_xlat75;
  let x_1942 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1940 * x_1942) + 1.00001001358032226562f);
  let x_1946 : f32 = u_xlat1;
  let x_1947 : f32 = u_xlat1;
  u_xlat1 = (x_1946 * x_1947);
  let x_1949 : f32 = u_xlat75;
  let x_1950 : f32 = u_xlat75;
  u_xlat75 = (x_1949 * x_1950);
  let x_1952 : f32 = u_xlat1;
  u_xlat1 = max(x_1952, 0.10000000149011611938f);
  let x_1955 : f32 = u_xlat75;
  let x_1956 : f32 = u_xlat1;
  u_xlat75 = (x_1955 * x_1956);
  let x_1958 : f32 = u_xlat78;
  let x_1959 : f32 = u_xlat75;
  u_xlat75 = (x_1958 * x_1959);
  let x_1961 : f32 = u_xlat79;
  let x_1962 : f32 = u_xlat75;
  u_xlat75 = (x_1961 / x_1962);
  let x_1964 : vec4<f32> = u_xlat0;
  let x_1966 : f32 = u_xlat75;
  let x_1969 : vec3<f32> = u_xlat4;
  let x_1970 : vec3<f32> = ((vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1966, x_1966, x_1966)) + x_1969);
  let x_1971 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1974 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1976 : f32 = x_1804.unity_LightData.y;
  u_xlat75 = min(x_1974, x_1976);
  let x_1979 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1979));
  let x_1983 : f32 = u_xlat27.x;
  let x_1986 : f32 = x_108.x_AdditionalShadowFadeParams.x;
  let x_1989 : f32 = x_108.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1983 * x_1986) + x_1989);
  let x_1991 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1991, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2003 : u32 = u_xlatu_loop_1;
    let x_2004 : u32 = u_xlatu75;
    if ((x_2003 < x_2004)) {
    } else {
      break;
    }
    let x_2007 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2007 >> 2u);
    let x_2010 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2010 & 3u));
    let x_2013 : u32 = u_xlatu80;
    let x_2016 : vec4<f32> = x_1804.unity_LightIndices[bitcast<i32>(x_2013)];
    let x_2026 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2031 : vec4<u32> = indexable[x_2026];
    u_xlat80 = dot(x_2016, bitcast<vec4<f32>>(x_2031));
    let x_2035 : f32 = u_xlat80;
    u_xlati80 = i32(x_2035);
    let x_2037 : vec3<f32> = vs_TEXCOORD7;
    let x_2048 : i32 = u_xlati80;
    let x_2050 : vec4<f32> = x_2047.x_AdditionalLightsPosition[x_2048];
    let x_2053 : i32 = u_xlati80;
    let x_2055 : vec4<f32> = x_2047.x_AdditionalLightsPosition[x_2053];
    let x_2057 : vec3<f32> = ((-(x_2037) * vec3<f32>(x_2050.w, x_2050.w, x_2050.w)) + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
    let x_2058 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
    let x_2061 : vec4<f32> = u_xlat8;
    let x_2063 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2061.x, x_2061.y, x_2061.z), vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
    let x_2066 : f32 = u_xlat81;
    u_xlat81 = max(x_2066, 0.00006103515625f);
    let x_2070 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2070);
    let x_2072 : f32 = u_xlat83;
    let x_2074 : vec4<f32> = u_xlat8;
    let x_2076 : vec3<f32> = (vec3<f32>(x_2072, x_2072, x_2072) * vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
    let x_2077 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
    let x_2080 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2080);
    let x_2082 : f32 = u_xlat81;
    let x_2083 : i32 = u_xlati80;
    let x_2085 : f32 = x_2047.x_AdditionalLightsAttenuation[x_2083].x;
    u_xlat81 = (x_2082 * x_2085);
    let x_2087 : f32 = u_xlat81;
    let x_2089 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2087) * x_2089) + 1.0f);
    let x_2092 : f32 = u_xlat81;
    u_xlat81 = max(x_2092, 0.0f);
    let x_2094 : f32 = u_xlat81;
    let x_2095 : f32 = u_xlat81;
    u_xlat81 = (x_2094 * x_2095);
    let x_2097 : f32 = u_xlat81;
    let x_2098 : f32 = u_xlat84;
    u_xlat81 = (x_2097 * x_2098);
    let x_2100 : i32 = u_xlati80;
    let x_2102 : vec4<f32> = x_2047.x_AdditionalLightsSpotDir[x_2100];
    let x_2104 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2102.x, x_2102.y, x_2102.z), vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
    let x_2107 : f32 = u_xlat84;
    let x_2108 : i32 = u_xlati80;
    let x_2110 : f32 = x_2047.x_AdditionalLightsAttenuation[x_2108].z;
    let x_2112 : i32 = u_xlati80;
    let x_2114 : f32 = x_2047.x_AdditionalLightsAttenuation[x_2112].w;
    u_xlat84 = ((x_2107 * x_2110) + x_2114);
    let x_2116 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2116, 0.0f, 1.0f);
    let x_2118 : f32 = u_xlat84;
    let x_2119 : f32 = u_xlat84;
    u_xlat84 = (x_2118 * x_2119);
    let x_2121 : f32 = u_xlat81;
    let x_2122 : f32 = u_xlat84;
    u_xlat81 = (x_2121 * x_2122);
    let x_2126 : i32 = u_xlati80;
    let x_2128 : f32 = x_108.x_AdditionalShadowParams[x_2126].w;
    u_xlati84 = i32(x_2128);
    let x_2133 : i32 = u_xlati84;
    u_xlatb10.x = (x_2133 >= 0i);
    let x_2137 : bool = u_xlatb10.x;
    if (x_2137) {
      let x_2141 : i32 = u_xlati80;
      let x_2143 : f32 = x_108.x_AdditionalShadowParams[x_2141].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2143, x_2143, x_2143, x_2143))));
      let x_2149 : bool = u_xlatb10.x;
      if (x_2149) {
        let x_2152 : vec4<f32> = u_xlat9;
        let x_2155 : vec4<f32> = u_xlat9;
        let x_2158 : vec4<bool> = (abs(vec4<f32>(x_2152.z, x_2152.z, x_2152.y, x_2152.z)) >= abs(vec4<f32>(x_2155.x, x_2155.y, x_2155.x, x_2155.x)));
        u_xlatb10 = vec3<bool>(x_2158.x, x_2158.y, x_2158.z);
        let x_2161 : bool = u_xlatb10.y;
        let x_2163 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2161 & x_2163);
        let x_2167 : vec4<f32> = u_xlat9;
        let x_2170 : vec4<bool> = (-(vec4<f32>(x_2167.z, x_2167.y, x_2167.x, x_2167.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2170.x, x_2170.y, x_2170.z);
        let x_2174 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2174);
        let x_2179 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2179);
        let x_2183 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2183);
        let x_2188 : bool = u_xlatb10.z;
        if (x_2188) {
          let x_2193 : f32 = u_xlat35.z;
          x_2189 = x_2193;
        } else {
          let x_2196 : f32 = u_xlat11.x;
          x_2189 = x_2196;
        }
        let x_2197 : f32 = x_2189;
        u_xlat60 = x_2197;
        let x_2199 : bool = u_xlatb10.x;
        if (x_2199) {
          let x_2204 : f32 = u_xlat35.x;
          x_2200 = x_2204;
        } else {
          let x_2206 : f32 = u_xlat60;
          x_2200 = x_2206;
        }
        let x_2207 : f32 = x_2200;
        u_xlat10.x = x_2207;
        let x_2209 : i32 = u_xlati80;
        let x_2211 : f32 = x_108.x_AdditionalShadowParams[x_2209].w;
        u_xlat35.x = trunc(x_2211);
        let x_2215 : f32 = u_xlat10.x;
        let x_2217 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2215 + x_2217);
        let x_2221 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2221);
      }
      let x_2223 : i32 = u_xlati84;
      u_xlati84 = (x_2223 << bitcast<u32>(2i));
      let x_2225 : vec3<f32> = vs_TEXCOORD7;
      let x_2228 : i32 = u_xlati84;
      let x_2231 : i32 = u_xlati84;
      let x_2235 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_2228 + 1i) / 4i)][((x_2231 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2225.y, x_2225.y, x_2225.y, x_2225.y) * x_2235);
      let x_2237 : i32 = u_xlati84;
      let x_2239 : i32 = u_xlati84;
      let x_2242 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[(x_2237 / 4i)][(x_2239 % 4i)];
      let x_2243 : vec3<f32> = vs_TEXCOORD7;
      let x_2246 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2242 * vec4<f32>(x_2243.x, x_2243.x, x_2243.x, x_2243.x)) + x_2246);
      let x_2248 : i32 = u_xlati84;
      let x_2251 : i32 = u_xlati84;
      let x_2255 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_2248 + 2i) / 4i)][((x_2251 + 2i) % 4i)];
      let x_2256 : vec3<f32> = vs_TEXCOORD7;
      let x_2259 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2255 * vec4<f32>(x_2256.z, x_2256.z, x_2256.z, x_2256.z)) + x_2259);
      let x_2261 : vec4<f32> = u_xlat10;
      let x_2262 : i32 = u_xlati84;
      let x_2265 : i32 = u_xlati84;
      let x_2269 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_2262 + 3i) / 4i)][((x_2265 + 3i) % 4i)];
      u_xlat10 = (x_2261 + x_2269);
      let x_2271 : vec4<f32> = u_xlat10;
      let x_2273 : vec4<f32> = u_xlat10;
      let x_2275 : vec3<f32> = (vec3<f32>(x_2271.x, x_2271.y, x_2271.z) / vec3<f32>(x_2273.w, x_2273.w, x_2273.w));
      let x_2276 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
      let x_2279 : i32 = u_xlati80;
      let x_2281 : f32 = x_108.x_AdditionalShadowParams[x_2279].y;
      u_xlatb84 = (0.0f < x_2281);
      let x_2283 : bool = u_xlatb84;
      if (x_2283) {
        let x_2286 : i32 = u_xlati80;
        let x_2288 : f32 = x_108.x_AdditionalShadowParams[x_2286].y;
        u_xlatb84 = (1.0f == x_2288);
        let x_2290 : bool = u_xlatb84;
        if (x_2290) {
          let x_2293 : vec4<f32> = u_xlat10;
          let x_2297 : vec4<f32> = x_108.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2293.x, x_2293.y, x_2293.x, x_2293.y) + x_2297);
          let x_2300 : vec4<f32> = u_xlat11;
          let x_2301 : vec2<f32> = vec2<f32>(x_2300.x, x_2300.y);
          let x_2303 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2301.x, x_2301.y, x_2303);
          let x_2311 : vec3<f32> = txVec30;
          let x_2313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2311.xy, x_2311.z);
          u_xlat12.x = x_2313;
          let x_2316 : vec4<f32> = u_xlat11;
          let x_2317 : vec2<f32> = vec2<f32>(x_2316.z, x_2316.w);
          let x_2319 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
          let x_2326 : vec3<f32> = txVec31;
          let x_2328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2326.xy, x_2326.z);
          u_xlat12.y = x_2328;
          let x_2330 : vec4<f32> = u_xlat10;
          let x_2334 : vec4<f32> = x_108.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y) + x_2334);
          let x_2337 : vec4<f32> = u_xlat11;
          let x_2338 : vec2<f32> = vec2<f32>(x_2337.x, x_2337.y);
          let x_2340 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2338.x, x_2338.y, x_2340);
          let x_2347 : vec3<f32> = txVec32;
          let x_2349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2347.xy, x_2347.z);
          u_xlat12.z = x_2349;
          let x_2352 : vec4<f32> = u_xlat11;
          let x_2353 : vec2<f32> = vec2<f32>(x_2352.z, x_2352.w);
          let x_2355 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
          let x_2362 : vec3<f32> = txVec33;
          let x_2364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
          u_xlat12.w = x_2364;
          let x_2366 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2366, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2370 : i32 = u_xlati80;
          let x_2372 : f32 = x_108.x_AdditionalShadowParams[x_2370].y;
          u_xlatb85 = (2.0f == x_2372);
          let x_2374 : bool = u_xlatb85;
          if (x_2374) {
            let x_2377 : vec4<f32> = u_xlat10;
            let x_2381 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2384 : vec2<f32> = ((vec2<f32>(x_2377.x, x_2377.y) * vec2<f32>(x_2381.z, x_2381.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2385 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat11;
            let x_2389 : vec2<f32> = floor(vec2<f32>(x_2387.x, x_2387.y));
            let x_2390 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
            let x_2393 : vec4<f32> = u_xlat10;
            let x_2396 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2399 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2393.x, x_2393.y) * vec2<f32>(x_2396.z, x_2396.w)) + -(vec2<f32>(x_2399.x, x_2399.y)));
            let x_2403 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2403.x, x_2403.x, x_2403.y, x_2403.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2406 : vec4<f32> = u_xlat12;
            let x_2408 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2406.x, x_2406.x, x_2406.z, x_2406.z) * vec4<f32>(x_2408.x, x_2408.x, x_2408.z, x_2408.z));
            let x_2411 : vec4<f32> = u_xlat13;
            let x_2413 : vec2<f32> = (vec2<f32>(x_2411.y, x_2411.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2414 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2413.x, x_2414.y, x_2413.y, x_2414.w);
            let x_2416 : vec4<f32> = u_xlat13;
            let x_2419 : vec2<f32> = u_xlat61;
            let x_2421 : vec2<f32> = ((vec2<f32>(x_2416.x, x_2416.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2419));
            let x_2422 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2421.x, x_2421.y, x_2422.z, x_2422.w);
            let x_2425 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2425) + vec2<f32>(1.0f, 1.0f));
            let x_2428 : vec2<f32> = u_xlat61;
            let x_2429 : vec2<f32> = min(x_2428, vec2<f32>(0.0f, 0.0f));
            let x_2430 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat14;
            let x_2435 : vec4<f32> = u_xlat14;
            let x_2438 : vec2<f32> = u_xlat63;
            let x_2439 : vec2<f32> = ((-(vec2<f32>(x_2432.x, x_2432.y)) * vec2<f32>(x_2435.x, x_2435.y)) + x_2438);
            let x_2440 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
            let x_2442 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2442, vec2<f32>(0.0f, 0.0f));
            let x_2444 : vec2<f32> = u_xlat61;
            let x_2446 : vec2<f32> = u_xlat61;
            let x_2448 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2444) * x_2446) + vec2<f32>(x_2448.y, x_2448.w));
            let x_2451 : vec4<f32> = u_xlat14;
            let x_2453 : vec2<f32> = (vec2<f32>(x_2451.x, x_2451.y) + vec2<f32>(1.0f, 1.0f));
            let x_2454 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2453.x, x_2453.y, x_2454.z, x_2454.w);
            let x_2456 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2456 + vec2<f32>(1.0f, 1.0f));
            let x_2458 : vec4<f32> = u_xlat13;
            let x_2460 : vec2<f32> = (vec2<f32>(x_2458.x, x_2458.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2461 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
            let x_2463 : vec2<f32> = u_xlat63;
            let x_2464 : vec2<f32> = (x_2463 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2465 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
            let x_2467 : vec4<f32> = u_xlat14;
            let x_2469 : vec2<f32> = (vec2<f32>(x_2467.x, x_2467.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2470 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec2<f32> = u_xlat61;
            let x_2473 : vec2<f32> = (x_2472 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2474 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2473.x, x_2473.y, x_2474.z, x_2474.w);
            let x_2476 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2476.y, x_2476.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2480 : f32 = u_xlat14.x;
            u_xlat15.z = x_2480;
            let x_2483 : f32 = u_xlat61.x;
            u_xlat15.w = x_2483;
            let x_2486 : f32 = u_xlat16.x;
            u_xlat13.z = x_2486;
            let x_2489 : f32 = u_xlat12.x;
            u_xlat13.w = x_2489;
            let x_2491 : vec4<f32> = u_xlat13;
            let x_2493 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2491.z, x_2491.w, x_2491.x, x_2491.z) + vec4<f32>(x_2493.z, x_2493.w, x_2493.x, x_2493.z));
            let x_2497 : f32 = u_xlat15.y;
            u_xlat14.z = x_2497;
            let x_2500 : f32 = u_xlat61.y;
            u_xlat14.w = x_2500;
            let x_2503 : f32 = u_xlat13.y;
            u_xlat16.z = x_2503;
            let x_2506 : f32 = u_xlat12.z;
            u_xlat16.w = x_2506;
            let x_2508 : vec4<f32> = u_xlat14;
            let x_2510 : vec4<f32> = u_xlat16;
            let x_2512 : vec3<f32> = (vec3<f32>(x_2508.z, x_2508.y, x_2508.w) + vec3<f32>(x_2510.z, x_2510.y, x_2510.w));
            let x_2513 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
            let x_2515 : vec4<f32> = u_xlat13;
            let x_2517 : vec4<f32> = u_xlat17;
            let x_2519 : vec3<f32> = (vec3<f32>(x_2515.x, x_2515.z, x_2515.w) / vec3<f32>(x_2517.z, x_2517.w, x_2517.y));
            let x_2520 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
            let x_2522 : vec4<f32> = u_xlat13;
            let x_2524 : vec3<f32> = (vec3<f32>(x_2522.x, x_2522.y, x_2522.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2525 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
            let x_2527 : vec4<f32> = u_xlat16;
            let x_2529 : vec4<f32> = u_xlat12;
            let x_2531 : vec3<f32> = (vec3<f32>(x_2527.z, x_2527.y, x_2527.w) / vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
            let x_2532 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
            let x_2534 : vec4<f32> = u_xlat14;
            let x_2536 : vec3<f32> = (vec3<f32>(x_2534.x, x_2534.y, x_2534.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2537 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat13;
            let x_2542 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2544 : vec3<f32> = (vec3<f32>(x_2539.y, x_2539.x, x_2539.z) * vec3<f32>(x_2542.x, x_2542.x, x_2542.x));
            let x_2545 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
            let x_2547 : vec4<f32> = u_xlat14;
            let x_2550 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2547.x, x_2547.y, x_2547.z) * vec3<f32>(x_2550.y, x_2550.y, x_2550.y));
            let x_2553 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2556 : f32 = u_xlat14.x;
            u_xlat13.w = x_2556;
            let x_2558 : vec4<f32> = u_xlat11;
            let x_2561 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2564 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2558.x, x_2558.y, x_2558.x, x_2558.y) * vec4<f32>(x_2561.x, x_2561.y, x_2561.x, x_2561.y)) + vec4<f32>(x_2564.y, x_2564.w, x_2564.x, x_2564.w));
            let x_2567 : vec4<f32> = u_xlat11;
            let x_2570 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2573 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2567.x, x_2567.y) * vec2<f32>(x_2570.x, x_2570.y)) + vec2<f32>(x_2573.z, x_2573.w));
            let x_2577 : f32 = u_xlat13.y;
            u_xlat14.w = x_2577;
            let x_2579 : vec4<f32> = u_xlat14;
            let x_2580 : vec2<f32> = vec2<f32>(x_2579.y, x_2579.z);
            let x_2581 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2581.x, x_2580.x, x_2581.z, x_2580.y);
            let x_2583 : vec4<f32> = u_xlat11;
            let x_2586 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2589 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2583.x, x_2583.y, x_2583.x, x_2583.y) * vec4<f32>(x_2586.x, x_2586.y, x_2586.x, x_2586.y)) + vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2589.y));
            let x_2592 : vec4<f32> = u_xlat11;
            let x_2595 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2598 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2592.x, x_2592.y, x_2592.x, x_2592.y) * vec4<f32>(x_2595.x, x_2595.y, x_2595.x, x_2595.y)) + vec4<f32>(x_2598.w, x_2598.y, x_2598.w, x_2598.z));
            let x_2601 : vec4<f32> = u_xlat11;
            let x_2604 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2607 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2601.x, x_2601.y, x_2601.x, x_2601.y) * vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y)) + vec4<f32>(x_2607.x, x_2607.w, x_2607.z, x_2607.w));
            let x_2610 : vec4<f32> = u_xlat12;
            let x_2612 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2610.x, x_2610.x, x_2610.x, x_2610.y) * vec4<f32>(x_2612.z, x_2612.w, x_2612.y, x_2612.z));
            let x_2615 : vec4<f32> = u_xlat12;
            let x_2617 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2615.y, x_2615.y, x_2615.z, x_2615.z) * x_2617);
            let x_2621 : f32 = u_xlat12.z;
            let x_2623 : f32 = u_xlat17.y;
            u_xlat85 = (x_2621 * x_2623);
            let x_2626 : vec4<f32> = u_xlat15;
            let x_2627 : vec2<f32> = vec2<f32>(x_2626.x, x_2626.y);
            let x_2629 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2627.x, x_2627.y, x_2629);
            let x_2636 : vec3<f32> = txVec34;
            let x_2638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2636.xy, x_2636.z);
            u_xlat11.x = x_2638;
            let x_2641 : vec4<f32> = u_xlat15;
            let x_2642 : vec2<f32> = vec2<f32>(x_2641.z, x_2641.w);
            let x_2644 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2642.x, x_2642.y, x_2644);
            let x_2652 : vec3<f32> = txVec35;
            let x_2654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
            u_xlat36 = x_2654;
            let x_2655 : f32 = u_xlat36;
            let x_2657 : f32 = u_xlat18.y;
            u_xlat36 = (x_2655 * x_2657);
            let x_2660 : f32 = u_xlat18.x;
            let x_2662 : f32 = u_xlat11.x;
            let x_2664 : f32 = u_xlat36;
            u_xlat11.x = ((x_2660 * x_2662) + x_2664);
            let x_2668 : vec2<f32> = u_xlat61;
            let x_2670 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2668.x, x_2668.y, x_2670);
            let x_2677 : vec3<f32> = txVec36;
            let x_2679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2677.xy, x_2677.z);
            u_xlat36 = x_2679;
            let x_2681 : f32 = u_xlat18.z;
            let x_2682 : f32 = u_xlat36;
            let x_2685 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2681 * x_2682) + x_2685);
            let x_2689 : vec4<f32> = u_xlat14;
            let x_2690 : vec2<f32> = vec2<f32>(x_2689.x, x_2689.y);
            let x_2692 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2690.x, x_2690.y, x_2692);
            let x_2699 : vec3<f32> = txVec37;
            let x_2701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2699.xy, x_2699.z);
            u_xlat36 = x_2701;
            let x_2703 : f32 = u_xlat18.w;
            let x_2704 : f32 = u_xlat36;
            let x_2707 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2703 * x_2704) + x_2707);
            let x_2711 : vec4<f32> = u_xlat16;
            let x_2712 : vec2<f32> = vec2<f32>(x_2711.x, x_2711.y);
            let x_2714 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2712.x, x_2712.y, x_2714);
            let x_2721 : vec3<f32> = txVec38;
            let x_2723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2721.xy, x_2721.z);
            u_xlat36 = x_2723;
            let x_2725 : f32 = u_xlat19.x;
            let x_2726 : f32 = u_xlat36;
            let x_2729 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2725 * x_2726) + x_2729);
            let x_2733 : vec4<f32> = u_xlat16;
            let x_2734 : vec2<f32> = vec2<f32>(x_2733.z, x_2733.w);
            let x_2736 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2734.x, x_2734.y, x_2736);
            let x_2743 : vec3<f32> = txVec39;
            let x_2745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2743.xy, x_2743.z);
            u_xlat36 = x_2745;
            let x_2747 : f32 = u_xlat19.y;
            let x_2748 : f32 = u_xlat36;
            let x_2751 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2747 * x_2748) + x_2751);
            let x_2755 : vec4<f32> = u_xlat14;
            let x_2756 : vec2<f32> = vec2<f32>(x_2755.z, x_2755.w);
            let x_2758 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2756.x, x_2756.y, x_2758);
            let x_2765 : vec3<f32> = txVec40;
            let x_2767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2765.xy, x_2765.z);
            u_xlat36 = x_2767;
            let x_2769 : f32 = u_xlat19.z;
            let x_2770 : f32 = u_xlat36;
            let x_2773 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2769 * x_2770) + x_2773);
            let x_2777 : vec4<f32> = u_xlat13;
            let x_2778 : vec2<f32> = vec2<f32>(x_2777.x, x_2777.y);
            let x_2780 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2778.x, x_2778.y, x_2780);
            let x_2787 : vec3<f32> = txVec41;
            let x_2789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
            u_xlat36 = x_2789;
            let x_2791 : f32 = u_xlat19.w;
            let x_2792 : f32 = u_xlat36;
            let x_2795 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2791 * x_2792) + x_2795);
            let x_2799 : vec4<f32> = u_xlat13;
            let x_2800 : vec2<f32> = vec2<f32>(x_2799.z, x_2799.w);
            let x_2802 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2800.x, x_2800.y, x_2802);
            let x_2809 : vec3<f32> = txVec42;
            let x_2811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2809.xy, x_2809.z);
            u_xlat36 = x_2811;
            let x_2812 : f32 = u_xlat85;
            let x_2813 : f32 = u_xlat36;
            let x_2816 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2812 * x_2813) + x_2816);
          } else {
            let x_2819 : vec4<f32> = u_xlat10;
            let x_2822 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2825 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2822.z, x_2822.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2826 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
            let x_2828 : vec4<f32> = u_xlat11;
            let x_2830 : vec2<f32> = floor(vec2<f32>(x_2828.x, x_2828.y));
            let x_2831 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat10;
            let x_2836 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.z, x_2836.w)) + -(vec2<f32>(x_2839.x, x_2839.y)));
            let x_2843 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2843.x, x_2843.x, x_2843.y, x_2843.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2846 : vec4<f32> = u_xlat12;
            let x_2848 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2846.x, x_2846.x, x_2846.z, x_2846.z) * vec4<f32>(x_2848.x, x_2848.x, x_2848.z, x_2848.z));
            let x_2851 : vec4<f32> = u_xlat13;
            let x_2853 : vec2<f32> = (vec2<f32>(x_2851.y, x_2851.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2854 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2854.x, x_2853.x, x_2854.z, x_2853.y);
            let x_2856 : vec4<f32> = u_xlat13;
            let x_2859 : vec2<f32> = u_xlat61;
            let x_2861 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2859));
            let x_2862 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2861.x, x_2862.y, x_2861.y, x_2862.w);
            let x_2864 : vec2<f32> = u_xlat61;
            let x_2866 : vec2<f32> = (-(x_2864) + vec2<f32>(1.0f, 1.0f));
            let x_2867 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2866.x, x_2866.y, x_2867.z, x_2867.w);
            let x_2869 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2869, vec2<f32>(0.0f, 0.0f));
            let x_2871 : vec2<f32> = u_xlat63;
            let x_2873 : vec2<f32> = u_xlat63;
            let x_2875 : vec4<f32> = u_xlat13;
            let x_2877 : vec2<f32> = ((-(x_2871) * x_2873) + vec2<f32>(x_2875.x, x_2875.y));
            let x_2878 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2880 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2880, vec2<f32>(0.0f, 0.0f));
            let x_2883 : vec2<f32> = u_xlat63;
            let x_2885 : vec2<f32> = u_xlat63;
            let x_2887 : vec4<f32> = u_xlat12;
            let x_2889 : vec2<f32> = ((-(x_2883) * x_2885) + vec2<f32>(x_2887.y, x_2887.w));
            let x_2890 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2889.x, x_2890.y, x_2889.y);
            let x_2892 : vec4<f32> = u_xlat13;
            let x_2895 : vec2<f32> = (vec2<f32>(x_2892.x, x_2892.y) + vec2<f32>(2.0f, 2.0f));
            let x_2896 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec3<f32> = u_xlat37;
            let x_2900 : vec2<f32> = (vec2<f32>(x_2898.x, x_2898.z) + vec2<f32>(2.0f, 2.0f));
            let x_2901 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2904 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2904 * 0.08163200318813323975f);
            let x_2907 : vec4<f32> = u_xlat12;
            let x_2910 : vec3<f32> = (vec3<f32>(x_2907.z, x_2907.x, x_2907.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2911 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat13;
            let x_2915 : vec2<f32> = (vec2<f32>(x_2913.x, x_2913.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2915.x, x_2915.y, x_2916.z, x_2916.w);
            let x_2919 : f32 = u_xlat16.y;
            u_xlat15.x = x_2919;
            let x_2921 : vec2<f32> = u_xlat61;
            let x_2924 : vec2<f32> = ((vec2<f32>(x_2921.x, x_2921.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2925 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2925.x, x_2924.x, x_2925.z, x_2924.y);
            let x_2927 : vec2<f32> = u_xlat61;
            let x_2930 : vec2<f32> = ((vec2<f32>(x_2927.x, x_2927.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2931 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2930.x, x_2931.y, x_2930.y, x_2931.w);
            let x_2934 : f32 = u_xlat12.x;
            u_xlat13.y = x_2934;
            let x_2937 : f32 = u_xlat14.y;
            u_xlat13.w = x_2937;
            let x_2939 : vec4<f32> = u_xlat13;
            let x_2940 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2939 + x_2940);
            let x_2942 : vec2<f32> = u_xlat61;
            let x_2945 : vec2<f32> = ((vec2<f32>(x_2942.y, x_2942.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2946 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2946.x, x_2945.x, x_2946.z, x_2945.y);
            let x_2948 : vec2<f32> = u_xlat61;
            let x_2951 : vec2<f32> = ((vec2<f32>(x_2948.y, x_2948.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2951.x, x_2952.y, x_2951.y, x_2952.w);
            let x_2955 : f32 = u_xlat12.y;
            u_xlat14.y = x_2955;
            let x_2957 : vec4<f32> = u_xlat14;
            let x_2958 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2957 + x_2958);
            let x_2960 : vec4<f32> = u_xlat13;
            let x_2961 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2960 / x_2961);
            let x_2963 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2963 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2965 / x_2966);
            let x_2968 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2968 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2973 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2970.w, x_2970.x, x_2970.y, x_2970.z) * vec4<f32>(x_2973.x, x_2973.x, x_2973.x, x_2973.x));
            let x_2976 : vec4<f32> = u_xlat14;
            let x_2979 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2976.x, x_2976.w, x_2976.y, x_2976.z) * vec4<f32>(x_2979.y, x_2979.y, x_2979.y, x_2979.y));
            let x_2982 : vec4<f32> = u_xlat13;
            let x_2983 : vec3<f32> = vec3<f32>(x_2982.y, x_2982.z, x_2982.w);
            let x_2984 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2983.x, x_2984.y, x_2983.y, x_2983.z);
            let x_2987 : f32 = u_xlat14.x;
            u_xlat16.y = x_2987;
            let x_2989 : vec4<f32> = u_xlat11;
            let x_2992 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2995 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2989.x, x_2989.y, x_2989.x, x_2989.y) * vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.y)) + vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2995.y));
            let x_2998 : vec4<f32> = u_xlat11;
            let x_3001 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.x, x_3001.y)) + vec2<f32>(x_3004.w, x_3004.y));
            let x_3008 : f32 = u_xlat16.y;
            u_xlat13.y = x_3008;
            let x_3011 : f32 = u_xlat14.z;
            u_xlat16.y = x_3011;
            let x_3013 : vec4<f32> = u_xlat11;
            let x_3016 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3019.y));
            let x_3022 : vec4<f32> = u_xlat11;
            let x_3025 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat16;
            let x_3030 : vec2<f32> = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(x_3025.x, x_3025.y)) + vec2<f32>(x_3028.w, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3034 : f32 = u_xlat16.y;
            u_xlat13.z = x_3034;
            let x_3037 : vec4<f32> = u_xlat11;
            let x_3040 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.x, x_3043.y, x_3043.x, x_3043.z));
            let x_3047 : f32 = u_xlat14.w;
            u_xlat16.y = x_3047;
            let x_3050 : vec4<f32> = u_xlat11;
            let x_3053 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.y) * vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y)) + vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3056.y));
            let x_3060 : vec4<f32> = u_xlat11;
            let x_3063 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3060.x, x_3060.y) * vec2<f32>(x_3063.x, x_3063.y)) + vec2<f32>(x_3066.w, x_3066.y));
            let x_3070 : f32 = u_xlat16.y;
            u_xlat13.w = x_3070;
            let x_3073 : vec4<f32> = u_xlat11;
            let x_3076 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.x, x_3076.y)) + vec2<f32>(x_3079.x, x_3079.w));
            let x_3082 : vec4<f32> = u_xlat16;
            let x_3083 : vec3<f32> = vec3<f32>(x_3082.x, x_3082.z, x_3082.w);
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3083.x, x_3084.y, x_3083.y, x_3083.z);
            let x_3086 : vec4<f32> = u_xlat11;
            let x_3089 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3092 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3086.x, x_3086.y, x_3086.x, x_3086.y) * vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y)) + vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3092.y));
            let x_3096 : vec4<f32> = u_xlat11;
            let x_3099 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3102 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3096.x, x_3096.y) * vec2<f32>(x_3099.x, x_3099.y)) + vec2<f32>(x_3102.w, x_3102.y));
            let x_3106 : f32 = u_xlat13.x;
            u_xlat14.x = x_3106;
            let x_3108 : vec4<f32> = u_xlat11;
            let x_3111 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3114 : vec4<f32> = u_xlat14;
            let x_3116 : vec2<f32> = ((vec2<f32>(x_3108.x, x_3108.y) * vec2<f32>(x_3111.x, x_3111.y)) + vec2<f32>(x_3114.x, x_3114.y));
            let x_3117 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3116.x, x_3116.y, x_3117.z, x_3117.w);
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3122 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3120.x, x_3120.x, x_3120.x, x_3120.x) * x_3122);
            let x_3125 : vec4<f32> = u_xlat12;
            let x_3127 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3125.y, x_3125.y, x_3125.y, x_3125.y) * x_3127);
            let x_3130 : vec4<f32> = u_xlat12;
            let x_3132 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3130.z, x_3130.z, x_3130.z, x_3130.z) * x_3132);
            let x_3134 : vec4<f32> = u_xlat12;
            let x_3136 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3134.w, x_3134.w, x_3134.w, x_3134.w) * x_3136);
            let x_3139 : vec4<f32> = u_xlat17;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
            let x_3142 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3149 : vec3<f32> = txVec43;
            let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
            u_xlat85 = x_3151;
            let x_3153 : vec4<f32> = u_xlat17;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec44;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat13.x = x_3165;
            let x_3168 : f32 = u_xlat13.x;
            let x_3170 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3168 * x_3170);
            let x_3174 : f32 = u_xlat22.x;
            let x_3175 : f32 = u_xlat85;
            let x_3178 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3174 * x_3175) + x_3178);
            let x_3181 : vec2<f32> = u_xlat61;
            let x_3183 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec45;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat61.x = x_3192;
            let x_3195 : f32 = u_xlat22.z;
            let x_3197 : f32 = u_xlat61.x;
            let x_3199 : f32 = u_xlat85;
            u_xlat85 = ((x_3195 * x_3197) + x_3199);
            let x_3202 : vec4<f32> = u_xlat20;
            let x_3203 : vec2<f32> = vec2<f32>(x_3202.x, x_3202.y);
            let x_3205 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec46;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat61.x = x_3214;
            let x_3217 : f32 = u_xlat22.w;
            let x_3219 : f32 = u_xlat61.x;
            let x_3221 : f32 = u_xlat85;
            u_xlat85 = ((x_3217 * x_3219) + x_3221);
            let x_3224 : vec4<f32> = u_xlat18;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
            let x_3227 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec47;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat61.x = x_3236;
            let x_3239 : f32 = u_xlat23.x;
            let x_3241 : f32 = u_xlat61.x;
            let x_3243 : f32 = u_xlat85;
            u_xlat85 = ((x_3239 * x_3241) + x_3243);
            let x_3246 : vec4<f32> = u_xlat18;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.z, x_3246.w);
            let x_3249 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec48;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat61.x = x_3258;
            let x_3261 : f32 = u_xlat23.y;
            let x_3263 : f32 = u_xlat61.x;
            let x_3265 : f32 = u_xlat85;
            u_xlat85 = ((x_3261 * x_3263) + x_3265);
            let x_3268 : vec4<f32> = u_xlat19;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.x, x_3268.y);
            let x_3271 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3278 : vec3<f32> = txVec49;
            let x_3280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3278.xy, x_3278.z);
            u_xlat61.x = x_3280;
            let x_3283 : f32 = u_xlat23.z;
            let x_3285 : f32 = u_xlat61.x;
            let x_3287 : f32 = u_xlat85;
            u_xlat85 = ((x_3283 * x_3285) + x_3287);
            let x_3290 : vec4<f32> = u_xlat20;
            let x_3291 : vec2<f32> = vec2<f32>(x_3290.z, x_3290.w);
            let x_3293 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec50;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat61.x = x_3302;
            let x_3305 : f32 = u_xlat23.w;
            let x_3307 : f32 = u_xlat61.x;
            let x_3309 : f32 = u_xlat85;
            u_xlat85 = ((x_3305 * x_3307) + x_3309);
            let x_3312 : vec4<f32> = u_xlat21;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.x, x_3312.y);
            let x_3315 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec51;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat61.x = x_3324;
            let x_3327 : f32 = u_xlat24.x;
            let x_3329 : f32 = u_xlat61.x;
            let x_3331 : f32 = u_xlat85;
            u_xlat85 = ((x_3327 * x_3329) + x_3331);
            let x_3334 : vec4<f32> = u_xlat21;
            let x_3335 : vec2<f32> = vec2<f32>(x_3334.z, x_3334.w);
            let x_3337 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3335.x, x_3335.y, x_3337);
            let x_3344 : vec3<f32> = txVec52;
            let x_3346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3344.xy, x_3344.z);
            u_xlat61.x = x_3346;
            let x_3349 : f32 = u_xlat24.y;
            let x_3351 : f32 = u_xlat61.x;
            let x_3353 : f32 = u_xlat85;
            u_xlat85 = ((x_3349 * x_3351) + x_3353);
            let x_3356 : vec2<f32> = u_xlat38;
            let x_3358 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec53;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat61.x = x_3367;
            let x_3370 : f32 = u_xlat24.z;
            let x_3372 : f32 = u_xlat61.x;
            let x_3374 : f32 = u_xlat85;
            u_xlat85 = ((x_3370 * x_3372) + x_3374);
            let x_3377 : vec2<f32> = u_xlat69;
            let x_3379 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3377.x, x_3377.y, x_3379);
            let x_3386 : vec3<f32> = txVec54;
            let x_3388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3386.xy, x_3386.z);
            u_xlat61.x = x_3388;
            let x_3391 : f32 = u_xlat24.w;
            let x_3393 : f32 = u_xlat61.x;
            let x_3395 : f32 = u_xlat85;
            u_xlat85 = ((x_3391 * x_3393) + x_3395);
            let x_3398 : vec4<f32> = u_xlat16;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec55;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat61.x = x_3410;
            let x_3413 : f32 = u_xlat12.x;
            let x_3415 : f32 = u_xlat61.x;
            let x_3417 : f32 = u_xlat85;
            u_xlat85 = ((x_3413 * x_3415) + x_3417);
            let x_3420 : vec4<f32> = u_xlat16;
            let x_3421 : vec2<f32> = vec2<f32>(x_3420.z, x_3420.w);
            let x_3423 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec56;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat61.x = x_3432;
            let x_3435 : f32 = u_xlat12.y;
            let x_3437 : f32 = u_xlat61.x;
            let x_3439 : f32 = u_xlat85;
            u_xlat85 = ((x_3435 * x_3437) + x_3439);
            let x_3442 : vec2<f32> = u_xlat64;
            let x_3444 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec57;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat61.x = x_3453;
            let x_3456 : f32 = u_xlat12.z;
            let x_3458 : f32 = u_xlat61.x;
            let x_3460 : f32 = u_xlat85;
            u_xlat85 = ((x_3456 * x_3458) + x_3460);
            let x_3463 : vec4<f32> = u_xlat11;
            let x_3464 : vec2<f32> = vec2<f32>(x_3463.x, x_3463.y);
            let x_3466 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec58;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat11.x = x_3475;
            let x_3478 : f32 = u_xlat12.w;
            let x_3480 : f32 = u_xlat11.x;
            let x_3482 : f32 = u_xlat85;
            u_xlat84 = ((x_3478 * x_3480) + x_3482);
          }
        }
      } else {
        let x_3486 : vec4<f32> = u_xlat10;
        let x_3487 : vec2<f32> = vec2<f32>(x_3486.x, x_3486.y);
        let x_3489 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3487.x, x_3487.y, x_3489);
        let x_3496 : vec3<f32> = txVec59;
        let x_3498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3496.xy, x_3496.z);
        u_xlat84 = x_3498;
      }
      let x_3499 : i32 = u_xlati80;
      let x_3501 : f32 = x_108.x_AdditionalShadowParams[x_3499].x;
      u_xlat10.x = (1.0f + -(x_3501));
      let x_3505 : f32 = u_xlat84;
      let x_3506 : i32 = u_xlati80;
      let x_3508 : f32 = x_108.x_AdditionalShadowParams[x_3506].x;
      let x_3511 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3505 * x_3508) + x_3511);
      let x_3514 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3514);
      let x_3519 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3519 >= 1.0f);
      let x_3521 : bool = u_xlatb35;
      let x_3523 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3521 | x_3523);
      let x_3527 : bool = u_xlatb10.x;
      let x_3528 : f32 = u_xlat84;
      u_xlat84 = select(x_3528, 1.0f, x_3527);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3531 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3531) + 1.0f);
    let x_3535 : f32 = u_xlat1;
    let x_3537 : f32 = u_xlat10.x;
    let x_3539 : f32 = u_xlat84;
    u_xlat84 = ((x_3535 * x_3537) + x_3539);
    let x_3541 : f32 = u_xlat81;
    let x_3542 : f32 = u_xlat84;
    u_xlat81 = (x_3541 * x_3542);
    let x_3544 : vec3<f32> = u_xlat26;
    let x_3545 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3544, vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
    let x_3548 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3548, 0.0f, 1.0f);
    let x_3550 : f32 = u_xlat81;
    let x_3551 : f32 = u_xlat84;
    u_xlat81 = (x_3550 * x_3551);
    let x_3553 : f32 = u_xlat81;
    let x_3555 : i32 = u_xlati80;
    let x_3557 : vec4<f32> = x_2047.x_AdditionalLightsColor[x_3555];
    let x_3559 : vec3<f32> = (vec3<f32>(x_3553, x_3553, x_3553) * vec3<f32>(x_3557.x, x_3557.y, x_3557.z));
    let x_3560 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3559.x, x_3559.y, x_3559.z, x_3560.w);
    let x_3562 : vec4<f32> = u_xlat8;
    let x_3564 : f32 = u_xlat83;
    let x_3567 : vec4<f32> = u_xlat5;
    let x_3569 : vec3<f32> = ((vec3<f32>(x_3562.x, x_3562.y, x_3562.z) * vec3<f32>(x_3564, x_3564, x_3564)) + vec3<f32>(x_3567.x, x_3567.y, x_3567.z));
    let x_3570 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3570.w);
    let x_3572 : vec4<f32> = u_xlat8;
    let x_3574 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3572.x, x_3572.y, x_3572.z), vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
    let x_3577 : f32 = u_xlat80;
    u_xlat80 = max(x_3577, 1.17549435e-38f);
    let x_3579 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3579);
    let x_3581 : f32 = u_xlat80;
    let x_3583 : vec4<f32> = u_xlat8;
    let x_3585 : vec3<f32> = (vec3<f32>(x_3581, x_3581, x_3581) * vec3<f32>(x_3583.x, x_3583.y, x_3583.z));
    let x_3586 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3585.x, x_3585.y, x_3585.z, x_3586.w);
    let x_3588 : vec3<f32> = u_xlat26;
    let x_3589 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(x_3588, vec3<f32>(x_3589.x, x_3589.y, x_3589.z));
    let x_3592 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3592, 0.0f, 1.0f);
    let x_3594 : vec4<f32> = u_xlat9;
    let x_3596 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3594.x, x_3594.y, x_3594.z), vec3<f32>(x_3596.x, x_3596.y, x_3596.z));
    let x_3599 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3599, 0.0f, 1.0f);
    let x_3601 : f32 = u_xlat80;
    let x_3602 : f32 = u_xlat80;
    u_xlat80 = (x_3601 * x_3602);
    let x_3604 : f32 = u_xlat80;
    let x_3606 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3604 * x_3606) + 1.00001001358032226562f);
    let x_3609 : f32 = u_xlat81;
    let x_3610 : f32 = u_xlat81;
    u_xlat81 = (x_3609 * x_3610);
    let x_3612 : f32 = u_xlat80;
    let x_3613 : f32 = u_xlat80;
    u_xlat80 = (x_3612 * x_3613);
    let x_3615 : f32 = u_xlat81;
    u_xlat81 = max(x_3615, 0.10000000149011611938f);
    let x_3617 : f32 = u_xlat80;
    let x_3618 : f32 = u_xlat81;
    u_xlat80 = (x_3617 * x_3618);
    let x_3620 : f32 = u_xlat78;
    let x_3621 : f32 = u_xlat80;
    u_xlat80 = (x_3620 * x_3621);
    let x_3623 : f32 = u_xlat79;
    let x_3624 : f32 = u_xlat80;
    u_xlat80 = (x_3623 / x_3624);
    let x_3626 : vec4<f32> = u_xlat0;
    let x_3628 : f32 = u_xlat80;
    let x_3631 : vec3<f32> = u_xlat4;
    let x_3632 : vec3<f32> = ((vec3<f32>(x_3626.x, x_3626.y, x_3626.z) * vec3<f32>(x_3628, x_3628, x_3628)) + x_3631);
    let x_3633 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
    let x_3635 : vec4<f32> = u_xlat8;
    let x_3637 : vec4<f32> = u_xlat10;
    let x_3640 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3635.x, x_3635.y, x_3635.z) * vec3<f32>(x_3637.x, x_3637.y, x_3637.z)) + x_3640);

    continuing {
      let x_3642 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3642 + bitcast<u32>(1i));
    }
  }
  let x_3644 : vec4<f32> = u_xlat6;
  let x_3646 : vec4<f32> = u_xlat2;
  let x_3649 : vec4<f32> = u_xlat3;
  let x_3651 : vec3<f32> = ((vec3<f32>(x_3644.x, x_3644.y, x_3644.z) * vec3<f32>(x_3646.x, x_3646.z, x_3646.w)) + vec3<f32>(x_3649.x, x_3649.y, x_3649.z));
  let x_3652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3651.x, x_3651.y, x_3651.z, x_3652.w);
  let x_3656 : vec3<f32> = u_xlat32;
  let x_3657 : vec4<f32> = u_xlat0;
  let x_3659 : vec3<f32> = (x_3656 + vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
  let x_3660 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
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


