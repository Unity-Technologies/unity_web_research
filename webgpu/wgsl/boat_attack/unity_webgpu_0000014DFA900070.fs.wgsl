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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_75 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat67 : f32;

var<private> u_xlatu67 : u32;

var<private> u_xlati67 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlatb68 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat69 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb24 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(2) var<uniform> x_1697 : UnityPerDraw;

var<private> u_xlatu69 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1810 : AdditionalLights;

var<private> u_xlati28 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatu70 : u32;

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
  var x_1651 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1968 : f32;
  var x_1977 : f32;
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
  var x_3302 : f32;
  var x_3413 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  let x_53 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_52, x_53);
  let x_58 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_58);
  let x_61 : vec3<f32> = u_xlat1;
  let x_63 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_77 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres0;
  let x_80 : vec3<f32> = (x_67 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec3<f32> = vs_TEXCOORD1;
  let x_87 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres1;
  let x_90 : vec3<f32> = (x_84 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_91 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_94 : vec3<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres2;
  let x_100 : vec3<f32> = (x_94 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_104 : vec3<f32> = vs_TEXCOORD1;
  let x_107 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres3;
  let x_110 : vec3<f32> = (x_104 + -(vec3<f32>(x_107.x, x_107.y, x_107.z)));
  let x_111 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_119 : vec4<f32> = u_xlat3;
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = u_xlat4;
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec4<f32> = u_xlat5;
  let x_135 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_144 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = x_75.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_144 < x_147);
  let x_151 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_151);
  let x_157 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_161);
  let x_165 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_165);
  let x_169 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_169);
  let x_175 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_175);
  let x_179 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_179);
  let x_182 : vec4<f32> = u_xlat2;
  let x_184 : vec4<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + vec3<f32>(x_184.y, x_184.z, x_184.w));
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = max(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_192.x, x_192.y, x_192.z);
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat67 = dot(x_196, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat67;
  u_xlat67 = (-(x_202) + 4.0f);
  let x_207 : f32 = u_xlat67;
  u_xlatu67 = u32(x_207);
  let x_211 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_211) << bitcast<u32>(2i));
  let x_214 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : i32 = u_xlati67;
  let x_219 : i32 = u_xlati67;
  let x_223 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_216 + 1i) / 4i)][((x_219 + 1i) % 4i)];
  let x_225 : vec3<f32> = (vec3<f32>(x_214.y, x_214.y, x_214.y) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : i32 = u_xlati67;
  let x_230 : i32 = u_xlati67;
  let x_233 : vec4<f32> = x_75.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : i32 = u_xlati67;
  let x_246 : i32 = u_xlati67;
  let x_250 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_243 + 2i) / 4i)][((x_246 + 2i) % 4i)];
  let x_252 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : i32 = u_xlati67;
  let x_265 : i32 = u_xlati67;
  let x_269 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_262 + 3i) / 4i)][((x_265 + 3i) % 4i)];
  let x_271 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_276 : f32 = vs_TEXCOORD1.y;
  let x_279 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat67 = (x_276 * x_279);
  let x_282 : f32 = x_28.unity_MatrixV[0i].z;
  let x_284 : f32 = vs_TEXCOORD1.x;
  let x_286 : f32 = u_xlat67;
  u_xlat67 = ((x_282 * x_284) + x_286);
  let x_289 : f32 = x_28.unity_MatrixV[2i].z;
  let x_291 : f32 = vs_TEXCOORD1.z;
  let x_293 : f32 = u_xlat67;
  u_xlat67 = ((x_289 * x_291) + x_293);
  let x_295 : f32 = u_xlat67;
  let x_297 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat67 = (x_295 + x_297);
  let x_299 : f32 = u_xlat67;
  let x_302 : f32 = x_28.x_ProjectionParams.y;
  u_xlat67 = (-(x_299) + -(x_302));
  let x_305 : f32 = u_xlat67;
  u_xlat67 = max(x_305, 0.0f);
  let x_307 : f32 = u_xlat67;
  let x_310 : f32 = x_28.unity_FogParams.x;
  u_xlat67 = (x_307 * x_310);
  let x_318 : vec2<f32> = vs_TEXCOORD7;
  let x_320 : f32 = x_28.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_318, x_320);
  u_xlat3 = x_321;
  let x_326 : vec2<f32> = vs_TEXCOORD7;
  let x_328 : f32 = x_28.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_326, x_328);
  let x_330 : vec3<f32> = vec3<f32>(x_329.x, x_329.y, x_329.z);
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : vec3<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat68 = dot(x_341, vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : f32 = u_xlat68;
  u_xlat68 = (x_345 + 0.5f);
  let x_348 : f32 = u_xlat68;
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : vec3<f32> = (vec3<f32>(x_348, x_348, x_348) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = u_xlat3.w;
  u_xlat68 = max(x_356, 0.00009999999747378752f);
  let x_359 : vec4<f32> = u_xlat3;
  let x_361 : f32 = u_xlat68;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) / vec3<f32>(x_361, x_361, x_361));
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_368 : f32 = x_75.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_368);
  let x_370 : bool = u_xlatb68;
  if (x_370) {
    let x_374 : f32 = x_75.x_MainLightShadowParams.y;
    u_xlatb68 = (x_374 == 1.0f);
    let x_376 : bool = u_xlatb68;
    if (x_376) {
      let x_379 : vec4<f32> = u_xlat2;
      let x_382 : vec4<f32> = x_75.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_379.x, x_379.y, x_379.x, x_379.y) + x_382);
      let x_386 : vec4<f32> = u_xlat4;
      let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
      let x_389 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_387.x, x_387.y, x_389);
      let x_401 : vec3<f32> = txVec0;
      let x_403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_401.xy, x_401.z);
      u_xlat5.x = x_403;
      let x_406 : vec4<f32> = u_xlat4;
      let x_407 : vec2<f32> = vec2<f32>(x_406.z, x_406.w);
      let x_409 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_407.x, x_407.y, x_409);
      let x_416 : vec3<f32> = txVec1;
      let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
      u_xlat5.y = x_418;
      let x_420 : vec4<f32> = u_xlat2;
      let x_424 : vec4<f32> = x_75.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_420.x, x_420.y, x_420.x, x_420.y) + x_424);
      let x_427 : vec4<f32> = u_xlat4;
      let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
      let x_430 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_428.x, x_428.y, x_430);
      let x_437 : vec3<f32> = txVec2;
      let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
      u_xlat5.z = x_439;
      let x_442 : vec4<f32> = u_xlat4;
      let x_443 : vec2<f32> = vec2<f32>(x_442.z, x_442.w);
      let x_445 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_443.x, x_443.y, x_445);
      let x_452 : vec3<f32> = txVec3;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_452.xy, x_452.z);
      u_xlat5.w = x_454;
      let x_456 : vec4<f32> = u_xlat5;
      u_xlat68 = dot(x_456, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_463 : f32 = x_75.x_MainLightShadowParams.y;
      u_xlatb69 = (x_463 == 2.0f);
      let x_465 : bool = u_xlatb69;
      if (x_465) {
        let x_468 : vec4<f32> = u_xlat2;
        let x_472 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_476 : vec2<f32> = ((vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_472.z, x_472.w)) + vec2<f32>(0.5f, 0.5f));
        let x_477 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec4<f32> = u_xlat4;
        let x_481 : vec2<f32> = floor(vec2<f32>(x_479.x, x_479.y));
        let x_482 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_486 : vec4<f32> = u_xlat2;
        let x_489 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_492 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_486.x, x_486.y) * vec2<f32>(x_489.z, x_489.w)) + -(vec2<f32>(x_492.x, x_492.y)));
        let x_496 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_496.x, x_496.x, x_496.y, x_496.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_501 : vec4<f32> = u_xlat5;
        let x_503 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_501.x, x_501.x, x_501.z, x_501.z) * vec4<f32>(x_503.x, x_503.x, x_503.z, x_503.z));
        let x_506 : vec4<f32> = u_xlat6;
        let x_510 : vec2<f32> = (vec2<f32>(x_506.y, x_506.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_511 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_510.x, x_511.y, x_510.y, x_511.w);
        let x_513 : vec4<f32> = u_xlat6;
        let x_516 : vec2<f32> = u_xlat48;
        let x_518 : vec2<f32> = ((vec2<f32>(x_513.x, x_513.z) * vec2<f32>(0.5f, 0.5f)) + -(x_516));
        let x_519 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_522 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_522) + vec2<f32>(1.0f, 1.0f));
        let x_527 : vec2<f32> = u_xlat48;
        let x_529 : vec2<f32> = min(x_527, vec2<f32>(0.0f, 0.0f));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = u_xlat7;
        let x_538 : vec2<f32> = u_xlat50;
        let x_539 : vec2<f32> = ((-(vec2<f32>(x_532.x, x_532.y)) * vec2<f32>(x_535.x, x_535.y)) + x_538);
        let x_540 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_542, vec2<f32>(0.0f, 0.0f));
        let x_544 : vec2<f32> = u_xlat48;
        let x_546 : vec2<f32> = u_xlat48;
        let x_548 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_544) * x_546) + vec2<f32>(x_548.y, x_548.w));
        let x_551 : vec4<f32> = u_xlat7;
        let x_553 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) + vec2<f32>(1.0f, 1.0f));
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_556 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_556 + vec2<f32>(1.0f, 1.0f));
        let x_559 : vec4<f32> = u_xlat6;
        let x_563 : vec2<f32> = (vec2<f32>(x_559.x, x_559.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_564 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
        let x_566 : vec2<f32> = u_xlat50;
        let x_567 : vec2<f32> = (x_566 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec4<f32> = u_xlat7;
        let x_572 : vec2<f32> = (vec2<f32>(x_570.x, x_570.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
        let x_576 : vec2<f32> = u_xlat48;
        let x_577 : vec2<f32> = (x_576 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_578 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_580.y, x_580.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_584 : f32 = u_xlat7.x;
        u_xlat8.z = x_584;
        let x_587 : f32 = u_xlat48.x;
        u_xlat8.w = x_587;
        let x_590 : f32 = u_xlat9.x;
        u_xlat6.z = x_590;
        let x_593 : f32 = u_xlat5.x;
        u_xlat6.w = x_593;
        let x_596 : vec4<f32> = u_xlat6;
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_596.z, x_596.w, x_596.x, x_596.z) + vec4<f32>(x_598.z, x_598.w, x_598.x, x_598.z));
        let x_602 : f32 = u_xlat8.y;
        u_xlat7.z = x_602;
        let x_605 : f32 = u_xlat48.y;
        u_xlat7.w = x_605;
        let x_608 : f32 = u_xlat6.y;
        u_xlat9.z = x_608;
        let x_611 : f32 = u_xlat5.z;
        u_xlat9.w = x_611;
        let x_613 : vec4<f32> = u_xlat7;
        let x_615 : vec4<f32> = u_xlat9;
        let x_617 : vec3<f32> = (vec3<f32>(x_613.z, x_613.y, x_613.w) + vec3<f32>(x_615.z, x_615.y, x_615.w));
        let x_618 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat6;
        let x_622 : vec4<f32> = u_xlat10;
        let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.z, x_620.w) / vec3<f32>(x_622.z, x_622.w, x_622.y));
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat6;
        let x_632 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat9;
        let x_637 : vec4<f32> = u_xlat5;
        let x_639 : vec3<f32> = (vec3<f32>(x_635.z, x_635.y, x_635.w) / vec3<f32>(x_637.x, x_637.y, x_637.z));
        let x_640 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat7;
        let x_644 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_645 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat6;
        let x_650 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_652 : vec3<f32> = (vec3<f32>(x_647.y, x_647.x, x_647.z) * vec3<f32>(x_650.x, x_650.x, x_650.x));
        let x_653 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat7;
        let x_658 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_660 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_658.y, x_658.y, x_658.y));
        let x_661 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_664 : f32 = u_xlat7.x;
        u_xlat6.w = x_664;
        let x_666 : vec4<f32> = u_xlat4;
        let x_669 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_672 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y) * vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y)) + vec4<f32>(x_672.y, x_672.w, x_672.x, x_672.w));
        let x_675 : vec4<f32> = u_xlat4;
        let x_678 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_681 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_675.x, x_675.y) * vec2<f32>(x_678.x, x_678.y)) + vec2<f32>(x_681.z, x_681.w));
        let x_685 : f32 = u_xlat6.y;
        u_xlat7.w = x_685;
        let x_687 : vec4<f32> = u_xlat7;
        let x_688 : vec2<f32> = vec2<f32>(x_687.y, x_687.z);
        let x_689 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_689.x, x_688.x, x_689.z, x_688.y);
        let x_691 : vec4<f32> = u_xlat4;
        let x_694 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_697 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y) * vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.y)) + vec4<f32>(x_697.x, x_697.y, x_697.z, x_697.y));
        let x_700 : vec4<f32> = u_xlat4;
        let x_703 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_700.x, x_700.y, x_700.x, x_700.y) * vec4<f32>(x_703.x, x_703.y, x_703.x, x_703.y)) + vec4<f32>(x_706.w, x_706.y, x_706.w, x_706.z));
        let x_709 : vec4<f32> = u_xlat4;
        let x_712 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_715 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_709.x, x_709.y, x_709.x, x_709.y) * vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y)) + vec4<f32>(x_715.x, x_715.w, x_715.z, x_715.w));
        let x_719 : vec4<f32> = u_xlat5;
        let x_721 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_719.x, x_719.x, x_719.x, x_719.y) * vec4<f32>(x_721.z, x_721.w, x_721.y, x_721.z));
        let x_725 : vec4<f32> = u_xlat5;
        let x_727 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_725.y, x_725.y, x_725.z, x_725.z) * x_727);
        let x_731 : f32 = u_xlat5.z;
        let x_733 : f32 = u_xlat10.y;
        u_xlat69 = (x_731 * x_733);
        let x_736 : vec4<f32> = u_xlat8;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_746 : vec3<f32> = txVec4;
        let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_746.xy, x_746.z);
        u_xlat4.x = x_748;
        let x_751 : vec4<f32> = u_xlat8;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_762 : vec3<f32> = txVec5;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
        u_xlat26 = x_764;
        let x_765 : f32 = u_xlat26;
        let x_767 : f32 = u_xlat11.y;
        u_xlat26 = (x_765 * x_767);
        let x_770 : f32 = u_xlat11.x;
        let x_772 : f32 = u_xlat4.x;
        let x_774 : f32 = u_xlat26;
        u_xlat4.x = ((x_770 * x_772) + x_774);
        let x_778 : vec2<f32> = u_xlat48;
        let x_780 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec6;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_787.xy, x_787.z);
        u_xlat26 = x_789;
        let x_791 : f32 = u_xlat11.z;
        let x_792 : f32 = u_xlat26;
        let x_795 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_791 * x_792) + x_795);
        let x_799 : vec4<f32> = u_xlat7;
        let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
        let x_802 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec7;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_809.xy, x_809.z);
        u_xlat26 = x_811;
        let x_813 : f32 = u_xlat11.w;
        let x_814 : f32 = u_xlat26;
        let x_817 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_813 * x_814) + x_817);
        let x_821 : vec4<f32> = u_xlat9;
        let x_822 : vec2<f32> = vec2<f32>(x_821.x, x_821.y);
        let x_824 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec8;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat26 = x_833;
        let x_835 : f32 = u_xlat12.x;
        let x_836 : f32 = u_xlat26;
        let x_839 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_835 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat9;
        let x_844 : vec2<f32> = vec2<f32>(x_843.z, x_843.w);
        let x_846 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec9;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat26 = x_855;
        let x_857 : f32 = u_xlat12.y;
        let x_858 : f32 = u_xlat26;
        let x_861 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_857 * x_858) + x_861);
        let x_865 : vec4<f32> = u_xlat7;
        let x_866 : vec2<f32> = vec2<f32>(x_865.z, x_865.w);
        let x_868 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec10;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat26 = x_877;
        let x_879 : f32 = u_xlat12.z;
        let x_880 : f32 = u_xlat26;
        let x_883 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_879 * x_880) + x_883);
        let x_887 : vec4<f32> = u_xlat6;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_890 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec11;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat26 = x_899;
        let x_901 : f32 = u_xlat12.w;
        let x_902 : f32 = u_xlat26;
        let x_905 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_901 * x_902) + x_905);
        let x_909 : vec4<f32> = u_xlat6;
        let x_910 : vec2<f32> = vec2<f32>(x_909.z, x_909.w);
        let x_912 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec12;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat26 = x_921;
        let x_922 : f32 = u_xlat69;
        let x_923 : f32 = u_xlat26;
        let x_926 : f32 = u_xlat4.x;
        u_xlat68 = ((x_922 * x_923) + x_926);
      } else {
        let x_929 : vec4<f32> = u_xlat2;
        let x_932 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_935 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.w)) + vec2<f32>(0.5f, 0.5f));
        let x_936 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat4;
        let x_940 : vec2<f32> = floor(vec2<f32>(x_938.x, x_938.y));
        let x_941 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat2;
        let x_946 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_949 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_943.x, x_943.y) * vec2<f32>(x_946.z, x_946.w)) + -(vec2<f32>(x_949.x, x_949.y)));
        let x_953 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_953.x, x_953.x, x_953.y, x_953.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_956 : vec4<f32> = u_xlat5;
        let x_958 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_956.x, x_956.x, x_956.z, x_956.z) * vec4<f32>(x_958.x, x_958.x, x_958.z, x_958.z));
        let x_961 : vec4<f32> = u_xlat6;
        let x_965 : vec2<f32> = (vec2<f32>(x_961.y, x_961.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat6;
        let x_971 : vec2<f32> = u_xlat48;
        let x_973 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.z) * vec2<f32>(0.5f, 0.5f)) + -(x_971));
        let x_974 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_973.x, x_974.y, x_973.y, x_974.w);
        let x_976 : vec2<f32> = u_xlat48;
        let x_978 : vec2<f32> = (-(x_976) + vec2<f32>(1.0f, 1.0f));
        let x_979 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_981, vec2<f32>(0.0f, 0.0f));
        let x_983 : vec2<f32> = u_xlat50;
        let x_985 : vec2<f32> = u_xlat50;
        let x_987 : vec4<f32> = u_xlat6;
        let x_989 : vec2<f32> = ((-(x_983) * x_985) + vec2<f32>(x_987.x, x_987.y));
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_992, vec2<f32>(0.0f, 0.0f));
        let x_995 : vec2<f32> = u_xlat50;
        let x_997 : vec2<f32> = u_xlat50;
        let x_999 : vec4<f32> = u_xlat5;
        let x_1001 : vec2<f32> = ((-(x_995) * x_997) + vec2<f32>(x_999.y, x_999.w));
        let x_1002 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1001.x, x_1002.y, x_1001.y);
        let x_1004 : vec4<f32> = u_xlat6;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1004.x, x_1004.y) + vec2<f32>(2.0f, 2.0f));
        let x_1008 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec3<f32> = u_xlat27;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1010.x, x_1010.z) + vec2<f32>(2.0f, 2.0f));
        let x_1013 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1013.x, x_1012.x, x_1013.z, x_1012.y);
        let x_1016 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1016 * 0.08163200318813323975f);
        let x_1020 : vec4<f32> = u_xlat5;
        let x_1023 : vec3<f32> = (vec3<f32>(x_1020.z, x_1020.x, x_1020.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat6;
        let x_1029 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1030 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1033 : f32 = u_xlat9.y;
        u_xlat8.x = x_1033;
        let x_1035 : vec2<f32> = u_xlat48;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec2<f32> = u_xlat48;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1050 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1050.w);
        let x_1053 : f32 = u_xlat5.x;
        u_xlat6.y = x_1053;
        let x_1056 : f32 = u_xlat7.y;
        u_xlat6.w = x_1056;
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1058 + x_1059);
        let x_1061 : vec2<f32> = u_xlat48;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1061.y, x_1061.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec2<f32> = u_xlat48;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1067.y, x_1067.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1070.x, x_1071.y, x_1070.y, x_1071.w);
        let x_1074 : f32 = u_xlat5.y;
        u_xlat7.y = x_1074;
        let x_1076 : vec4<f32> = u_xlat7;
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1076 + x_1077);
        let x_1079 : vec4<f32> = u_xlat6;
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1079 / x_1080);
        let x_1082 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1082 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1088 : vec4<f32> = u_xlat7;
        let x_1089 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1088 / x_1089);
        let x_1091 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1091 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1093 : vec4<f32> = u_xlat6;
        let x_1096 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1093.w, x_1093.x, x_1093.y, x_1093.z) * vec4<f32>(x_1096.x, x_1096.x, x_1096.x, x_1096.x));
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1102 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1099.x, x_1099.w, x_1099.y, x_1099.z) * vec4<f32>(x_1102.y, x_1102.y, x_1102.y, x_1102.y));
        let x_1105 : vec4<f32> = u_xlat6;
        let x_1106 : vec3<f32> = vec3<f32>(x_1105.y, x_1105.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1106.z);
        let x_1110 : f32 = u_xlat7.x;
        u_xlat9.y = x_1110;
        let x_1112 : vec4<f32> = u_xlat4;
        let x_1115 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y) * vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) + vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1118.y));
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.w, x_1127.y));
        let x_1131 : f32 = u_xlat9.y;
        u_xlat6.y = x_1131;
        let x_1134 : f32 = u_xlat7.z;
        u_xlat9.y = x_1134;
        let x_1136 : vec4<f32> = u_xlat4;
        let x_1139 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y) * vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y)) + vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1142.y));
        let x_1145 : vec4<f32> = u_xlat4;
        let x_1148 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.w, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : f32 = u_xlat9.y;
        u_xlat6.z = x_1157;
        let x_1160 : vec4<f32> = u_xlat4;
        let x_1163 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y) * vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y)) + vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.z));
        let x_1170 : f32 = u_xlat7.w;
        u_xlat9.y = x_1170;
        let x_1173 : vec4<f32> = u_xlat4;
        let x_1176 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.y));
        let x_1183 : vec4<f32> = u_xlat4;
        let x_1186 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.w, x_1189.y));
        let x_1192 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1191.x, x_1191.y, x_1192.z);
        let x_1195 : f32 = u_xlat9.y;
        u_xlat6.w = x_1195;
        let x_1198 : vec4<f32> = u_xlat4;
        let x_1201 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.x, x_1204.w));
        let x_1207 : vec4<f32> = u_xlat9;
        let x_1208 : vec3<f32> = vec3<f32>(x_1207.x, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1208.x, x_1209.y, x_1208.y, x_1208.z);
        let x_1211 : vec4<f32> = u_xlat4;
        let x_1214 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1221 : vec4<f32> = u_xlat4;
        let x_1224 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1227.w, x_1227.y));
        let x_1231 : f32 = u_xlat6.x;
        u_xlat7.x = x_1231;
        let x_1233 : vec4<f32> = u_xlat4;
        let x_1236 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat7;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.y) * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.x, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1245 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1245.x, x_1245.x, x_1245.x, x_1245.x) * x_1247);
        let x_1250 : vec4<f32> = u_xlat5;
        let x_1252 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1250.y, x_1250.y, x_1250.y, x_1250.y) * x_1252);
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1255.z, x_1255.z, x_1255.z, x_1255.z) * x_1257);
        let x_1259 : vec4<f32> = u_xlat5;
        let x_1261 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1259.w, x_1259.w, x_1259.w, x_1259.w) * x_1261);
        let x_1264 : vec4<f32> = u_xlat10;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.x, x_1264.y);
        let x_1267 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec13;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat69 = x_1276;
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.z, x_1278.w);
        let x_1281 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec14;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat6.x = x_1290;
        let x_1293 : f32 = u_xlat6.x;
        let x_1295 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1293 * x_1295);
        let x_1299 : f32 = u_xlat15.x;
        let x_1300 : f32 = u_xlat69;
        let x_1303 : f32 = u_xlat6.x;
        u_xlat69 = ((x_1299 * x_1300) + x_1303);
        let x_1306 : vec2<f32> = u_xlat48;
        let x_1308 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec15;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat48.x = x_1317;
        let x_1320 : f32 = u_xlat15.z;
        let x_1322 : f32 = u_xlat48.x;
        let x_1324 : f32 = u_xlat69;
        u_xlat69 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat13;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec16;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat48.x = x_1339;
        let x_1342 : f32 = u_xlat15.w;
        let x_1344 : f32 = u_xlat48.x;
        let x_1346 : f32 = u_xlat69;
        u_xlat69 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec17;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat48.x = x_1361;
        let x_1364 : f32 = u_xlat16.x;
        let x_1366 : f32 = u_xlat48.x;
        let x_1368 : f32 = u_xlat69;
        u_xlat69 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat11;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec18;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat48.x = x_1383;
        let x_1386 : f32 = u_xlat16.y;
        let x_1388 : f32 = u_xlat48.x;
        let x_1390 : f32 = u_xlat69;
        u_xlat69 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat12;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec19;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat48.x = x_1405;
        let x_1408 : f32 = u_xlat16.z;
        let x_1410 : f32 = u_xlat48.x;
        let x_1412 : f32 = u_xlat69;
        u_xlat69 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec4<f32> = u_xlat13;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.z, x_1415.w);
        let x_1418 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec20;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat48.x = x_1427;
        let x_1430 : f32 = u_xlat16.w;
        let x_1432 : f32 = u_xlat48.x;
        let x_1434 : f32 = u_xlat69;
        u_xlat69 = ((x_1430 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat14;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec21;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat48.x = x_1449;
        let x_1452 : f32 = u_xlat17.x;
        let x_1454 : f32 = u_xlat48.x;
        let x_1456 : f32 = u_xlat69;
        u_xlat69 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat14;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec22;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat48.x = x_1471;
        let x_1474 : f32 = u_xlat17.y;
        let x_1476 : f32 = u_xlat48.x;
        let x_1478 : f32 = u_xlat69;
        u_xlat69 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec3<f32> = u_xlat28;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec23;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat48.x = x_1493;
        let x_1496 : f32 = u_xlat17.z;
        let x_1498 : f32 = u_xlat48.x;
        let x_1500 : f32 = u_xlat69;
        u_xlat69 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec2<f32> = u_xlat56;
        let x_1505 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec24;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat48.x = x_1514;
        let x_1517 : f32 = u_xlat17.w;
        let x_1519 : f32 = u_xlat48.x;
        let x_1521 : f32 = u_xlat69;
        u_xlat69 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat9;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec25;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat48.x = x_1536;
        let x_1539 : f32 = u_xlat5.x;
        let x_1541 : f32 = u_xlat48.x;
        let x_1543 : f32 = u_xlat69;
        u_xlat69 = ((x_1539 * x_1541) + x_1543);
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.z, x_1546.w);
        let x_1549 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec26;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1556.xy, x_1556.z);
        u_xlat48.x = x_1558;
        let x_1561 : f32 = u_xlat5.y;
        let x_1563 : f32 = u_xlat48.x;
        let x_1565 : f32 = u_xlat69;
        u_xlat69 = ((x_1561 * x_1563) + x_1565);
        let x_1568 : vec2<f32> = u_xlat51;
        let x_1570 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec27;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat48.x = x_1579;
        let x_1582 : f32 = u_xlat5.z;
        let x_1584 : f32 = u_xlat48.x;
        let x_1586 : f32 = u_xlat69;
        u_xlat69 = ((x_1582 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat4;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec28;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat4.x = x_1601;
        let x_1604 : f32 = u_xlat5.w;
        let x_1606 : f32 = u_xlat4.x;
        let x_1608 : f32 = u_xlat69;
        u_xlat68 = ((x_1604 * x_1606) + x_1608);
      }
    }
  } else {
    let x_1612 : vec4<f32> = u_xlat2;
    let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
    let x_1615 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
    let x_1622 : vec3<f32> = txVec29;
    let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1622.xy, x_1622.z);
    u_xlat68 = x_1624;
  }
  let x_1626 : f32 = x_75.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1626) + 1.0f);
  let x_1630 : f32 = u_xlat68;
  let x_1632 : f32 = x_75.x_MainLightShadowParams.x;
  let x_1635 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1630 * x_1632) + x_1635);
  let x_1640 : f32 = u_xlat2.z;
  u_xlatb24 = (0.0f >= x_1640);
  let x_1644 : f32 = u_xlat2.z;
  u_xlatb46 = (x_1644 >= 1.0f);
  let x_1646 : bool = u_xlatb46;
  let x_1647 : bool = u_xlatb24;
  u_xlatb24 = (x_1646 | x_1647);
  let x_1649 : bool = u_xlatb24;
  if (x_1649) {
    x_1651 = 1.0f;
  } else {
    let x_1656 : f32 = u_xlat2.x;
    x_1651 = x_1656;
  }
  let x_1657 : f32 = x_1651;
  u_xlat2.x = x_1657;
  let x_1660 : vec3<f32> = vs_TEXCOORD1;
  let x_1663 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat24 = (x_1660 + -(x_1663));
  let x_1666 : vec3<f32> = u_xlat24;
  let x_1667 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_1666, x_1667);
  let x_1672 : f32 = u_xlat24.x;
  let x_1674 : f32 = x_75.x_MainLightShadowParams.z;
  let x_1677 : f32 = x_75.x_MainLightShadowParams.w;
  u_xlat46 = ((x_1672 * x_1674) + x_1677);
  let x_1679 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1679, 0.0f, 1.0f);
  let x_1682 : f32 = u_xlat2.x;
  u_xlat68 = (-(x_1682) + 1.0f);
  let x_1685 : f32 = u_xlat46;
  let x_1686 : f32 = u_xlat68;
  let x_1689 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1685 * x_1686) + x_1689);
  let x_1693 : f32 = u_xlat2.x;
  let x_1699 : f32 = x_1697.unity_LightData.z;
  u_xlat2.x = (x_1693 * x_1699);
  let x_1702 : vec4<f32> = u_xlat2;
  let x_1705 : vec4<f32> = x_28.x_MainLightColor;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1702.x, x_1702.x, x_1702.x) * vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
  let x_1708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1707.x, x_1708.y, x_1707.y, x_1707.z);
  let x_1710 : vec3<f32> = u_xlat1;
  let x_1712 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat69 = dot(x_1710, vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1715 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1715, 0.0f, 1.0f);
  let x_1717 : vec4<f32> = u_xlat2;
  let x_1719 : f32 = u_xlat69;
  let x_1721 : vec3<f32> = (vec3<f32>(x_1717.x, x_1717.z, x_1717.w) * vec3<f32>(x_1719, x_1719, x_1719));
  let x_1722 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1721.x, x_1722.y, x_1721.y, x_1721.z);
  let x_1724 : vec4<f32> = u_xlat0;
  let x_1726 : vec4<f32> = u_xlat2;
  let x_1728 : vec3<f32> = (vec3<f32>(x_1724.y, x_1724.z, x_1724.w) * vec3<f32>(x_1726.x, x_1726.z, x_1726.w));
  let x_1729 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1728.x, x_1729.y, x_1728.y, x_1728.z);
  let x_1732 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1734 : f32 = x_1697.unity_LightData.y;
  u_xlat69 = min(x_1732, x_1734);
  let x_1737 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1737));
  let x_1741 : f32 = u_xlat24.x;
  let x_1744 : f32 = x_75.x_AdditionalShadowFadeParams.x;
  let x_1747 : f32 = x_75.x_AdditionalShadowFadeParams.y;
  u_xlat24.x = ((x_1741 * x_1744) + x_1747);
  let x_1751 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_1751, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1764 : u32 = u_xlatu_loop_1;
    let x_1765 : u32 = u_xlatu69;
    if ((x_1764 < x_1765)) {
    } else {
      break;
    }
    let x_1768 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1768 >> 2u);
    let x_1771 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_1771 & 3u));
    let x_1774 : u32 = u_xlatu5;
    let x_1777 : vec4<f32> = x_1697.unity_LightIndices[bitcast<i32>(x_1774)];
    let x_1787 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1792 : vec4<u32> = indexable[x_1787];
    u_xlat5.x = dot(x_1777, bitcast<vec4<f32>>(x_1792));
    let x_1798 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1798);
    let x_1800 : vec3<f32> = vs_TEXCOORD1;
    let x_1811 : i32 = u_xlati5;
    let x_1813 : vec4<f32> = x_1810.x_AdditionalLightsPosition[x_1811];
    let x_1816 : i32 = u_xlati5;
    let x_1818 : vec4<f32> = x_1810.x_AdditionalLightsPosition[x_1816];
    u_xlat27 = ((-(x_1800) * vec3<f32>(x_1813.w, x_1813.w, x_1813.w)) + vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : vec3<f32> = u_xlat27;
    let x_1822 : vec3<f32> = u_xlat27;
    u_xlat6.x = dot(x_1821, x_1822);
    let x_1826 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1826, 0.00006103515625f);
    let x_1831 : f32 = u_xlat6.x;
    u_xlat28.x = inverseSqrt(x_1831);
    let x_1834 : vec3<f32> = u_xlat27;
    let x_1835 : vec3<f32> = u_xlat28;
    u_xlat27 = (x_1834 * vec3<f32>(x_1835.x, x_1835.x, x_1835.x));
    let x_1839 : f32 = u_xlat6.x;
    u_xlat28.x = (1.0f / x_1839);
    let x_1843 : f32 = u_xlat6.x;
    let x_1844 : i32 = u_xlati5;
    let x_1846 : f32 = x_1810.x_AdditionalLightsAttenuation[x_1844].x;
    u_xlat6.x = (x_1843 * x_1846);
    let x_1850 : f32 = u_xlat6.x;
    let x_1853 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1850) * x_1853) + 1.0f);
    let x_1858 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1858, 0.0f);
    let x_1862 : f32 = u_xlat6.x;
    let x_1864 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1862 * x_1864);
    let x_1868 : f32 = u_xlat6.x;
    let x_1870 : f32 = u_xlat28.x;
    u_xlat6.x = (x_1868 * x_1870);
    let x_1873 : i32 = u_xlati5;
    let x_1875 : vec4<f32> = x_1810.x_AdditionalLightsSpotDir[x_1873];
    let x_1877 : vec3<f32> = u_xlat27;
    u_xlat28.x = dot(vec3<f32>(x_1875.x, x_1875.y, x_1875.z), x_1877);
    let x_1881 : f32 = u_xlat28.x;
    let x_1882 : i32 = u_xlati5;
    let x_1884 : f32 = x_1810.x_AdditionalLightsAttenuation[x_1882].z;
    let x_1886 : i32 = u_xlati5;
    let x_1888 : f32 = x_1810.x_AdditionalLightsAttenuation[x_1886].w;
    u_xlat28.x = ((x_1881 * x_1884) + x_1888);
    let x_1892 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_1892, 0.0f, 1.0f);
    let x_1896 : f32 = u_xlat28.x;
    let x_1898 : f32 = u_xlat28.x;
    u_xlat28.x = (x_1896 * x_1898);
    let x_1902 : f32 = u_xlat28.x;
    let x_1904 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1902 * x_1904);
    let x_1909 : i32 = u_xlati5;
    let x_1911 : f32 = x_75.x_AdditionalShadowParams[x_1909].w;
    u_xlati28 = i32(x_1911);
    let x_1914 : i32 = u_xlati28;
    u_xlatb50 = (x_1914 >= 0i);
    let x_1916 : bool = u_xlatb50;
    if (x_1916) {
      let x_1920 : i32 = u_xlati5;
      let x_1922 : f32 = x_75.x_AdditionalShadowParams[x_1920].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1922, x_1922, x_1922, x_1922))));
      let x_1926 : bool = u_xlatb50;
      if (x_1926) {
        let x_1930 : vec3<f32> = u_xlat27;
        let x_1933 : vec3<f32> = u_xlat27;
        let x_1936 : vec4<bool> = (abs(vec4<f32>(x_1930.z, x_1930.z, x_1930.y, x_1930.z)) >= abs(vec4<f32>(x_1933.x, x_1933.y, x_1933.x, x_1933.x)));
        let x_1938 : vec3<bool> = vec3<bool>(x_1936.x, x_1936.y, x_1936.z);
        let x_1939 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
        let x_1942 : bool = u_xlatb7.y;
        let x_1944 : bool = u_xlatb7.x;
        u_xlatb50 = (x_1942 & x_1944);
        let x_1946 : vec3<f32> = u_xlat27;
        let x_1949 : vec4<bool> = (-(vec4<f32>(x_1946.z, x_1946.y, x_1946.z, x_1946.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1950 : vec3<bool> = vec3<bool>(x_1949.x, x_1949.y, x_1949.w);
        let x_1951 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1950.x, x_1950.y, x_1951.z, x_1950.z);
        let x_1954 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1954);
        let x_1959 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1959);
        let x_1964 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1964);
        let x_1967 : bool = u_xlatb7.z;
        if (x_1967) {
          let x_1972 : f32 = u_xlat7.y;
          x_1968 = x_1972;
        } else {
          let x_1974 : f32 = u_xlat72;
          x_1968 = x_1974;
        }
        let x_1975 : f32 = x_1968;
        u_xlat72 = x_1975;
        let x_1976 : bool = u_xlatb50;
        if (x_1976) {
          let x_1981 : f32 = u_xlat7.x;
          x_1977 = x_1981;
        } else {
          let x_1983 : f32 = u_xlat72;
          x_1977 = x_1983;
        }
        let x_1984 : f32 = x_1977;
        u_xlat50.x = x_1984;
        let x_1986 : i32 = u_xlati5;
        let x_1988 : f32 = x_75.x_AdditionalShadowParams[x_1986].w;
        u_xlat72 = trunc(x_1988);
        let x_1991 : f32 = u_xlat50.x;
        let x_1992 : f32 = u_xlat72;
        u_xlat50.x = (x_1991 + x_1992);
        let x_1996 : f32 = u_xlat50.x;
        u_xlati28 = i32(x_1996);
      }
      let x_1998 : i32 = u_xlati28;
      u_xlati28 = (x_1998 << bitcast<u32>(2i));
      let x_2000 : vec3<f32> = vs_TEXCOORD1;
      let x_2003 : i32 = u_xlati28;
      let x_2006 : i32 = u_xlati28;
      let x_2010 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_2003 + 1i) / 4i)][((x_2006 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2000.y, x_2000.y, x_2000.y, x_2000.y) * x_2010);
      let x_2012 : i32 = u_xlati28;
      let x_2014 : i32 = u_xlati28;
      let x_2017 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[(x_2012 / 4i)][(x_2014 % 4i)];
      let x_2018 : vec3<f32> = vs_TEXCOORD1;
      let x_2021 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2017 * vec4<f32>(x_2018.x, x_2018.x, x_2018.x, x_2018.x)) + x_2021);
      let x_2023 : i32 = u_xlati28;
      let x_2026 : i32 = u_xlati28;
      let x_2030 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_2023 + 2i) / 4i)][((x_2026 + 2i) % 4i)];
      let x_2031 : vec3<f32> = vs_TEXCOORD1;
      let x_2034 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2030 * vec4<f32>(x_2031.z, x_2031.z, x_2031.z, x_2031.z)) + x_2034);
      let x_2036 : vec4<f32> = u_xlat7;
      let x_2037 : i32 = u_xlati28;
      let x_2040 : i32 = u_xlati28;
      let x_2044 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_2037 + 3i) / 4i)][((x_2040 + 3i) % 4i)];
      u_xlat7 = (x_2036 + x_2044);
      let x_2046 : vec4<f32> = u_xlat7;
      let x_2048 : vec4<f32> = u_xlat7;
      u_xlat28 = (vec3<f32>(x_2046.x, x_2046.y, x_2046.z) / vec3<f32>(x_2048.w, x_2048.w, x_2048.w));
      let x_2051 : i32 = u_xlati5;
      let x_2053 : f32 = x_75.x_AdditionalShadowParams[x_2051].y;
      u_xlatb7.x = (0.0f < x_2053);
      let x_2057 : bool = u_xlatb7.x;
      if (x_2057) {
        let x_2060 : i32 = u_xlati5;
        let x_2062 : f32 = x_75.x_AdditionalShadowParams[x_2060].y;
        u_xlatb7.x = (1.0f == x_2062);
        let x_2066 : bool = u_xlatb7.x;
        if (x_2066) {
          let x_2069 : vec3<f32> = u_xlat28;
          let x_2073 : vec4<f32> = x_75.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_2069.x, x_2069.y, x_2069.x, x_2069.y) + x_2073);
          let x_2076 : vec4<f32> = u_xlat7;
          let x_2077 : vec2<f32> = vec2<f32>(x_2076.x, x_2076.y);
          let x_2079 : f32 = u_xlat28.z;
          txVec30 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
          let x_2087 : vec3<f32> = txVec30;
          let x_2089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2087.xy, x_2087.z);
          u_xlat8.x = x_2089;
          let x_2092 : vec4<f32> = u_xlat7;
          let x_2093 : vec2<f32> = vec2<f32>(x_2092.z, x_2092.w);
          let x_2095 : f32 = u_xlat28.z;
          txVec31 = vec3<f32>(x_2093.x, x_2093.y, x_2095);
          let x_2102 : vec3<f32> = txVec31;
          let x_2104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2102.xy, x_2102.z);
          u_xlat8.y = x_2104;
          let x_2106 : vec3<f32> = u_xlat28;
          let x_2110 : vec4<f32> = x_75.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_2106.x, x_2106.y, x_2106.x, x_2106.y) + x_2110);
          let x_2113 : vec4<f32> = u_xlat7;
          let x_2114 : vec2<f32> = vec2<f32>(x_2113.x, x_2113.y);
          let x_2116 : f32 = u_xlat28.z;
          txVec32 = vec3<f32>(x_2114.x, x_2114.y, x_2116);
          let x_2123 : vec3<f32> = txVec32;
          let x_2125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2123.xy, x_2123.z);
          u_xlat8.z = x_2125;
          let x_2128 : vec4<f32> = u_xlat7;
          let x_2129 : vec2<f32> = vec2<f32>(x_2128.z, x_2128.w);
          let x_2131 : f32 = u_xlat28.z;
          txVec33 = vec3<f32>(x_2129.x, x_2129.y, x_2131);
          let x_2138 : vec3<f32> = txVec33;
          let x_2140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2138.xy, x_2138.z);
          u_xlat8.w = x_2140;
          let x_2142 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(x_2142, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2147 : i32 = u_xlati5;
          let x_2149 : f32 = x_75.x_AdditionalShadowParams[x_2147].y;
          u_xlatb29 = (2.0f == x_2149);
          let x_2151 : bool = u_xlatb29;
          if (x_2151) {
            let x_2155 : vec3<f32> = u_xlat28;
            let x_2159 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(x_2159.z, x_2159.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2163 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2163);
            let x_2165 : vec3<f32> = u_xlat28;
            let x_2168 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2171 : vec2<f32> = u_xlat29;
            let x_2173 : vec2<f32> = ((vec2<f32>(x_2165.x, x_2165.y) * vec2<f32>(x_2168.z, x_2168.w)) + -(x_2171));
            let x_2174 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2173.x, x_2173.y, x_2174.z, x_2174.w);
            let x_2176 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2176.x, x_2176.x, x_2176.y, x_2176.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2179 : vec4<f32> = u_xlat9;
            let x_2181 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2179.x, x_2179.x, x_2179.z, x_2179.z) * vec4<f32>(x_2181.x, x_2181.x, x_2181.z, x_2181.z));
            let x_2185 : vec4<f32> = u_xlat10;
            u_xlat52 = (vec2<f32>(x_2185.y, x_2185.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2188 : vec4<f32> = u_xlat10;
            let x_2191 : vec4<f32> = u_xlat8;
            let x_2194 : vec2<f32> = ((vec2<f32>(x_2188.x, x_2188.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2191.x, x_2191.y)));
            let x_2195 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2194.x, x_2195.y, x_2194.y, x_2195.w);
            let x_2197 : vec4<f32> = u_xlat8;
            let x_2200 : vec2<f32> = (-(vec2<f32>(x_2197.x, x_2197.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2201 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
            let x_2204 : vec4<f32> = u_xlat8;
            u_xlat54 = min(vec2<f32>(x_2204.x, x_2204.y), vec2<f32>(0.0f, 0.0f));
            let x_2207 : vec2<f32> = u_xlat54;
            let x_2209 : vec2<f32> = u_xlat54;
            let x_2211 : vec4<f32> = u_xlat10;
            u_xlat54 = ((-(x_2207) * x_2209) + vec2<f32>(x_2211.x, x_2211.y));
            let x_2214 : vec4<f32> = u_xlat8;
            let x_2216 : vec2<f32> = max(vec2<f32>(x_2214.x, x_2214.y), vec2<f32>(0.0f, 0.0f));
            let x_2217 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2216.x, x_2216.y, x_2217.z, x_2217.w);
            let x_2219 : vec4<f32> = u_xlat8;
            let x_2222 : vec4<f32> = u_xlat8;
            let x_2225 : vec4<f32> = u_xlat9;
            let x_2227 : vec2<f32> = ((-(vec2<f32>(x_2219.x, x_2219.y)) * vec2<f32>(x_2222.x, x_2222.y)) + vec2<f32>(x_2225.y, x_2225.w));
            let x_2228 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
            let x_2230 : vec2<f32> = u_xlat54;
            u_xlat54 = (x_2230 + vec2<f32>(1.0f, 1.0f));
            let x_2232 : vec4<f32> = u_xlat8;
            let x_2234 : vec2<f32> = (vec2<f32>(x_2232.x, x_2232.y) + vec2<f32>(1.0f, 1.0f));
            let x_2235 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2234.x, x_2234.y, x_2235.z, x_2235.w);
            let x_2237 : vec4<f32> = u_xlat9;
            let x_2239 : vec2<f32> = (vec2<f32>(x_2237.x, x_2237.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2240 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat10;
            let x_2244 : vec2<f32> = (vec2<f32>(x_2242.x, x_2242.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2245 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2244.x, x_2244.y, x_2245.z, x_2245.w);
            let x_2247 : vec2<f32> = u_xlat54;
            let x_2248 : vec2<f32> = (x_2247 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2249 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2248.x, x_2248.y, x_2249.z, x_2249.w);
            let x_2251 : vec4<f32> = u_xlat8;
            let x_2253 : vec2<f32> = (vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2254 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2253.x, x_2253.y, x_2254.z, x_2254.w);
            let x_2256 : vec4<f32> = u_xlat9;
            let x_2258 : vec2<f32> = (vec2<f32>(x_2256.y, x_2256.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2259 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
            let x_2262 : f32 = u_xlat10.x;
            u_xlat11.z = x_2262;
            let x_2265 : f32 = u_xlat8.x;
            u_xlat11.w = x_2265;
            let x_2268 : f32 = u_xlat13.x;
            u_xlat12.z = x_2268;
            let x_2271 : f32 = u_xlat52.x;
            u_xlat12.w = x_2271;
            let x_2273 : vec4<f32> = u_xlat11;
            let x_2275 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2273.z, x_2273.w, x_2273.x, x_2273.z) + vec4<f32>(x_2275.z, x_2275.w, x_2275.x, x_2275.z));
            let x_2279 : f32 = u_xlat11.y;
            u_xlat10.z = x_2279;
            let x_2282 : f32 = u_xlat8.y;
            u_xlat10.w = x_2282;
            let x_2285 : f32 = u_xlat12.y;
            u_xlat13.z = x_2285;
            let x_2288 : f32 = u_xlat52.y;
            u_xlat13.w = x_2288;
            let x_2290 : vec4<f32> = u_xlat10;
            let x_2292 : vec4<f32> = u_xlat13;
            let x_2294 : vec3<f32> = (vec3<f32>(x_2290.z, x_2290.y, x_2290.w) + vec3<f32>(x_2292.z, x_2292.y, x_2292.w));
            let x_2295 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat12;
            let x_2299 : vec4<f32> = u_xlat9;
            let x_2301 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.z, x_2297.w) / vec3<f32>(x_2299.z, x_2299.w, x_2299.y));
            let x_2302 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
            let x_2304 : vec4<f32> = u_xlat10;
            let x_2306 : vec3<f32> = (vec3<f32>(x_2304.x, x_2304.y, x_2304.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2307 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
            let x_2309 : vec4<f32> = u_xlat13;
            let x_2311 : vec4<f32> = u_xlat8;
            let x_2313 : vec3<f32> = (vec3<f32>(x_2309.z, x_2309.y, x_2309.w) / vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
            let x_2314 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
            let x_2316 : vec4<f32> = u_xlat11;
            let x_2318 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.y, x_2316.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2319 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
            let x_2321 : vec4<f32> = u_xlat10;
            let x_2324 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2326 : vec3<f32> = (vec3<f32>(x_2321.y, x_2321.x, x_2321.z) * vec3<f32>(x_2324.x, x_2324.x, x_2324.x));
            let x_2327 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
            let x_2329 : vec4<f32> = u_xlat11;
            let x_2332 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2334 : vec3<f32> = (vec3<f32>(x_2329.x, x_2329.y, x_2329.z) * vec3<f32>(x_2332.y, x_2332.y, x_2332.y));
            let x_2335 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
            let x_2338 : f32 = u_xlat11.x;
            u_xlat10.w = x_2338;
            let x_2340 : vec2<f32> = u_xlat29;
            let x_2343 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2346 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y) * vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y)) + vec4<f32>(x_2346.y, x_2346.w, x_2346.x, x_2346.w));
            let x_2349 : vec2<f32> = u_xlat29;
            let x_2351 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2354 : vec4<f32> = u_xlat10;
            let x_2356 : vec2<f32> = ((x_2349 * vec2<f32>(x_2351.x, x_2351.y)) + vec2<f32>(x_2354.z, x_2354.w));
            let x_2357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2356.x, x_2356.y, x_2357.z, x_2357.w);
            let x_2360 : f32 = u_xlat10.y;
            u_xlat11.w = x_2360;
            let x_2362 : vec4<f32> = u_xlat11;
            let x_2363 : vec2<f32> = vec2<f32>(x_2362.y, x_2362.z);
            let x_2364 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2364.x, x_2363.x, x_2364.z, x_2363.y);
            let x_2366 : vec2<f32> = u_xlat29;
            let x_2369 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2372 : vec4<f32> = u_xlat10;
            u_xlat14 = ((vec4<f32>(x_2366.x, x_2366.y, x_2366.x, x_2366.y) * vec4<f32>(x_2369.x, x_2369.y, x_2369.x, x_2369.y)) + vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2372.y));
            let x_2375 : vec2<f32> = u_xlat29;
            let x_2378 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2381 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2375.x, x_2375.y, x_2375.x, x_2375.y) * vec4<f32>(x_2378.x, x_2378.y, x_2378.x, x_2378.y)) + vec4<f32>(x_2381.w, x_2381.y, x_2381.w, x_2381.z));
            let x_2384 : vec2<f32> = u_xlat29;
            let x_2387 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2390 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2384.x, x_2384.y, x_2384.x, x_2384.y) * vec4<f32>(x_2387.x, x_2387.y, x_2387.x, x_2387.y)) + vec4<f32>(x_2390.x, x_2390.w, x_2390.z, x_2390.w));
            let x_2393 : vec4<f32> = u_xlat8;
            let x_2395 : vec4<f32> = u_xlat9;
            u_xlat15 = (vec4<f32>(x_2393.x, x_2393.x, x_2393.x, x_2393.y) * vec4<f32>(x_2395.z, x_2395.w, x_2395.y, x_2395.z));
            let x_2398 : vec4<f32> = u_xlat8;
            let x_2400 : vec4<f32> = u_xlat9;
            u_xlat16 = (vec4<f32>(x_2398.y, x_2398.y, x_2398.z, x_2398.z) * x_2400);
            let x_2403 : f32 = u_xlat8.z;
            let x_2405 : f32 = u_xlat9.y;
            u_xlat29.x = (x_2403 * x_2405);
            let x_2409 : vec4<f32> = u_xlat12;
            let x_2410 : vec2<f32> = vec2<f32>(x_2409.x, x_2409.y);
            let x_2412 : f32 = u_xlat28.z;
            txVec34 = vec3<f32>(x_2410.x, x_2410.y, x_2412);
            let x_2419 : vec3<f32> = txVec34;
            let x_2421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
            u_xlat51.x = x_2421;
            let x_2424 : vec4<f32> = u_xlat12;
            let x_2425 : vec2<f32> = vec2<f32>(x_2424.z, x_2424.w);
            let x_2427 : f32 = u_xlat28.z;
            txVec35 = vec3<f32>(x_2425.x, x_2425.y, x_2427);
            let x_2435 : vec3<f32> = txVec35;
            let x_2437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2435.xy, x_2435.z);
            u_xlat73 = x_2437;
            let x_2438 : f32 = u_xlat73;
            let x_2440 : f32 = u_xlat15.y;
            u_xlat73 = (x_2438 * x_2440);
            let x_2443 : f32 = u_xlat15.x;
            let x_2445 : f32 = u_xlat51.x;
            let x_2447 : f32 = u_xlat73;
            u_xlat51.x = ((x_2443 * x_2445) + x_2447);
            let x_2451 : vec4<f32> = u_xlat13;
            let x_2452 : vec2<f32> = vec2<f32>(x_2451.x, x_2451.y);
            let x_2454 : f32 = u_xlat28.z;
            txVec36 = vec3<f32>(x_2452.x, x_2452.y, x_2454);
            let x_2461 : vec3<f32> = txVec36;
            let x_2463 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2461.xy, x_2461.z);
            u_xlat73 = x_2463;
            let x_2465 : f32 = u_xlat15.z;
            let x_2466 : f32 = u_xlat73;
            let x_2469 : f32 = u_xlat51.x;
            u_xlat51.x = ((x_2465 * x_2466) + x_2469);
            let x_2473 : vec4<f32> = u_xlat11;
            let x_2474 : vec2<f32> = vec2<f32>(x_2473.x, x_2473.y);
            let x_2476 : f32 = u_xlat28.z;
            txVec37 = vec3<f32>(x_2474.x, x_2474.y, x_2476);
            let x_2483 : vec3<f32> = txVec37;
            let x_2485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2483.xy, x_2483.z);
            u_xlat73 = x_2485;
            let x_2487 : f32 = u_xlat15.w;
            let x_2488 : f32 = u_xlat73;
            let x_2491 : f32 = u_xlat51.x;
            u_xlat51.x = ((x_2487 * x_2488) + x_2491);
            let x_2495 : vec4<f32> = u_xlat14;
            let x_2496 : vec2<f32> = vec2<f32>(x_2495.x, x_2495.y);
            let x_2498 : f32 = u_xlat28.z;
            txVec38 = vec3<f32>(x_2496.x, x_2496.y, x_2498);
            let x_2505 : vec3<f32> = txVec38;
            let x_2507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2505.xy, x_2505.z);
            u_xlat73 = x_2507;
            let x_2509 : f32 = u_xlat16.x;
            let x_2510 : f32 = u_xlat73;
            let x_2513 : f32 = u_xlat51.x;
            u_xlat51.x = ((x_2509 * x_2510) + x_2513);
            let x_2517 : vec4<f32> = u_xlat14;
            let x_2518 : vec2<f32> = vec2<f32>(x_2517.z, x_2517.w);
            let x_2520 : f32 = u_xlat28.z;
            txVec39 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
            let x_2527 : vec3<f32> = txVec39;
            let x_2529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
            u_xlat73 = x_2529;
            let x_2531 : f32 = u_xlat16.y;
            let x_2532 : f32 = u_xlat73;
            let x_2535 : f32 = u_xlat51.x;
            u_xlat51.x = ((x_2531 * x_2532) + x_2535);
            let x_2539 : vec4<f32> = u_xlat11;
            let x_2540 : vec2<f32> = vec2<f32>(x_2539.z, x_2539.w);
            let x_2542 : f32 = u_xlat28.z;
            txVec40 = vec3<f32>(x_2540.x, x_2540.y, x_2542);
            let x_2549 : vec3<f32> = txVec40;
            let x_2551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2549.xy, x_2549.z);
            u_xlat73 = x_2551;
            let x_2553 : f32 = u_xlat16.z;
            let x_2554 : f32 = u_xlat73;
            let x_2557 : f32 = u_xlat51.x;
            u_xlat51.x = ((x_2553 * x_2554) + x_2557);
            let x_2561 : vec4<f32> = u_xlat10;
            let x_2562 : vec2<f32> = vec2<f32>(x_2561.x, x_2561.y);
            let x_2564 : f32 = u_xlat28.z;
            txVec41 = vec3<f32>(x_2562.x, x_2562.y, x_2564);
            let x_2571 : vec3<f32> = txVec41;
            let x_2573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2571.xy, x_2571.z);
            u_xlat73 = x_2573;
            let x_2575 : f32 = u_xlat16.w;
            let x_2576 : f32 = u_xlat73;
            let x_2579 : f32 = u_xlat51.x;
            u_xlat51.x = ((x_2575 * x_2576) + x_2579);
            let x_2583 : vec4<f32> = u_xlat10;
            let x_2584 : vec2<f32> = vec2<f32>(x_2583.z, x_2583.w);
            let x_2586 : f32 = u_xlat28.z;
            txVec42 = vec3<f32>(x_2584.x, x_2584.y, x_2586);
            let x_2593 : vec3<f32> = txVec42;
            let x_2595 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2593.xy, x_2593.z);
            u_xlat73 = x_2595;
            let x_2597 : f32 = u_xlat29.x;
            let x_2598 : f32 = u_xlat73;
            let x_2601 : f32 = u_xlat51.x;
            u_xlat7.x = ((x_2597 * x_2598) + x_2601);
          } else {
            let x_2605 : vec3<f32> = u_xlat28;
            let x_2608 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2605.x, x_2605.y) * vec2<f32>(x_2608.z, x_2608.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2612 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2612);
            let x_2614 : vec3<f32> = u_xlat28;
            let x_2617 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2620 : vec2<f32> = u_xlat29;
            let x_2622 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.y) * vec2<f32>(x_2617.z, x_2617.w)) + -(x_2620));
            let x_2623 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2622.x, x_2622.y, x_2623.z, x_2623.w);
            let x_2625 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2625.x, x_2625.x, x_2625.y, x_2625.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2628 : vec4<f32> = u_xlat9;
            let x_2630 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2628.x, x_2628.x, x_2628.z, x_2628.z) * vec4<f32>(x_2630.x, x_2630.x, x_2630.z, x_2630.z));
            let x_2633 : vec4<f32> = u_xlat10;
            let x_2635 : vec2<f32> = (vec2<f32>(x_2633.y, x_2633.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2636 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
            let x_2638 : vec4<f32> = u_xlat10;
            let x_2641 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2638.x, x_2638.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2641.x, x_2641.y)));
            let x_2645 : vec4<f32> = u_xlat8;
            let x_2648 : vec2<f32> = (-(vec2<f32>(x_2645.x, x_2645.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2649 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2648.x, x_2649.y, x_2648.y, x_2649.w);
            let x_2651 : vec4<f32> = u_xlat8;
            let x_2653 : vec2<f32> = min(vec2<f32>(x_2651.x, x_2651.y), vec2<f32>(0.0f, 0.0f));
            let x_2654 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2653.x, x_2653.y, x_2654.z, x_2654.w);
            let x_2656 : vec4<f32> = u_xlat10;
            let x_2659 : vec4<f32> = u_xlat10;
            let x_2662 : vec4<f32> = u_xlat9;
            let x_2664 : vec2<f32> = ((-(vec2<f32>(x_2656.x, x_2656.y)) * vec2<f32>(x_2659.x, x_2659.y)) + vec2<f32>(x_2662.x, x_2662.z));
            let x_2665 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2664.x, x_2665.y, x_2664.y, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat8;
            let x_2669 : vec2<f32> = max(vec2<f32>(x_2667.x, x_2667.y), vec2<f32>(0.0f, 0.0f));
            let x_2670 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
            let x_2672 : vec4<f32> = u_xlat10;
            let x_2675 : vec4<f32> = u_xlat10;
            let x_2678 : vec4<f32> = u_xlat9;
            let x_2680 : vec2<f32> = ((-(vec2<f32>(x_2672.x, x_2672.y)) * vec2<f32>(x_2675.x, x_2675.y)) + vec2<f32>(x_2678.y, x_2678.w));
            let x_2681 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2681.x, x_2680.x, x_2681.z, x_2680.y);
            let x_2683 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2683 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2687 : f32 = u_xlat9.y;
            u_xlat10.z = (x_2687 * 0.08163200318813323975f);
            let x_2690 : vec2<f32> = u_xlat52;
            let x_2692 : vec2<f32> = (vec2<f32>(x_2690.y, x_2690.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2693 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
            let x_2695 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2695.x, x_2695.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2699 : f32 = u_xlat9.w;
            u_xlat12.z = (x_2699 * 0.08163200318813323975f);
            let x_2703 : f32 = u_xlat12.y;
            u_xlat10.x = x_2703;
            let x_2705 : vec4<f32> = u_xlat8;
            let x_2708 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2709 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2709.x, x_2708.x, x_2709.z, x_2708.y);
            let x_2711 : vec4<f32> = u_xlat8;
            let x_2714 : vec2<f32> = ((vec2<f32>(x_2711.x, x_2711.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2715 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2714.x, x_2715.y, x_2714.y, x_2715.w);
            let x_2718 : f32 = u_xlat52.x;
            u_xlat9.y = x_2718;
            let x_2721 : f32 = u_xlat11.y;
            u_xlat9.w = x_2721;
            let x_2723 : vec4<f32> = u_xlat9;
            let x_2724 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2723 + x_2724);
            let x_2726 : vec4<f32> = u_xlat8;
            let x_2729 : vec2<f32> = ((vec2<f32>(x_2726.y, x_2726.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2730 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2730.x, x_2729.x, x_2730.z, x_2729.y);
            let x_2732 : vec4<f32> = u_xlat8;
            let x_2735 : vec2<f32> = ((vec2<f32>(x_2732.y, x_2732.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2736 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2735.x, x_2736.y, x_2735.y, x_2736.w);
            let x_2739 : f32 = u_xlat52.y;
            u_xlat11.y = x_2739;
            let x_2741 : vec4<f32> = u_xlat11;
            let x_2742 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2741 + x_2742);
            let x_2744 : vec4<f32> = u_xlat9;
            let x_2745 : vec4<f32> = u_xlat10;
            u_xlat9 = (x_2744 / x_2745);
            let x_2747 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2747 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2749 : vec4<f32> = u_xlat11;
            let x_2750 : vec4<f32> = u_xlat8;
            u_xlat11 = (x_2749 / x_2750);
            let x_2752 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2752 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2754 : vec4<f32> = u_xlat9;
            let x_2757 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2754.w, x_2754.x, x_2754.y, x_2754.z) * vec4<f32>(x_2757.x, x_2757.x, x_2757.x, x_2757.x));
            let x_2760 : vec4<f32> = u_xlat11;
            let x_2763 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2760.x, x_2760.w, x_2760.y, x_2760.z) * vec4<f32>(x_2763.y, x_2763.y, x_2763.y, x_2763.y));
            let x_2766 : vec4<f32> = u_xlat9;
            let x_2767 : vec3<f32> = vec3<f32>(x_2766.y, x_2766.z, x_2766.w);
            let x_2768 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2767.x, x_2768.y, x_2767.y, x_2767.z);
            let x_2771 : f32 = u_xlat11.x;
            u_xlat12.y = x_2771;
            let x_2773 : vec2<f32> = u_xlat29;
            let x_2776 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2779 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y) * vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y)) + vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2779.y));
            let x_2782 : vec2<f32> = u_xlat29;
            let x_2784 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2787 : vec4<f32> = u_xlat12;
            let x_2789 : vec2<f32> = ((x_2782 * vec2<f32>(x_2784.x, x_2784.y)) + vec2<f32>(x_2787.w, x_2787.y));
            let x_2790 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
            let x_2793 : f32 = u_xlat12.y;
            u_xlat9.y = x_2793;
            let x_2796 : f32 = u_xlat11.z;
            u_xlat12.y = x_2796;
            let x_2798 : vec2<f32> = u_xlat29;
            let x_2801 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2804 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y) * vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y)) + vec4<f32>(x_2804.x, x_2804.y, x_2804.z, x_2804.y));
            let x_2808 : vec2<f32> = u_xlat29;
            let x_2810 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2813 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2808 * vec2<f32>(x_2810.x, x_2810.y)) + vec2<f32>(x_2813.w, x_2813.y));
            let x_2817 : f32 = u_xlat12.y;
            u_xlat9.z = x_2817;
            let x_2819 : vec2<f32> = u_xlat29;
            let x_2822 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2825 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y) * vec4<f32>(x_2822.x, x_2822.y, x_2822.x, x_2822.y)) + vec4<f32>(x_2825.x, x_2825.y, x_2825.x, x_2825.z));
            let x_2829 : f32 = u_xlat11.w;
            u_xlat12.y = x_2829;
            let x_2831 : vec2<f32> = u_xlat29;
            let x_2834 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2837 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2831.x, x_2831.y, x_2831.x, x_2831.y) * vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y)) + vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2837.y));
            let x_2841 : vec2<f32> = u_xlat29;
            let x_2843 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2846 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2841 * vec2<f32>(x_2843.x, x_2843.y)) + vec2<f32>(x_2846.w, x_2846.y));
            let x_2850 : f32 = u_xlat12.y;
            u_xlat9.w = x_2850;
            let x_2853 : vec2<f32> = u_xlat29;
            let x_2855 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2858 : vec4<f32> = u_xlat9;
            u_xlat18 = ((x_2853 * vec2<f32>(x_2855.x, x_2855.y)) + vec2<f32>(x_2858.x, x_2858.w));
            let x_2861 : vec4<f32> = u_xlat12;
            let x_2862 : vec3<f32> = vec3<f32>(x_2861.x, x_2861.z, x_2861.w);
            let x_2863 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2862.x, x_2863.y, x_2862.y, x_2862.z);
            let x_2865 : vec2<f32> = u_xlat29;
            let x_2868 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2871 : vec4<f32> = u_xlat11;
            u_xlat12 = ((vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.y) * vec4<f32>(x_2868.x, x_2868.y, x_2868.x, x_2868.y)) + vec4<f32>(x_2871.x, x_2871.y, x_2871.z, x_2871.y));
            let x_2875 : vec2<f32> = u_xlat29;
            let x_2877 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2880 : vec4<f32> = u_xlat11;
            u_xlat55 = ((x_2875 * vec2<f32>(x_2877.x, x_2877.y)) + vec2<f32>(x_2880.w, x_2880.y));
            let x_2884 : f32 = u_xlat9.x;
            u_xlat11.x = x_2884;
            let x_2886 : vec2<f32> = u_xlat29;
            let x_2888 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat11;
            u_xlat29 = ((x_2886 * vec2<f32>(x_2888.x, x_2888.y)) + vec2<f32>(x_2891.x, x_2891.y));
            let x_2895 : vec4<f32> = u_xlat8;
            let x_2897 : vec4<f32> = u_xlat10;
            u_xlat19 = (vec4<f32>(x_2895.x, x_2895.x, x_2895.x, x_2895.x) * x_2897);
            let x_2900 : vec4<f32> = u_xlat8;
            let x_2902 : vec4<f32> = u_xlat10;
            u_xlat20 = (vec4<f32>(x_2900.y, x_2900.y, x_2900.y, x_2900.y) * x_2902);
            let x_2905 : vec4<f32> = u_xlat8;
            let x_2907 : vec4<f32> = u_xlat10;
            u_xlat21 = (vec4<f32>(x_2905.z, x_2905.z, x_2905.z, x_2905.z) * x_2907);
            let x_2909 : vec4<f32> = u_xlat8;
            let x_2911 : vec4<f32> = u_xlat10;
            u_xlat8 = (vec4<f32>(x_2909.w, x_2909.w, x_2909.w, x_2909.w) * x_2911);
            let x_2914 : vec4<f32> = u_xlat13;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.x, x_2914.y);
            let x_2917 : f32 = u_xlat28.z;
            txVec43 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec43;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat73 = x_2926;
            let x_2928 : vec4<f32> = u_xlat13;
            let x_2929 : vec2<f32> = vec2<f32>(x_2928.z, x_2928.w);
            let x_2931 : f32 = u_xlat28.z;
            txVec44 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
            let x_2938 : vec3<f32> = txVec44;
            let x_2940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
            u_xlat9.x = x_2940;
            let x_2943 : f32 = u_xlat9.x;
            let x_2945 : f32 = u_xlat19.y;
            u_xlat9.x = (x_2943 * x_2945);
            let x_2949 : f32 = u_xlat19.x;
            let x_2950 : f32 = u_xlat73;
            let x_2953 : f32 = u_xlat9.x;
            u_xlat73 = ((x_2949 * x_2950) + x_2953);
            let x_2956 : vec4<f32> = u_xlat14;
            let x_2957 : vec2<f32> = vec2<f32>(x_2956.x, x_2956.y);
            let x_2959 : f32 = u_xlat28.z;
            txVec45 = vec3<f32>(x_2957.x, x_2957.y, x_2959);
            let x_2966 : vec3<f32> = txVec45;
            let x_2968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2966.xy, x_2966.z);
            u_xlat9.x = x_2968;
            let x_2971 : f32 = u_xlat19.z;
            let x_2973 : f32 = u_xlat9.x;
            let x_2975 : f32 = u_xlat73;
            u_xlat73 = ((x_2971 * x_2973) + x_2975);
            let x_2978 : vec4<f32> = u_xlat16;
            let x_2979 : vec2<f32> = vec2<f32>(x_2978.x, x_2978.y);
            let x_2981 : f32 = u_xlat28.z;
            txVec46 = vec3<f32>(x_2979.x, x_2979.y, x_2981);
            let x_2988 : vec3<f32> = txVec46;
            let x_2990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2988.xy, x_2988.z);
            u_xlat9.x = x_2990;
            let x_2993 : f32 = u_xlat19.w;
            let x_2995 : f32 = u_xlat9.x;
            let x_2997 : f32 = u_xlat73;
            u_xlat73 = ((x_2993 * x_2995) + x_2997);
            let x_3000 : vec4<f32> = u_xlat15;
            let x_3001 : vec2<f32> = vec2<f32>(x_3000.x, x_3000.y);
            let x_3003 : f32 = u_xlat28.z;
            txVec47 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
            let x_3010 : vec3<f32> = txVec47;
            let x_3012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
            u_xlat9.x = x_3012;
            let x_3015 : f32 = u_xlat20.x;
            let x_3017 : f32 = u_xlat9.x;
            let x_3019 : f32 = u_xlat73;
            u_xlat73 = ((x_3015 * x_3017) + x_3019);
            let x_3022 : vec4<f32> = u_xlat15;
            let x_3023 : vec2<f32> = vec2<f32>(x_3022.z, x_3022.w);
            let x_3025 : f32 = u_xlat28.z;
            txVec48 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
            let x_3032 : vec3<f32> = txVec48;
            let x_3034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
            u_xlat9.x = x_3034;
            let x_3037 : f32 = u_xlat20.y;
            let x_3039 : f32 = u_xlat9.x;
            let x_3041 : f32 = u_xlat73;
            u_xlat73 = ((x_3037 * x_3039) + x_3041);
            let x_3044 : vec2<f32> = u_xlat58;
            let x_3046 : f32 = u_xlat28.z;
            txVec49 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec49;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat9.x = x_3055;
            let x_3058 : f32 = u_xlat20.z;
            let x_3060 : f32 = u_xlat9.x;
            let x_3062 : f32 = u_xlat73;
            u_xlat73 = ((x_3058 * x_3060) + x_3062);
            let x_3065 : vec4<f32> = u_xlat16;
            let x_3066 : vec2<f32> = vec2<f32>(x_3065.z, x_3065.w);
            let x_3068 : f32 = u_xlat28.z;
            txVec50 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec50;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat9.x = x_3077;
            let x_3080 : f32 = u_xlat20.w;
            let x_3082 : f32 = u_xlat9.x;
            let x_3084 : f32 = u_xlat73;
            u_xlat73 = ((x_3080 * x_3082) + x_3084);
            let x_3087 : vec4<f32> = u_xlat17;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.x, x_3087.y);
            let x_3090 : f32 = u_xlat28.z;
            txVec51 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec51;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat9.x = x_3099;
            let x_3102 : f32 = u_xlat21.x;
            let x_3104 : f32 = u_xlat9.x;
            let x_3106 : f32 = u_xlat73;
            u_xlat73 = ((x_3102 * x_3104) + x_3106);
            let x_3109 : vec4<f32> = u_xlat17;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.z, x_3109.w);
            let x_3112 : f32 = u_xlat28.z;
            txVec52 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec52;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat9.x = x_3121;
            let x_3124 : f32 = u_xlat21.y;
            let x_3126 : f32 = u_xlat9.x;
            let x_3128 : f32 = u_xlat73;
            u_xlat73 = ((x_3124 * x_3126) + x_3128);
            let x_3131 : vec2<f32> = u_xlat31;
            let x_3133 : f32 = u_xlat28.z;
            txVec53 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec53;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat9.x = x_3142;
            let x_3145 : f32 = u_xlat21.z;
            let x_3147 : f32 = u_xlat9.x;
            let x_3149 : f32 = u_xlat73;
            u_xlat73 = ((x_3145 * x_3147) + x_3149);
            let x_3152 : vec2<f32> = u_xlat18;
            let x_3154 : f32 = u_xlat28.z;
            txVec54 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
            let x_3161 : vec3<f32> = txVec54;
            let x_3163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
            u_xlat9.x = x_3163;
            let x_3166 : f32 = u_xlat21.w;
            let x_3168 : f32 = u_xlat9.x;
            let x_3170 : f32 = u_xlat73;
            u_xlat73 = ((x_3166 * x_3168) + x_3170);
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3174 : vec2<f32> = vec2<f32>(x_3173.x, x_3173.y);
            let x_3176 : f32 = u_xlat28.z;
            txVec55 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
            let x_3183 : vec3<f32> = txVec55;
            let x_3185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
            u_xlat9.x = x_3185;
            let x_3188 : f32 = u_xlat8.x;
            let x_3190 : f32 = u_xlat9.x;
            let x_3192 : f32 = u_xlat73;
            u_xlat73 = ((x_3188 * x_3190) + x_3192);
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3196 : vec2<f32> = vec2<f32>(x_3195.z, x_3195.w);
            let x_3198 : f32 = u_xlat28.z;
            txVec56 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
            let x_3205 : vec3<f32> = txVec56;
            let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
            u_xlat8.x = x_3207;
            let x_3210 : f32 = u_xlat8.y;
            let x_3212 : f32 = u_xlat8.x;
            let x_3214 : f32 = u_xlat73;
            u_xlat73 = ((x_3210 * x_3212) + x_3214);
            let x_3217 : vec2<f32> = u_xlat55;
            let x_3219 : f32 = u_xlat28.z;
            txVec57 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
            let x_3226 : vec3<f32> = txVec57;
            let x_3228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3226.xy, x_3226.z);
            u_xlat8.x = x_3228;
            let x_3231 : f32 = u_xlat8.z;
            let x_3233 : f32 = u_xlat8.x;
            let x_3235 : f32 = u_xlat73;
            u_xlat73 = ((x_3231 * x_3233) + x_3235);
            let x_3238 : vec2<f32> = u_xlat29;
            let x_3240 : f32 = u_xlat28.z;
            txVec58 = vec3<f32>(x_3238.x, x_3238.y, x_3240);
            let x_3247 : vec3<f32> = txVec58;
            let x_3249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3247.xy, x_3247.z);
            u_xlat29.x = x_3249;
            let x_3252 : f32 = u_xlat8.w;
            let x_3254 : f32 = u_xlat29.x;
            let x_3256 : f32 = u_xlat73;
            u_xlat7.x = ((x_3252 * x_3254) + x_3256);
          }
        }
      } else {
        let x_3261 : vec3<f32> = u_xlat28;
        let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
        let x_3264 : f32 = u_xlat28.z;
        txVec59 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
        let x_3271 : vec3<f32> = txVec59;
        let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
        u_xlat7.x = x_3273;
      }
      let x_3275 : i32 = u_xlati5;
      let x_3277 : f32 = x_75.x_AdditionalShadowParams[x_3275].x;
      u_xlat28.x = (1.0f + -(x_3277));
      let x_3282 : f32 = u_xlat7.x;
      let x_3283 : i32 = u_xlati5;
      let x_3285 : f32 = x_75.x_AdditionalShadowParams[x_3283].x;
      let x_3288 : f32 = u_xlat28.x;
      u_xlat28.x = ((x_3282 * x_3285) + x_3288);
      let x_3292 : f32 = u_xlat28.z;
      u_xlatb50 = (0.0f >= x_3292);
      let x_3296 : f32 = u_xlat28.z;
      u_xlatb72 = (x_3296 >= 1.0f);
      let x_3298 : bool = u_xlatb72;
      let x_3299 : bool = u_xlatb50;
      u_xlatb50 = (x_3298 | x_3299);
      let x_3301 : bool = u_xlatb50;
      if (x_3301) {
        x_3302 = 1.0f;
      } else {
        let x_3307 : f32 = u_xlat28.x;
        x_3302 = x_3307;
      }
      let x_3308 : f32 = x_3302;
      u_xlat28.x = x_3308;
    } else {
      u_xlat28.x = 1.0f;
    }
    let x_3313 : f32 = u_xlat28.x;
    u_xlat50.x = (-(x_3313) + 1.0f);
    let x_3318 : f32 = u_xlat24.x;
    let x_3320 : f32 = u_xlat50.x;
    let x_3323 : f32 = u_xlat28.x;
    u_xlat28.x = ((x_3318 * x_3320) + x_3323);
    let x_3327 : f32 = u_xlat28.x;
    let x_3329 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3327 * x_3329);
    let x_3332 : vec4<f32> = u_xlat6;
    let x_3334 : i32 = u_xlati5;
    let x_3336 : vec4<f32> = x_1810.x_AdditionalLightsColor[x_3334];
    let x_3338 : vec3<f32> = (vec3<f32>(x_3332.x, x_3332.x, x_3332.x) * vec3<f32>(x_3336.x, x_3336.y, x_3336.z));
    let x_3339 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3338.x, x_3338.y, x_3338.z, x_3339.w);
    let x_3341 : vec3<f32> = u_xlat1;
    let x_3342 : vec3<f32> = u_xlat27;
    u_xlat5.x = dot(x_3341, x_3342);
    let x_3346 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_3346, 0.0f, 1.0f);
    let x_3349 : vec4<f32> = u_xlat5;
    let x_3351 : vec4<f32> = u_xlat6;
    let x_3353 : vec3<f32> = (vec3<f32>(x_3349.x, x_3349.x, x_3349.x) * vec3<f32>(x_3351.x, x_3351.y, x_3351.z));
    let x_3354 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3353.x, x_3353.y, x_3353.z, x_3354.w);
    let x_3356 : vec4<f32> = u_xlat5;
    let x_3358 : vec4<f32> = u_xlat0;
    let x_3361 : vec4<f32> = u_xlat4;
    let x_3363 : vec3<f32> = ((vec3<f32>(x_3356.x, x_3356.y, x_3356.z) * vec3<f32>(x_3358.y, x_3358.z, x_3358.w)) + vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
    let x_3364 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3364.w);

    continuing {
      let x_3366 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3366 + bitcast<u32>(1i));
    }
  }
  let x_3369 : vec4<f32> = u_xlat3;
  let x_3371 : vec4<f32> = u_xlat0;
  let x_3374 : vec4<f32> = u_xlat2;
  u_xlat22 = ((vec3<f32>(x_3369.x, x_3369.y, x_3369.z) * vec3<f32>(x_3371.y, x_3371.z, x_3371.w)) + vec3<f32>(x_3374.x, x_3374.z, x_3374.w));
  let x_3377 : vec4<f32> = u_xlat4;
  let x_3379 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3377.x, x_3377.y, x_3377.z) + x_3379);
  let x_3381 : f32 = u_xlat67;
  let x_3382 : f32 = u_xlat67;
  u_xlat1.x = (x_3381 * -(x_3382));
  let x_3387 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3387);
  let x_3390 : vec3<f32> = u_xlat22;
  let x_3392 : vec4<f32> = x_28.unity_FogColor;
  u_xlat22 = (x_3390 + -(vec3<f32>(x_3392.x, x_3392.y, x_3392.z)));
  let x_3398 : vec3<f32> = u_xlat1;
  let x_3400 : vec3<f32> = u_xlat22;
  let x_3403 : vec4<f32> = x_28.unity_FogColor;
  let x_3405 : vec3<f32> = ((vec3<f32>(x_3398.x, x_3398.x, x_3398.x) * x_3400) + vec3<f32>(x_3403.x, x_3403.y, x_3403.z));
  let x_3406 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3405.x, x_3405.y, x_3405.z, x_3406.w);
  let x_3410 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3410 == 1.0f);
  let x_3412 : bool = u_xlatb22;
  if (x_3412) {
    let x_3417 : f32 = u_xlat0.x;
    x_3413 = x_3417;
  } else {
    x_3413 = 1.0f;
  }
  let x_3419 : f32 = x_3413;
  SV_Target0.w = x_3419;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


