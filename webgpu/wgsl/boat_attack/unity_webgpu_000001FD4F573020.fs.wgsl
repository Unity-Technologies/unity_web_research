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

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_75 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat64 : f32;

var<private> u_xlatu64 : u32;

var<private> u_xlati64 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb64 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb65 : bool;

var<private> u_xlat46 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat65 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(1) @binding(2) var<uniform> x_1626 : UnityPerDraw;

var<private> u_xlatu67 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat67 : f32;

var<private> u_xlati67 : i32;

@group(1) @binding(1) var<uniform> x_1728 : AdditionalLights;

var<private> u_xlat68 : f32;

var<private> u_xlati6 : i32;

var<private> u_xlatb27 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb69 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat69 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlat21 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu66 : u32;

var<private> u_xlatb67 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1879 : f32;
  var x_1891 : f32;
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
  var x_3225 : f32;
  var x_3308 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_66 : vec3<f32> = vs_TEXCOORD1;
  let x_77 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres0;
  let x_80 : vec3<f32> = (x_66 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
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
  u_xlat64 = dot(x_196, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat64;
  u_xlat64 = (-(x_202) + 4.0f);
  let x_207 : f32 = u_xlat64;
  u_xlatu64 = u32(x_207);
  let x_211 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_211) << bitcast<u32>(2i));
  let x_214 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : i32 = u_xlati64;
  let x_219 : i32 = u_xlati64;
  let x_223 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_216 + 1i) / 4i)][((x_219 + 1i) % 4i)];
  let x_225 : vec3<f32> = (vec3<f32>(x_214.y, x_214.y, x_214.y) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : i32 = u_xlati64;
  let x_230 : i32 = u_xlati64;
  let x_233 : vec4<f32> = x_75.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : i32 = u_xlati64;
  let x_246 : i32 = u_xlati64;
  let x_250 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_243 + 2i) / 4i)][((x_246 + 2i) % 4i)];
  let x_252 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : i32 = u_xlati64;
  let x_265 : i32 = u_xlati64;
  let x_269 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_262 + 3i) / 4i)][((x_265 + 3i) % 4i)];
  let x_271 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_280 : vec2<f32> = vs_TEXCOORD7;
  let x_282 : f32 = x_27.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_280, x_282);
  u_xlat3 = x_283;
  let x_288 : vec2<f32> = vs_TEXCOORD7;
  let x_290 : f32 = x_27.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_288, x_290);
  let x_292 : vec3<f32> = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(x_302, vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : f32 = u_xlat64;
  u_xlat64 = (x_306 + 0.5f);
  let x_309 : f32 = u_xlat64;
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec3<f32> = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : f32 = u_xlat3.w;
  u_xlat64 = max(x_317, 0.00009999999747378752f);
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : f32 = u_xlat64;
  let x_324 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) / vec3<f32>(x_322, x_322, x_322));
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_330 : f32 = x_75.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_330);
  let x_332 : bool = u_xlatb64;
  if (x_332) {
    let x_336 : f32 = x_75.x_MainLightShadowParams.y;
    u_xlatb64 = (x_336 == 1.0f);
    let x_338 : bool = u_xlatb64;
    if (x_338) {
      let x_341 : vec4<f32> = u_xlat2;
      let x_345 : vec4<f32> = x_75.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_345);
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
      let x_352 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_364 : vec3<f32> = txVec0;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.x = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec1;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.y = x_381;
      let x_383 : vec4<f32> = u_xlat2;
      let x_387 : vec4<f32> = x_75.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y) + x_387);
      let x_390 : vec4<f32> = u_xlat4;
      let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
      let x_393 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec2;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_400.xy, x_400.z);
      u_xlat5.z = x_402;
      let x_405 : vec4<f32> = u_xlat4;
      let x_406 : vec2<f32> = vec2<f32>(x_405.z, x_405.w);
      let x_408 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_406.x, x_406.y, x_408);
      let x_415 : vec3<f32> = txVec3;
      let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_415.xy, x_415.z);
      u_xlat5.w = x_417;
      let x_419 : vec4<f32> = u_xlat5;
      u_xlat64 = dot(x_419, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_426 : f32 = x_75.x_MainLightShadowParams.y;
      u_xlatb65 = (x_426 == 2.0f);
      let x_428 : bool = u_xlatb65;
      if (x_428) {
        let x_431 : vec4<f32> = u_xlat2;
        let x_435 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_439 : vec2<f32> = ((vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_435.z, x_435.w)) + vec2<f32>(0.5f, 0.5f));
        let x_440 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat4;
        let x_444 : vec2<f32> = floor(vec2<f32>(x_442.x, x_442.y));
        let x_445 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_449 : vec4<f32> = u_xlat2;
        let x_452 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_455 : vec4<f32> = u_xlat4;
        u_xlat46 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat46;
        u_xlat5 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_464 : vec4<f32> = u_xlat5;
        let x_466 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_464.x, x_464.x, x_464.z, x_464.z) * vec4<f32>(x_466.x, x_466.x, x_466.z, x_466.z));
        let x_469 : vec4<f32> = u_xlat6;
        let x_473 : vec2<f32> = (vec2<f32>(x_469.y, x_469.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_474 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_473.x, x_474.y, x_473.y, x_474.w);
        let x_476 : vec4<f32> = u_xlat6;
        let x_479 : vec2<f32> = u_xlat46;
        let x_481 : vec2<f32> = ((vec2<f32>(x_476.x, x_476.z) * vec2<f32>(0.5f, 0.5f)) + -(x_479));
        let x_482 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_485 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_485) + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec2<f32> = u_xlat46;
        let x_492 : vec2<f32> = min(x_490, vec2<f32>(0.0f, 0.0f));
        let x_493 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat7;
        let x_498 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = u_xlat48;
        let x_502 : vec2<f32> = ((-(vec2<f32>(x_495.x, x_495.y)) * vec2<f32>(x_498.x, x_498.y)) + x_501);
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_505 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_505, vec2<f32>(0.0f, 0.0f));
        let x_507 : vec2<f32> = u_xlat46;
        let x_509 : vec2<f32> = u_xlat46;
        let x_511 : vec4<f32> = u_xlat5;
        u_xlat46 = ((-(x_507) * x_509) + vec2<f32>(x_511.y, x_511.w));
        let x_514 : vec4<f32> = u_xlat7;
        let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) + vec2<f32>(1.0f, 1.0f));
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_519 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_519 + vec2<f32>(1.0f, 1.0f));
        let x_522 : vec4<f32> = u_xlat6;
        let x_526 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_529 : vec2<f32> = u_xlat48;
        let x_530 : vec2<f32> = (x_529 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec2<f32> = (vec2<f32>(x_533.x, x_533.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_536 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_539 : vec2<f32> = u_xlat46;
        let x_540 : vec2<f32> = (x_539 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat5;
        u_xlat46 = (vec2<f32>(x_543.y, x_543.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_547 : f32 = u_xlat7.x;
        u_xlat8.z = x_547;
        let x_550 : f32 = u_xlat46.x;
        u_xlat8.w = x_550;
        let x_553 : f32 = u_xlat9.x;
        u_xlat6.z = x_553;
        let x_556 : f32 = u_xlat5.x;
        u_xlat6.w = x_556;
        let x_559 : vec4<f32> = u_xlat6;
        let x_561 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_559.z, x_559.w, x_559.x, x_559.z) + vec4<f32>(x_561.z, x_561.w, x_561.x, x_561.z));
        let x_565 : f32 = u_xlat8.y;
        u_xlat7.z = x_565;
        let x_568 : f32 = u_xlat46.y;
        u_xlat7.w = x_568;
        let x_571 : f32 = u_xlat6.y;
        u_xlat9.z = x_571;
        let x_574 : f32 = u_xlat5.z;
        u_xlat9.w = x_574;
        let x_576 : vec4<f32> = u_xlat7;
        let x_578 : vec4<f32> = u_xlat9;
        let x_580 : vec3<f32> = (vec3<f32>(x_576.z, x_576.y, x_576.w) + vec3<f32>(x_578.z, x_578.y, x_578.w));
        let x_581 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat6;
        let x_585 : vec4<f32> = u_xlat10;
        let x_587 : vec3<f32> = (vec3<f32>(x_583.x, x_583.z, x_583.w) / vec3<f32>(x_585.z, x_585.w, x_585.y));
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat6;
        let x_595 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        let x_613 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat7;
        let x_621 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat7.x;
        u_xlat6.w = x_627;
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
        let x_648 : f32 = u_xlat6.y;
        u_xlat7.w = x_648;
        let x_650 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = vec2<f32>(x_650.y, x_650.z);
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_651.x, x_652.z, x_651.y);
        let x_654 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.y));
        let x_663 : vec4<f32> = u_xlat4;
        let x_666 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.w, x_669.y, x_669.w, x_669.z));
        let x_672 : vec4<f32> = u_xlat4;
        let x_675 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.x, x_678.w, x_678.z, x_678.w));
        let x_682 : vec4<f32> = u_xlat5;
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.y) * vec4<f32>(x_684.z, x_684.w, x_684.y, x_684.z));
        let x_688 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_688.y, x_688.y, x_688.z, x_688.z) * x_690);
        let x_694 : f32 = u_xlat5.z;
        let x_696 : f32 = u_xlat10.y;
        u_xlat65 = (x_694 * x_696);
        let x_699 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_710 : vec3<f32> = txVec4;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat66 = x_712;
        let x_714 : vec4<f32> = u_xlat8;
        let x_715 : vec2<f32> = vec2<f32>(x_714.z, x_714.w);
        let x_717 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_724 : vec3<f32> = txVec5;
        let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_724.xy, x_724.z);
        u_xlat4.x = x_726;
        let x_729 : f32 = u_xlat4.x;
        let x_731 : f32 = u_xlat11.y;
        u_xlat4.x = (x_729 * x_731);
        let x_735 : f32 = u_xlat11.x;
        let x_736 : f32 = u_xlat66;
        let x_739 : f32 = u_xlat4.x;
        u_xlat66 = ((x_735 * x_736) + x_739);
        let x_742 : vec2<f32> = u_xlat46;
        let x_744 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec6;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat4.x = x_753;
        let x_756 : f32 = u_xlat11.z;
        let x_758 : f32 = u_xlat4.x;
        let x_760 : f32 = u_xlat66;
        u_xlat66 = ((x_756 * x_758) + x_760);
        let x_763 : vec4<f32> = u_xlat7;
        let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
        let x_766 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_764.x, x_764.y, x_766);
        let x_773 : vec3<f32> = txVec7;
        let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
        u_xlat4.x = x_775;
        let x_778 : f32 = u_xlat11.w;
        let x_780 : f32 = u_xlat4.x;
        let x_782 : f32 = u_xlat66;
        u_xlat66 = ((x_778 * x_780) + x_782);
        let x_785 : vec4<f32> = u_xlat9;
        let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
        let x_788 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_795 : vec3<f32> = txVec8;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat4.x = x_797;
        let x_800 : f32 = u_xlat12.x;
        let x_802 : f32 = u_xlat4.x;
        let x_804 : f32 = u_xlat66;
        u_xlat66 = ((x_800 * x_802) + x_804);
        let x_807 : vec4<f32> = u_xlat9;
        let x_808 : vec2<f32> = vec2<f32>(x_807.z, x_807.w);
        let x_810 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec9;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat4.x = x_819;
        let x_822 : f32 = u_xlat12.y;
        let x_824 : f32 = u_xlat4.x;
        let x_826 : f32 = u_xlat66;
        u_xlat66 = ((x_822 * x_824) + x_826);
        let x_829 : vec4<f32> = u_xlat7;
        let x_830 : vec2<f32> = vec2<f32>(x_829.z, x_829.w);
        let x_832 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec10;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_839.xy, x_839.z);
        u_xlat4.x = x_841;
        let x_844 : f32 = u_xlat12.z;
        let x_846 : f32 = u_xlat4.x;
        let x_848 : f32 = u_xlat66;
        u_xlat66 = ((x_844 * x_846) + x_848);
        let x_851 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
        let x_854 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec11;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat4.x = x_863;
        let x_866 : f32 = u_xlat12.w;
        let x_868 : f32 = u_xlat4.x;
        let x_870 : f32 = u_xlat66;
        u_xlat66 = ((x_866 * x_868) + x_870);
        let x_873 : vec4<f32> = u_xlat6;
        let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
        let x_876 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec12;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat4.x = x_885;
        let x_887 : f32 = u_xlat65;
        let x_889 : f32 = u_xlat4.x;
        let x_891 : f32 = u_xlat66;
        u_xlat64 = ((x_887 * x_889) + x_891);
      } else {
        let x_894 : vec4<f32> = u_xlat2;
        let x_897 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat4;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat2;
        let x_911 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat46 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat46;
        u_xlat5 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat5;
        let x_923 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = u_xlat46;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat46;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat48;
        let x_950 : vec2<f32> = u_xlat48;
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat48;
        let x_962 : vec2<f32> = u_xlat48;
        let x_964 : vec4<f32> = u_xlat5;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat6;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat26;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat5.y;
        u_xlat8.z = (x_981 * 0.08163200318813323975f);
        let x_985 : vec4<f32> = u_xlat5;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat6;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat9.y;
        u_xlat8.x = x_998;
        let x_1000 : vec2<f32> = u_xlat46;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat46;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat5.x;
        u_xlat6.y = x_1018;
        let x_1021 : f32 = u_xlat7.y;
        u_xlat6.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat46;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat5.y;
        u_xlat7.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat7.x;
        u_xlat9.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat4;
        let x_1080 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat46 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat9.y;
        u_xlat6.y = x_1096;
        let x_1099 : f32 = u_xlat7.z;
        u_xlat9.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat4;
        let x_1104 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat9.y;
        u_xlat6.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat7.w;
        u_xlat9.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat4;
        let x_1141 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat27 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat9.y;
        u_xlat6.w = x_1158;
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.x, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1174 : vec4<f32> = u_xlat4;
        let x_1177 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1187 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1194 : f32 = u_xlat6.x;
        u_xlat7.x = x_1194;
        let x_1196 : vec4<f32> = u_xlat4;
        let x_1199 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x) * x_1210);
        let x_1213 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1215);
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1218.z, x_1218.z, x_1218.z, x_1218.z) * x_1220);
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1222.w, x_1222.w, x_1222.w, x_1222.w) * x_1224);
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec13;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat65 = x_1239;
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec14;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat66 = x_1253;
        let x_1254 : f32 = u_xlat66;
        let x_1256 : f32 = u_xlat15.y;
        u_xlat66 = (x_1254 * x_1256);
        let x_1259 : f32 = u_xlat15.x;
        let x_1260 : f32 = u_xlat65;
        let x_1262 : f32 = u_xlat66;
        u_xlat65 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec2<f32> = u_xlat46;
        let x_1267 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec15;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat66 = x_1276;
        let x_1278 : f32 = u_xlat15.z;
        let x_1279 : f32 = u_xlat66;
        let x_1281 : f32 = u_xlat65;
        u_xlat65 = ((x_1278 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat13;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec16;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat66 = x_1296;
        let x_1298 : f32 = u_xlat15.w;
        let x_1299 : f32 = u_xlat66;
        let x_1301 : f32 = u_xlat65;
        u_xlat65 = ((x_1298 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec17;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat66 = x_1316;
        let x_1318 : f32 = u_xlat16.x;
        let x_1319 : f32 = u_xlat66;
        let x_1321 : f32 = u_xlat65;
        u_xlat65 = ((x_1318 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec18;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat66 = x_1336;
        let x_1338 : f32 = u_xlat16.y;
        let x_1339 : f32 = u_xlat66;
        let x_1341 : f32 = u_xlat65;
        u_xlat65 = ((x_1338 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat12;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec19;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat66 = x_1356;
        let x_1358 : f32 = u_xlat16.z;
        let x_1359 : f32 = u_xlat66;
        let x_1361 : f32 = u_xlat65;
        u_xlat65 = ((x_1358 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat13;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec20;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat66 = x_1376;
        let x_1378 : f32 = u_xlat16.w;
        let x_1379 : f32 = u_xlat66;
        let x_1381 : f32 = u_xlat65;
        u_xlat65 = ((x_1378 * x_1379) + x_1381);
        let x_1384 : vec4<f32> = u_xlat14;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec21;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat66 = x_1396;
        let x_1398 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat66;
        let x_1401 : f32 = u_xlat65;
        u_xlat65 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat14;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec22;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat66 = x_1416;
        let x_1418 : f32 = u_xlat17.y;
        let x_1419 : f32 = u_xlat66;
        let x_1421 : f32 = u_xlat65;
        u_xlat65 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec2<f32> = u_xlat27;
        let x_1426 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec23;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat66 = x_1435;
        let x_1437 : f32 = u_xlat17.z;
        let x_1438 : f32 = u_xlat66;
        let x_1440 : f32 = u_xlat65;
        u_xlat65 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec2<f32> = u_xlat54;
        let x_1445 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec24;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat66 = x_1454;
        let x_1456 : f32 = u_xlat17.w;
        let x_1457 : f32 = u_xlat66;
        let x_1459 : f32 = u_xlat65;
        u_xlat65 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec25;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat66 = x_1474;
        let x_1476 : f32 = u_xlat5.x;
        let x_1477 : f32 = u_xlat66;
        let x_1479 : f32 = u_xlat65;
        u_xlat65 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat9;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec26;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat66 = x_1494;
        let x_1496 : f32 = u_xlat5.y;
        let x_1497 : f32 = u_xlat66;
        let x_1499 : f32 = u_xlat65;
        u_xlat65 = ((x_1496 * x_1497) + x_1499);
        let x_1502 : vec2<f32> = u_xlat49;
        let x_1504 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec27;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat66 = x_1513;
        let x_1515 : f32 = u_xlat5.z;
        let x_1516 : f32 = u_xlat66;
        let x_1518 : f32 = u_xlat65;
        u_xlat65 = ((x_1515 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat4;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec28;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat66 = x_1533;
        let x_1535 : f32 = u_xlat5.w;
        let x_1536 : f32 = u_xlat66;
        let x_1538 : f32 = u_xlat65;
        u_xlat64 = ((x_1535 * x_1536) + x_1538);
      }
    }
  } else {
    let x_1542 : vec4<f32> = u_xlat2;
    let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
    let x_1545 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
    let x_1552 : vec3<f32> = txVec29;
    let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
    u_xlat64 = x_1554;
  }
  let x_1556 : f32 = x_75.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1556) + 1.0f);
  let x_1560 : f32 = u_xlat64;
  let x_1562 : f32 = x_75.x_MainLightShadowParams.x;
  let x_1565 : f32 = u_xlat2.x;
  u_xlat64 = ((x_1560 * x_1562) + x_1565);
  let x_1568 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_1568);
  let x_1573 : f32 = u_xlat2.z;
  u_xlatb23 = (x_1573 >= 1.0f);
  let x_1575 : bool = u_xlatb23;
  let x_1577 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_1575 | x_1577);
  let x_1581 : bool = u_xlatb2.x;
  let x_1582 : f32 = u_xlat64;
  u_xlat64 = select(x_1582, 1.0f, x_1581);
  let x_1584 : vec3<f32> = vs_TEXCOORD1;
  let x_1587 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1589 : vec3<f32> = (x_1584 + -(x_1587));
  let x_1590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
  let x_1592 : vec4<f32> = u_xlat2;
  let x_1594 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_1592.x, x_1592.y, x_1592.z), vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
  let x_1600 : f32 = u_xlat2.x;
  let x_1602 : f32 = x_75.x_MainLightShadowParams.z;
  let x_1605 : f32 = x_75.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1600 * x_1602) + x_1605);
  let x_1609 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1609, 0.0f, 1.0f);
  let x_1613 : f32 = u_xlat64;
  u_xlat44 = (-(x_1613) + 1.0f);
  let x_1617 : f32 = u_xlat23.x;
  let x_1618 : f32 = u_xlat44;
  let x_1620 : f32 = u_xlat64;
  u_xlat64 = ((x_1617 * x_1618) + x_1620);
  let x_1622 : f32 = u_xlat64;
  let x_1628 : f32 = x_1626.unity_LightData.z;
  u_xlat64 = (x_1622 * x_1628);
  let x_1630 : f32 = u_xlat64;
  let x_1633 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat23 = (vec3<f32>(x_1630, x_1630, x_1630) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1636 : vec3<f32> = u_xlat1;
  let x_1638 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat64 = dot(x_1636, vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : f32 = u_xlat64;
  u_xlat64 = clamp(x_1641, 0.0f, 1.0f);
  let x_1643 : f32 = u_xlat64;
  let x_1645 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1643, x_1643, x_1643) * x_1645);
  let x_1647 : vec4<f32> = u_xlat0;
  let x_1649 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1647.y, x_1647.z, x_1647.w) * x_1649);
  let x_1652 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1654 : f32 = x_1626.unity_LightData.y;
  u_xlat64 = min(x_1652, x_1654);
  let x_1656 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_1656));
  let x_1660 : f32 = u_xlat2.x;
  let x_1663 : f32 = x_75.x_AdditionalShadowFadeParams.x;
  let x_1666 : f32 = x_75.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1660 * x_1663) + x_1666);
  let x_1670 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1670, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1683 : u32 = u_xlatu_loop_1;
    let x_1684 : u32 = u_xlatu64;
    if ((x_1683 < x_1684)) {
    } else {
      break;
    }
    let x_1687 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_1687 >> 2u);
    let x_1690 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1690 & 3u));
    let x_1694 : u32 = u_xlatu67;
    let x_1697 : vec4<f32> = x_1626.unity_LightIndices[bitcast<i32>(x_1694)];
    let x_1707 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1712 : vec4<u32> = indexable[x_1707];
    u_xlat67 = dot(x_1697, bitcast<vec4<f32>>(x_1712));
    let x_1716 : f32 = u_xlat67;
    u_xlati67 = i32(x_1716);
    let x_1718 : vec3<f32> = vs_TEXCOORD1;
    let x_1729 : i32 = u_xlati67;
    let x_1731 : vec4<f32> = x_1728.x_AdditionalLightsPosition[x_1729];
    let x_1734 : i32 = u_xlati67;
    let x_1736 : vec4<f32> = x_1728.x_AdditionalLightsPosition[x_1734];
    let x_1738 : vec3<f32> = ((-(x_1718) * vec3<f32>(x_1731.w, x_1731.w, x_1731.w)) + vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
    let x_1739 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
    let x_1742 : vec4<f32> = u_xlat5;
    let x_1744 : vec4<f32> = u_xlat5;
    u_xlat68 = dot(vec3<f32>(x_1742.x, x_1742.y, x_1742.z), vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
    let x_1747 : f32 = u_xlat68;
    u_xlat68 = max(x_1747, 0.00006103515625f);
    let x_1750 : f32 = u_xlat68;
    u_xlat6.x = inverseSqrt(x_1750);
    let x_1753 : vec4<f32> = u_xlat5;
    let x_1755 : vec4<f32> = u_xlat6;
    let x_1757 : vec3<f32> = (vec3<f32>(x_1753.x, x_1753.y, x_1753.z) * vec3<f32>(x_1755.x, x_1755.x, x_1755.x));
    let x_1758 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
    let x_1760 : f32 = u_xlat68;
    u_xlat6.x = (1.0f / x_1760);
    let x_1763 : f32 = u_xlat68;
    let x_1764 : i32 = u_xlati67;
    let x_1766 : f32 = x_1728.x_AdditionalLightsAttenuation[x_1764].x;
    u_xlat68 = (x_1763 * x_1766);
    let x_1768 : f32 = u_xlat68;
    let x_1770 : f32 = u_xlat68;
    u_xlat68 = ((-(x_1768) * x_1770) + 1.0f);
    let x_1773 : f32 = u_xlat68;
    u_xlat68 = max(x_1773, 0.0f);
    let x_1775 : f32 = u_xlat68;
    let x_1776 : f32 = u_xlat68;
    u_xlat68 = (x_1775 * x_1776);
    let x_1778 : f32 = u_xlat68;
    let x_1780 : f32 = u_xlat6.x;
    u_xlat68 = (x_1778 * x_1780);
    let x_1782 : i32 = u_xlati67;
    let x_1784 : vec4<f32> = x_1728.x_AdditionalLightsSpotDir[x_1782];
    let x_1786 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1784.x, x_1784.y, x_1784.z), vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
    let x_1791 : f32 = u_xlat6.x;
    let x_1792 : i32 = u_xlati67;
    let x_1794 : f32 = x_1728.x_AdditionalLightsAttenuation[x_1792].z;
    let x_1796 : i32 = u_xlati67;
    let x_1798 : f32 = x_1728.x_AdditionalLightsAttenuation[x_1796].w;
    u_xlat6.x = ((x_1791 * x_1794) + x_1798);
    let x_1802 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1802, 0.0f, 1.0f);
    let x_1806 : f32 = u_xlat6.x;
    let x_1808 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1806 * x_1808);
    let x_1811 : f32 = u_xlat68;
    let x_1813 : f32 = u_xlat6.x;
    u_xlat68 = (x_1811 * x_1813);
    let x_1817 : i32 = u_xlati67;
    let x_1819 : f32 = x_75.x_AdditionalShadowParams[x_1817].w;
    u_xlati6 = i32(x_1819);
    let x_1824 : i32 = u_xlati6;
    u_xlatb27.x = (x_1824 >= 0i);
    let x_1828 : bool = u_xlatb27.x;
    if (x_1828) {
      let x_1832 : i32 = u_xlati67;
      let x_1834 : f32 = x_75.x_AdditionalShadowParams[x_1832].z;
      u_xlatb27.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1834, x_1834, x_1834, x_1834))));
      let x_1840 : bool = u_xlatb27.x;
      if (x_1840) {
        let x_1843 : vec4<f32> = u_xlat5;
        let x_1846 : vec4<f32> = u_xlat5;
        let x_1849 : vec4<bool> = (abs(vec4<f32>(x_1843.z, x_1843.z, x_1843.y, x_1843.y)) >= abs(vec4<f32>(x_1846.x, x_1846.y, x_1846.x, x_1846.x)));
        u_xlatb27 = vec3<bool>(x_1849.x, x_1849.y, x_1849.z);
        let x_1852 : bool = u_xlatb27.y;
        let x_1854 : bool = u_xlatb27.x;
        u_xlatb27.x = (x_1852 & x_1854);
        let x_1858 : vec4<f32> = u_xlat5;
        let x_1861 : vec4<bool> = (-(vec4<f32>(x_1858.z, x_1858.y, x_1858.x, x_1858.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_1861.x, x_1861.y, x_1861.z);
        let x_1864 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1864);
        let x_1869 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1869);
        let x_1873 : bool = u_xlatb7.z;
        u_xlat48.x = select(0.0f, 1.0f, x_1873);
        let x_1877 : bool = u_xlatb27.z;
        if (x_1877) {
          let x_1883 : f32 = u_xlat7.y;
          x_1879 = x_1883;
        } else {
          let x_1886 : f32 = u_xlat48.x;
          x_1879 = x_1886;
        }
        let x_1887 : f32 = x_1879;
        u_xlat48.x = x_1887;
        let x_1890 : bool = u_xlatb27.x;
        if (x_1890) {
          let x_1895 : f32 = u_xlat7.x;
          x_1891 = x_1895;
        } else {
          let x_1898 : f32 = u_xlat48.x;
          x_1891 = x_1898;
        }
        let x_1899 : f32 = x_1891;
        u_xlat27.x = x_1899;
        let x_1901 : i32 = u_xlati67;
        let x_1903 : f32 = x_75.x_AdditionalShadowParams[x_1901].w;
        u_xlat48.x = trunc(x_1903);
        let x_1907 : f32 = u_xlat27.x;
        let x_1909 : f32 = u_xlat48.x;
        u_xlat27.x = (x_1907 + x_1909);
        let x_1913 : f32 = u_xlat27.x;
        u_xlati6 = i32(x_1913);
      }
      let x_1915 : i32 = u_xlati6;
      u_xlati6 = (x_1915 << bitcast<u32>(2i));
      let x_1917 : vec3<f32> = vs_TEXCOORD1;
      let x_1920 : i32 = u_xlati6;
      let x_1923 : i32 = u_xlati6;
      let x_1927 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_1920 + 1i) / 4i)][((x_1923 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1917.y, x_1917.y, x_1917.y, x_1917.y) * x_1927);
      let x_1929 : i32 = u_xlati6;
      let x_1931 : i32 = u_xlati6;
      let x_1934 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[(x_1929 / 4i)][(x_1931 % 4i)];
      let x_1935 : vec3<f32> = vs_TEXCOORD1;
      let x_1938 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1934 * vec4<f32>(x_1935.x, x_1935.x, x_1935.x, x_1935.x)) + x_1938);
      let x_1940 : i32 = u_xlati6;
      let x_1943 : i32 = u_xlati6;
      let x_1947 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_1940 + 2i) / 4i)][((x_1943 + 2i) % 4i)];
      let x_1948 : vec3<f32> = vs_TEXCOORD1;
      let x_1951 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1947 * vec4<f32>(x_1948.z, x_1948.z, x_1948.z, x_1948.z)) + x_1951);
      let x_1953 : vec4<f32> = u_xlat7;
      let x_1954 : i32 = u_xlati6;
      let x_1957 : i32 = u_xlati6;
      let x_1961 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_1954 + 3i) / 4i)][((x_1957 + 3i) % 4i)];
      u_xlat6 = (x_1953 + x_1961);
      let x_1963 : vec4<f32> = u_xlat6;
      let x_1965 : vec4<f32> = u_xlat6;
      let x_1967 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) / vec3<f32>(x_1965.w, x_1965.w, x_1965.w));
      let x_1968 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
      let x_1971 : i32 = u_xlati67;
      let x_1973 : f32 = x_75.x_AdditionalShadowParams[x_1971].y;
      u_xlatb69 = (0.0f < x_1973);
      let x_1975 : bool = u_xlatb69;
      if (x_1975) {
        let x_1978 : i32 = u_xlati67;
        let x_1980 : f32 = x_75.x_AdditionalShadowParams[x_1978].y;
        u_xlatb69 = (1.0f == x_1980);
        let x_1982 : bool = u_xlatb69;
        if (x_1982) {
          let x_1985 : vec4<f32> = u_xlat6;
          let x_1989 : vec4<f32> = x_75.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_1985.x, x_1985.y, x_1985.x, x_1985.y) + x_1989);
          let x_1992 : vec4<f32> = u_xlat7;
          let x_1993 : vec2<f32> = vec2<f32>(x_1992.x, x_1992.y);
          let x_1995 : f32 = u_xlat6.z;
          txVec30 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
          let x_2003 : vec3<f32> = txVec30;
          let x_2005 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2003.xy, x_2003.z);
          u_xlat8.x = x_2005;
          let x_2008 : vec4<f32> = u_xlat7;
          let x_2009 : vec2<f32> = vec2<f32>(x_2008.z, x_2008.w);
          let x_2011 : f32 = u_xlat6.z;
          txVec31 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
          let x_2018 : vec3<f32> = txVec31;
          let x_2020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2018.xy, x_2018.z);
          u_xlat8.y = x_2020;
          let x_2022 : vec4<f32> = u_xlat6;
          let x_2026 : vec4<f32> = x_75.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_2022.x, x_2022.y, x_2022.x, x_2022.y) + x_2026);
          let x_2029 : vec4<f32> = u_xlat7;
          let x_2030 : vec2<f32> = vec2<f32>(x_2029.x, x_2029.y);
          let x_2032 : f32 = u_xlat6.z;
          txVec32 = vec3<f32>(x_2030.x, x_2030.y, x_2032);
          let x_2039 : vec3<f32> = txVec32;
          let x_2041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2039.xy, x_2039.z);
          u_xlat8.z = x_2041;
          let x_2044 : vec4<f32> = u_xlat7;
          let x_2045 : vec2<f32> = vec2<f32>(x_2044.z, x_2044.w);
          let x_2047 : f32 = u_xlat6.z;
          txVec33 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
          let x_2054 : vec3<f32> = txVec33;
          let x_2056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
          u_xlat8.w = x_2056;
          let x_2059 : vec4<f32> = u_xlat8;
          u_xlat69 = dot(x_2059, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2062 : i32 = u_xlati67;
          let x_2064 : f32 = x_75.x_AdditionalShadowParams[x_2062].y;
          u_xlatb7.x = (2.0f == x_2064);
          let x_2068 : bool = u_xlatb7.x;
          if (x_2068) {
            let x_2071 : vec4<f32> = u_xlat6;
            let x_2075 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2078 : vec2<f32> = ((vec2<f32>(x_2071.x, x_2071.y) * vec2<f32>(x_2075.z, x_2075.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2079 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2078.x, x_2078.y, x_2079.z, x_2079.w);
            let x_2081 : vec4<f32> = u_xlat7;
            let x_2083 : vec2<f32> = floor(vec2<f32>(x_2081.x, x_2081.y));
            let x_2084 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2083.x, x_2083.y, x_2084.z, x_2084.w);
            let x_2086 : vec4<f32> = u_xlat6;
            let x_2089 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2092 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2089.z, x_2089.w)) + -(vec2<f32>(x_2092.x, x_2092.y)));
            let x_2096 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2096.x, x_2096.x, x_2096.y, x_2096.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2099 : vec4<f32> = u_xlat8;
            let x_2101 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2099.x, x_2099.x, x_2099.z, x_2099.z) * vec4<f32>(x_2101.x, x_2101.x, x_2101.z, x_2101.z));
            let x_2104 : vec4<f32> = u_xlat9;
            let x_2106 : vec2<f32> = (vec2<f32>(x_2104.y, x_2104.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2107 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2106.x, x_2107.y, x_2106.y, x_2107.w);
            let x_2109 : vec4<f32> = u_xlat9;
            let x_2112 : vec2<f32> = u_xlat49;
            let x_2114 : vec2<f32> = ((vec2<f32>(x_2109.x, x_2109.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2112));
            let x_2115 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2114.x, x_2114.y, x_2115.z, x_2115.w);
            let x_2118 : vec2<f32> = u_xlat49;
            u_xlat51 = (-(x_2118) + vec2<f32>(1.0f, 1.0f));
            let x_2121 : vec2<f32> = u_xlat49;
            let x_2122 : vec2<f32> = min(x_2121, vec2<f32>(0.0f, 0.0f));
            let x_2123 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2123.w);
            let x_2125 : vec4<f32> = u_xlat10;
            let x_2128 : vec4<f32> = u_xlat10;
            let x_2131 : vec2<f32> = u_xlat51;
            let x_2132 : vec2<f32> = ((-(vec2<f32>(x_2125.x, x_2125.y)) * vec2<f32>(x_2128.x, x_2128.y)) + x_2131);
            let x_2133 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2132.x, x_2132.y, x_2133.z, x_2133.w);
            let x_2135 : vec2<f32> = u_xlat49;
            u_xlat49 = max(x_2135, vec2<f32>(0.0f, 0.0f));
            let x_2137 : vec2<f32> = u_xlat49;
            let x_2139 : vec2<f32> = u_xlat49;
            let x_2141 : vec4<f32> = u_xlat8;
            u_xlat49 = ((-(x_2137) * x_2139) + vec2<f32>(x_2141.y, x_2141.w));
            let x_2144 : vec4<f32> = u_xlat10;
            let x_2146 : vec2<f32> = (vec2<f32>(x_2144.x, x_2144.y) + vec2<f32>(1.0f, 1.0f));
            let x_2147 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2146.x, x_2146.y, x_2147.z, x_2147.w);
            let x_2149 : vec2<f32> = u_xlat49;
            u_xlat49 = (x_2149 + vec2<f32>(1.0f, 1.0f));
            let x_2151 : vec4<f32> = u_xlat9;
            let x_2153 : vec2<f32> = (vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2154 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
            let x_2156 : vec2<f32> = u_xlat51;
            let x_2157 : vec2<f32> = (x_2156 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2158 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2157.x, x_2157.y, x_2158.z, x_2158.w);
            let x_2160 : vec4<f32> = u_xlat10;
            let x_2162 : vec2<f32> = (vec2<f32>(x_2160.x, x_2160.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2163 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
            let x_2165 : vec2<f32> = u_xlat49;
            let x_2166 : vec2<f32> = (x_2165 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2167 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
            let x_2169 : vec4<f32> = u_xlat8;
            u_xlat49 = (vec2<f32>(x_2169.y, x_2169.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2173 : f32 = u_xlat10.x;
            u_xlat11.z = x_2173;
            let x_2176 : f32 = u_xlat49.x;
            u_xlat11.w = x_2176;
            let x_2179 : f32 = u_xlat12.x;
            u_xlat9.z = x_2179;
            let x_2182 : f32 = u_xlat8.x;
            u_xlat9.w = x_2182;
            let x_2184 : vec4<f32> = u_xlat9;
            let x_2186 : vec4<f32> = u_xlat11;
            u_xlat13 = (vec4<f32>(x_2184.z, x_2184.w, x_2184.x, x_2184.z) + vec4<f32>(x_2186.z, x_2186.w, x_2186.x, x_2186.z));
            let x_2190 : f32 = u_xlat11.y;
            u_xlat10.z = x_2190;
            let x_2193 : f32 = u_xlat49.y;
            u_xlat10.w = x_2193;
            let x_2196 : f32 = u_xlat9.y;
            u_xlat12.z = x_2196;
            let x_2199 : f32 = u_xlat8.z;
            u_xlat12.w = x_2199;
            let x_2201 : vec4<f32> = u_xlat10;
            let x_2203 : vec4<f32> = u_xlat12;
            let x_2205 : vec3<f32> = (vec3<f32>(x_2201.z, x_2201.y, x_2201.w) + vec3<f32>(x_2203.z, x_2203.y, x_2203.w));
            let x_2206 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
            let x_2208 : vec4<f32> = u_xlat9;
            let x_2210 : vec4<f32> = u_xlat13;
            let x_2212 : vec3<f32> = (vec3<f32>(x_2208.x, x_2208.z, x_2208.w) / vec3<f32>(x_2210.z, x_2210.w, x_2210.y));
            let x_2213 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
            let x_2215 : vec4<f32> = u_xlat9;
            let x_2217 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.y, x_2215.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2218 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
            let x_2220 : vec4<f32> = u_xlat12;
            let x_2222 : vec4<f32> = u_xlat8;
            let x_2224 : vec3<f32> = (vec3<f32>(x_2220.z, x_2220.y, x_2220.w) / vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
            let x_2225 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
            let x_2227 : vec4<f32> = u_xlat10;
            let x_2229 : vec3<f32> = (vec3<f32>(x_2227.x, x_2227.y, x_2227.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2230 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
            let x_2232 : vec4<f32> = u_xlat9;
            let x_2235 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2237 : vec3<f32> = (vec3<f32>(x_2232.y, x_2232.x, x_2232.z) * vec3<f32>(x_2235.x, x_2235.x, x_2235.x));
            let x_2238 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
            let x_2240 : vec4<f32> = u_xlat10;
            let x_2243 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2245 : vec3<f32> = (vec3<f32>(x_2240.x, x_2240.y, x_2240.z) * vec3<f32>(x_2243.y, x_2243.y, x_2243.y));
            let x_2246 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
            let x_2249 : f32 = u_xlat10.x;
            u_xlat9.w = x_2249;
            let x_2251 : vec4<f32> = u_xlat7;
            let x_2254 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2257 : vec4<f32> = u_xlat9;
            u_xlat11 = ((vec4<f32>(x_2251.x, x_2251.y, x_2251.x, x_2251.y) * vec4<f32>(x_2254.x, x_2254.y, x_2254.x, x_2254.y)) + vec4<f32>(x_2257.y, x_2257.w, x_2257.x, x_2257.w));
            let x_2260 : vec4<f32> = u_xlat7;
            let x_2263 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2266 : vec4<f32> = u_xlat9;
            u_xlat49 = ((vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(x_2263.x, x_2263.y)) + vec2<f32>(x_2266.z, x_2266.w));
            let x_2270 : f32 = u_xlat9.y;
            u_xlat10.w = x_2270;
            let x_2272 : vec4<f32> = u_xlat10;
            let x_2273 : vec2<f32> = vec2<f32>(x_2272.y, x_2272.z);
            let x_2274 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2274.x, x_2273.x, x_2274.z, x_2273.y);
            let x_2276 : vec4<f32> = u_xlat7;
            let x_2279 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2282 : vec4<f32> = u_xlat9;
            u_xlat12 = ((vec4<f32>(x_2276.x, x_2276.y, x_2276.x, x_2276.y) * vec4<f32>(x_2279.x, x_2279.y, x_2279.x, x_2279.y)) + vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2282.y));
            let x_2285 : vec4<f32> = u_xlat7;
            let x_2288 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2291 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2285.x, x_2285.y, x_2285.x, x_2285.y) * vec4<f32>(x_2288.x, x_2288.y, x_2288.x, x_2288.y)) + vec4<f32>(x_2291.w, x_2291.y, x_2291.w, x_2291.z));
            let x_2294 : vec4<f32> = u_xlat7;
            let x_2297 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2300 : vec4<f32> = u_xlat9;
            u_xlat9 = ((vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y) * vec4<f32>(x_2297.x, x_2297.y, x_2297.x, x_2297.y)) + vec4<f32>(x_2300.x, x_2300.w, x_2300.z, x_2300.w));
            let x_2303 : vec4<f32> = u_xlat8;
            let x_2305 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2303.x, x_2303.x, x_2303.x, x_2303.y) * vec4<f32>(x_2305.z, x_2305.w, x_2305.y, x_2305.z));
            let x_2308 : vec4<f32> = u_xlat8;
            let x_2310 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2308.y, x_2308.y, x_2308.z, x_2308.z) * x_2310);
            let x_2313 : f32 = u_xlat8.z;
            let x_2315 : f32 = u_xlat13.y;
            u_xlat7.x = (x_2313 * x_2315);
            let x_2319 : vec4<f32> = u_xlat11;
            let x_2320 : vec2<f32> = vec2<f32>(x_2319.x, x_2319.y);
            let x_2322 : f32 = u_xlat6.z;
            txVec34 = vec3<f32>(x_2320.x, x_2320.y, x_2322);
            let x_2330 : vec3<f32> = txVec34;
            let x_2332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2330.xy, x_2330.z);
            u_xlat28 = x_2332;
            let x_2334 : vec4<f32> = u_xlat11;
            let x_2335 : vec2<f32> = vec2<f32>(x_2334.z, x_2334.w);
            let x_2337 : f32 = u_xlat6.z;
            txVec35 = vec3<f32>(x_2335.x, x_2335.y, x_2337);
            let x_2344 : vec3<f32> = txVec35;
            let x_2346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2344.xy, x_2344.z);
            u_xlat8.x = x_2346;
            let x_2349 : f32 = u_xlat8.x;
            let x_2351 : f32 = u_xlat14.y;
            u_xlat8.x = (x_2349 * x_2351);
            let x_2355 : f32 = u_xlat14.x;
            let x_2356 : f32 = u_xlat28;
            let x_2359 : f32 = u_xlat8.x;
            u_xlat28 = ((x_2355 * x_2356) + x_2359);
            let x_2362 : vec2<f32> = u_xlat49;
            let x_2364 : f32 = u_xlat6.z;
            txVec36 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
            let x_2371 : vec3<f32> = txVec36;
            let x_2373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
            u_xlat49.x = x_2373;
            let x_2376 : f32 = u_xlat14.z;
            let x_2378 : f32 = u_xlat49.x;
            let x_2380 : f32 = u_xlat28;
            u_xlat28 = ((x_2376 * x_2378) + x_2380);
            let x_2383 : vec4<f32> = u_xlat10;
            let x_2384 : vec2<f32> = vec2<f32>(x_2383.x, x_2383.y);
            let x_2386 : f32 = u_xlat6.z;
            txVec37 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
            let x_2393 : vec3<f32> = txVec37;
            let x_2395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2393.xy, x_2393.z);
            u_xlat49.x = x_2395;
            let x_2398 : f32 = u_xlat14.w;
            let x_2400 : f32 = u_xlat49.x;
            let x_2402 : f32 = u_xlat28;
            u_xlat28 = ((x_2398 * x_2400) + x_2402);
            let x_2405 : vec4<f32> = u_xlat12;
            let x_2406 : vec2<f32> = vec2<f32>(x_2405.x, x_2405.y);
            let x_2408 : f32 = u_xlat6.z;
            txVec38 = vec3<f32>(x_2406.x, x_2406.y, x_2408);
            let x_2415 : vec3<f32> = txVec38;
            let x_2417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2415.xy, x_2415.z);
            u_xlat49.x = x_2417;
            let x_2420 : f32 = u_xlat15.x;
            let x_2422 : f32 = u_xlat49.x;
            let x_2424 : f32 = u_xlat28;
            u_xlat28 = ((x_2420 * x_2422) + x_2424);
            let x_2427 : vec4<f32> = u_xlat12;
            let x_2428 : vec2<f32> = vec2<f32>(x_2427.z, x_2427.w);
            let x_2430 : f32 = u_xlat6.z;
            txVec39 = vec3<f32>(x_2428.x, x_2428.y, x_2430);
            let x_2437 : vec3<f32> = txVec39;
            let x_2439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2437.xy, x_2437.z);
            u_xlat49.x = x_2439;
            let x_2442 : f32 = u_xlat15.y;
            let x_2444 : f32 = u_xlat49.x;
            let x_2446 : f32 = u_xlat28;
            u_xlat28 = ((x_2442 * x_2444) + x_2446);
            let x_2449 : vec4<f32> = u_xlat10;
            let x_2450 : vec2<f32> = vec2<f32>(x_2449.z, x_2449.w);
            let x_2452 : f32 = u_xlat6.z;
            txVec40 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
            let x_2459 : vec3<f32> = txVec40;
            let x_2461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
            u_xlat49.x = x_2461;
            let x_2464 : f32 = u_xlat15.z;
            let x_2466 : f32 = u_xlat49.x;
            let x_2468 : f32 = u_xlat28;
            u_xlat28 = ((x_2464 * x_2466) + x_2468);
            let x_2471 : vec4<f32> = u_xlat9;
            let x_2472 : vec2<f32> = vec2<f32>(x_2471.x, x_2471.y);
            let x_2474 : f32 = u_xlat6.z;
            txVec41 = vec3<f32>(x_2472.x, x_2472.y, x_2474);
            let x_2481 : vec3<f32> = txVec41;
            let x_2483 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2481.xy, x_2481.z);
            u_xlat49.x = x_2483;
            let x_2486 : f32 = u_xlat15.w;
            let x_2488 : f32 = u_xlat49.x;
            let x_2490 : f32 = u_xlat28;
            u_xlat28 = ((x_2486 * x_2488) + x_2490);
            let x_2493 : vec4<f32> = u_xlat9;
            let x_2494 : vec2<f32> = vec2<f32>(x_2493.z, x_2493.w);
            let x_2496 : f32 = u_xlat6.z;
            txVec42 = vec3<f32>(x_2494.x, x_2494.y, x_2496);
            let x_2503 : vec3<f32> = txVec42;
            let x_2505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2503.xy, x_2503.z);
            u_xlat49.x = x_2505;
            let x_2508 : f32 = u_xlat7.x;
            let x_2510 : f32 = u_xlat49.x;
            let x_2512 : f32 = u_xlat28;
            u_xlat69 = ((x_2508 * x_2510) + x_2512);
          } else {
            let x_2515 : vec4<f32> = u_xlat6;
            let x_2518 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2521 : vec2<f32> = ((vec2<f32>(x_2515.x, x_2515.y) * vec2<f32>(x_2518.z, x_2518.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2522 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2524 : vec4<f32> = u_xlat7;
            let x_2526 : vec2<f32> = floor(vec2<f32>(x_2524.x, x_2524.y));
            let x_2527 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2526.x, x_2526.y, x_2527.z, x_2527.w);
            let x_2529 : vec4<f32> = u_xlat6;
            let x_2532 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2535 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2532.z, x_2532.w)) + -(vec2<f32>(x_2535.x, x_2535.y)));
            let x_2539 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2539.x, x_2539.x, x_2539.y, x_2539.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2542 : vec4<f32> = u_xlat8;
            let x_2544 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2542.x, x_2542.x, x_2542.z, x_2542.z) * vec4<f32>(x_2544.x, x_2544.x, x_2544.z, x_2544.z));
            let x_2547 : vec4<f32> = u_xlat9;
            let x_2549 : vec2<f32> = (vec2<f32>(x_2547.y, x_2547.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2550 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2550.x, x_2549.x, x_2550.z, x_2549.y);
            let x_2552 : vec4<f32> = u_xlat9;
            let x_2555 : vec2<f32> = u_xlat49;
            let x_2557 : vec2<f32> = ((vec2<f32>(x_2552.x, x_2552.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2555));
            let x_2558 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2557.x, x_2558.y, x_2557.y, x_2558.w);
            let x_2560 : vec2<f32> = u_xlat49;
            let x_2562 : vec2<f32> = (-(x_2560) + vec2<f32>(1.0f, 1.0f));
            let x_2563 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec2<f32> = u_xlat49;
            u_xlat51 = min(x_2565, vec2<f32>(0.0f, 0.0f));
            let x_2567 : vec2<f32> = u_xlat51;
            let x_2569 : vec2<f32> = u_xlat51;
            let x_2571 : vec4<f32> = u_xlat9;
            let x_2573 : vec2<f32> = ((-(x_2567) * x_2569) + vec2<f32>(x_2571.x, x_2571.y));
            let x_2574 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2573.x, x_2573.y, x_2574.z, x_2574.w);
            let x_2576 : vec2<f32> = u_xlat49;
            u_xlat51 = max(x_2576, vec2<f32>(0.0f, 0.0f));
            let x_2579 : vec2<f32> = u_xlat51;
            let x_2581 : vec2<f32> = u_xlat51;
            let x_2583 : vec4<f32> = u_xlat8;
            let x_2585 : vec2<f32> = ((-(x_2579) * x_2581) + vec2<f32>(x_2583.y, x_2583.w));
            let x_2586 : vec3<f32> = u_xlat29;
            u_xlat29 = vec3<f32>(x_2585.x, x_2586.y, x_2585.y);
            let x_2588 : vec4<f32> = u_xlat9;
            let x_2590 : vec2<f32> = (vec2<f32>(x_2588.x, x_2588.y) + vec2<f32>(2.0f, 2.0f));
            let x_2591 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
            let x_2593 : vec3<f32> = u_xlat29;
            let x_2595 : vec2<f32> = (vec2<f32>(x_2593.x, x_2593.z) + vec2<f32>(2.0f, 2.0f));
            let x_2596 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2596.x, x_2595.x, x_2596.z, x_2595.y);
            let x_2599 : f32 = u_xlat8.y;
            u_xlat11.z = (x_2599 * 0.08163200318813323975f);
            let x_2602 : vec4<f32> = u_xlat8;
            let x_2604 : vec3<f32> = (vec3<f32>(x_2602.z, x_2602.x, x_2602.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2605 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat9;
            let x_2609 : vec2<f32> = (vec2<f32>(x_2607.x, x_2607.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2610 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2609.x, x_2609.y, x_2610.z, x_2610.w);
            let x_2613 : f32 = u_xlat12.y;
            u_xlat11.x = x_2613;
            let x_2615 : vec2<f32> = u_xlat49;
            let x_2618 : vec2<f32> = ((vec2<f32>(x_2615.x, x_2615.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2619 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2619.x, x_2618.x, x_2619.z, x_2618.y);
            let x_2621 : vec2<f32> = u_xlat49;
            let x_2624 : vec2<f32> = ((vec2<f32>(x_2621.x, x_2621.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2625 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2624.x, x_2625.y, x_2624.y, x_2625.w);
            let x_2628 : f32 = u_xlat8.x;
            u_xlat9.y = x_2628;
            let x_2631 : f32 = u_xlat10.y;
            u_xlat9.w = x_2631;
            let x_2633 : vec4<f32> = u_xlat9;
            let x_2634 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2633 + x_2634);
            let x_2636 : vec2<f32> = u_xlat49;
            let x_2639 : vec2<f32> = ((vec2<f32>(x_2636.y, x_2636.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2640 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2640.x, x_2639.x, x_2640.z, x_2639.y);
            let x_2642 : vec2<f32> = u_xlat49;
            let x_2645 : vec2<f32> = ((vec2<f32>(x_2642.y, x_2642.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2646 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2645.x, x_2646.y, x_2645.y, x_2646.w);
            let x_2649 : f32 = u_xlat8.y;
            u_xlat10.y = x_2649;
            let x_2651 : vec4<f32> = u_xlat10;
            let x_2652 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2651 + x_2652);
            let x_2654 : vec4<f32> = u_xlat9;
            let x_2655 : vec4<f32> = u_xlat11;
            u_xlat9 = (x_2654 / x_2655);
            let x_2657 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2657 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2659 : vec4<f32> = u_xlat10;
            let x_2660 : vec4<f32> = u_xlat8;
            u_xlat10 = (x_2659 / x_2660);
            let x_2662 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2662 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2664 : vec4<f32> = u_xlat9;
            let x_2667 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2664.w, x_2664.x, x_2664.y, x_2664.z) * vec4<f32>(x_2667.x, x_2667.x, x_2667.x, x_2667.x));
            let x_2670 : vec4<f32> = u_xlat10;
            let x_2673 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2670.x, x_2670.w, x_2670.y, x_2670.z) * vec4<f32>(x_2673.y, x_2673.y, x_2673.y, x_2673.y));
            let x_2676 : vec4<f32> = u_xlat9;
            let x_2677 : vec3<f32> = vec3<f32>(x_2676.y, x_2676.z, x_2676.w);
            let x_2678 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2677.x, x_2678.y, x_2677.y, x_2677.z);
            let x_2681 : f32 = u_xlat10.x;
            u_xlat12.y = x_2681;
            let x_2683 : vec4<f32> = u_xlat7;
            let x_2686 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2689 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.y) * vec4<f32>(x_2686.x, x_2686.y, x_2686.x, x_2686.y)) + vec4<f32>(x_2689.x, x_2689.y, x_2689.z, x_2689.y));
            let x_2692 : vec4<f32> = u_xlat7;
            let x_2695 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2698 : vec4<f32> = u_xlat12;
            u_xlat49 = ((vec2<f32>(x_2692.x, x_2692.y) * vec2<f32>(x_2695.x, x_2695.y)) + vec2<f32>(x_2698.w, x_2698.y));
            let x_2702 : f32 = u_xlat12.y;
            u_xlat9.y = x_2702;
            let x_2705 : f32 = u_xlat10.z;
            u_xlat12.y = x_2705;
            let x_2707 : vec4<f32> = u_xlat7;
            let x_2710 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2713 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2707.x, x_2707.y, x_2707.x, x_2707.y) * vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.y)) + vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2713.y));
            let x_2716 : vec4<f32> = u_xlat7;
            let x_2719 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2722 : vec4<f32> = u_xlat12;
            let x_2724 : vec2<f32> = ((vec2<f32>(x_2716.x, x_2716.y) * vec2<f32>(x_2719.x, x_2719.y)) + vec2<f32>(x_2722.w, x_2722.y));
            let x_2725 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
            let x_2728 : f32 = u_xlat12.y;
            u_xlat9.z = x_2728;
            let x_2730 : vec4<f32> = u_xlat7;
            let x_2733 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2730.x, x_2730.y, x_2730.x, x_2730.y) * vec4<f32>(x_2733.x, x_2733.y, x_2733.x, x_2733.y)) + vec4<f32>(x_2736.x, x_2736.y, x_2736.x, x_2736.z));
            let x_2740 : f32 = u_xlat10.w;
            u_xlat12.y = x_2740;
            let x_2742 : vec4<f32> = u_xlat7;
            let x_2745 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2748 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y) * vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y)) + vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2748.y));
            let x_2752 : vec4<f32> = u_xlat7;
            let x_2755 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2758 : vec4<f32> = u_xlat12;
            u_xlat30 = ((vec2<f32>(x_2752.x, x_2752.y) * vec2<f32>(x_2755.x, x_2755.y)) + vec2<f32>(x_2758.w, x_2758.y));
            let x_2762 : f32 = u_xlat12.y;
            u_xlat9.w = x_2762;
            let x_2765 : vec4<f32> = u_xlat7;
            let x_2768 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat9;
            u_xlat57 = ((vec2<f32>(x_2765.x, x_2765.y) * vec2<f32>(x_2768.x, x_2768.y)) + vec2<f32>(x_2771.x, x_2771.w));
            let x_2774 : vec4<f32> = u_xlat12;
            let x_2775 : vec3<f32> = vec3<f32>(x_2774.x, x_2774.z, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2775.x, x_2776.y, x_2775.y, x_2775.z);
            let x_2778 : vec4<f32> = u_xlat7;
            let x_2781 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2784 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2778.x, x_2778.y, x_2778.x, x_2778.y) * vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y)) + vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2784.y));
            let x_2788 : vec4<f32> = u_xlat7;
            let x_2791 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2794 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2788.x, x_2788.y) * vec2<f32>(x_2791.x, x_2791.y)) + vec2<f32>(x_2794.w, x_2794.y));
            let x_2798 : f32 = u_xlat9.x;
            u_xlat10.x = x_2798;
            let x_2800 : vec4<f32> = u_xlat7;
            let x_2803 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2806 : vec4<f32> = u_xlat10;
            let x_2808 : vec2<f32> = ((vec2<f32>(x_2800.x, x_2800.y) * vec2<f32>(x_2803.x, x_2803.y)) + vec2<f32>(x_2806.x, x_2806.y));
            let x_2809 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
            let x_2812 : vec4<f32> = u_xlat8;
            let x_2814 : vec4<f32> = u_xlat11;
            u_xlat18 = (vec4<f32>(x_2812.x, x_2812.x, x_2812.x, x_2812.x) * x_2814);
            let x_2817 : vec4<f32> = u_xlat8;
            let x_2819 : vec4<f32> = u_xlat11;
            u_xlat19 = (vec4<f32>(x_2817.y, x_2817.y, x_2817.y, x_2817.y) * x_2819);
            let x_2822 : vec4<f32> = u_xlat8;
            let x_2824 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2822.z, x_2822.z, x_2822.z, x_2822.z) * x_2824);
            let x_2826 : vec4<f32> = u_xlat8;
            let x_2828 : vec4<f32> = u_xlat11;
            u_xlat8 = (vec4<f32>(x_2826.w, x_2826.w, x_2826.w, x_2826.w) * x_2828);
            let x_2831 : vec4<f32> = u_xlat13;
            let x_2832 : vec2<f32> = vec2<f32>(x_2831.x, x_2831.y);
            let x_2834 : f32 = u_xlat6.z;
            txVec43 = vec3<f32>(x_2832.x, x_2832.y, x_2834);
            let x_2841 : vec3<f32> = txVec43;
            let x_2843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2841.xy, x_2841.z);
            u_xlat9.x = x_2843;
            let x_2846 : vec4<f32> = u_xlat13;
            let x_2847 : vec2<f32> = vec2<f32>(x_2846.z, x_2846.w);
            let x_2849 : f32 = u_xlat6.z;
            txVec44 = vec3<f32>(x_2847.x, x_2847.y, x_2849);
            let x_2857 : vec3<f32> = txVec44;
            let x_2859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2857.xy, x_2857.z);
            u_xlat72 = x_2859;
            let x_2860 : f32 = u_xlat72;
            let x_2862 : f32 = u_xlat18.y;
            u_xlat72 = (x_2860 * x_2862);
            let x_2865 : f32 = u_xlat18.x;
            let x_2867 : f32 = u_xlat9.x;
            let x_2869 : f32 = u_xlat72;
            u_xlat9.x = ((x_2865 * x_2867) + x_2869);
            let x_2873 : vec2<f32> = u_xlat49;
            let x_2875 : f32 = u_xlat6.z;
            txVec45 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec45;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat49.x = x_2884;
            let x_2887 : f32 = u_xlat18.z;
            let x_2889 : f32 = u_xlat49.x;
            let x_2892 : f32 = u_xlat9.x;
            u_xlat49.x = ((x_2887 * x_2889) + x_2892);
            let x_2896 : vec4<f32> = u_xlat16;
            let x_2897 : vec2<f32> = vec2<f32>(x_2896.x, x_2896.y);
            let x_2899 : f32 = u_xlat6.z;
            txVec46 = vec3<f32>(x_2897.x, x_2897.y, x_2899);
            let x_2907 : vec3<f32> = txVec46;
            let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
            u_xlat70 = x_2909;
            let x_2911 : f32 = u_xlat18.w;
            let x_2912 : f32 = u_xlat70;
            let x_2915 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2911 * x_2912) + x_2915);
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2920 : vec2<f32> = vec2<f32>(x_2919.x, x_2919.y);
            let x_2922 : f32 = u_xlat6.z;
            txVec47 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
            let x_2929 : vec3<f32> = txVec47;
            let x_2931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2929.xy, x_2929.z);
            u_xlat70 = x_2931;
            let x_2933 : f32 = u_xlat19.x;
            let x_2934 : f32 = u_xlat70;
            let x_2937 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2933 * x_2934) + x_2937);
            let x_2941 : vec4<f32> = u_xlat14;
            let x_2942 : vec2<f32> = vec2<f32>(x_2941.z, x_2941.w);
            let x_2944 : f32 = u_xlat6.z;
            txVec48 = vec3<f32>(x_2942.x, x_2942.y, x_2944);
            let x_2951 : vec3<f32> = txVec48;
            let x_2953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2951.xy, x_2951.z);
            u_xlat70 = x_2953;
            let x_2955 : f32 = u_xlat19.y;
            let x_2956 : f32 = u_xlat70;
            let x_2959 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2955 * x_2956) + x_2959);
            let x_2963 : vec4<f32> = u_xlat15;
            let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
            let x_2966 : f32 = u_xlat6.z;
            txVec49 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec49;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat70 = x_2975;
            let x_2977 : f32 = u_xlat19.z;
            let x_2978 : f32 = u_xlat70;
            let x_2981 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2977 * x_2978) + x_2981);
            let x_2985 : vec4<f32> = u_xlat16;
            let x_2986 : vec2<f32> = vec2<f32>(x_2985.z, x_2985.w);
            let x_2988 : f32 = u_xlat6.z;
            txVec50 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
            let x_2995 : vec3<f32> = txVec50;
            let x_2997 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
            u_xlat70 = x_2997;
            let x_2999 : f32 = u_xlat19.w;
            let x_3000 : f32 = u_xlat70;
            let x_3003 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2999 * x_3000) + x_3003);
            let x_3007 : vec4<f32> = u_xlat17;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
            let x_3010 : f32 = u_xlat6.z;
            txVec51 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec51;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat70 = x_3019;
            let x_3021 : f32 = u_xlat20.x;
            let x_3022 : f32 = u_xlat70;
            let x_3025 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3021 * x_3022) + x_3025);
            let x_3029 : vec4<f32> = u_xlat17;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.z, x_3029.w);
            let x_3032 : f32 = u_xlat6.z;
            txVec52 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec52;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat70 = x_3041;
            let x_3043 : f32 = u_xlat20.y;
            let x_3044 : f32 = u_xlat70;
            let x_3047 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3043 * x_3044) + x_3047);
            let x_3051 : vec2<f32> = u_xlat30;
            let x_3053 : f32 = u_xlat6.z;
            txVec53 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec53;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat70 = x_3062;
            let x_3064 : f32 = u_xlat20.z;
            let x_3065 : f32 = u_xlat70;
            let x_3068 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3064 * x_3065) + x_3068);
            let x_3072 : vec2<f32> = u_xlat57;
            let x_3074 : f32 = u_xlat6.z;
            txVec54 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec54;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat70 = x_3083;
            let x_3085 : f32 = u_xlat20.w;
            let x_3086 : f32 = u_xlat70;
            let x_3089 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3085 * x_3086) + x_3089);
            let x_3093 : vec4<f32> = u_xlat12;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
            let x_3096 : f32 = u_xlat6.z;
            txVec55 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec55;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat70 = x_3105;
            let x_3107 : f32 = u_xlat8.x;
            let x_3108 : f32 = u_xlat70;
            let x_3111 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3107 * x_3108) + x_3111);
            let x_3115 : vec4<f32> = u_xlat12;
            let x_3116 : vec2<f32> = vec2<f32>(x_3115.z, x_3115.w);
            let x_3118 : f32 = u_xlat6.z;
            txVec56 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec56;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat70 = x_3127;
            let x_3129 : f32 = u_xlat8.y;
            let x_3130 : f32 = u_xlat70;
            let x_3133 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3129 * x_3130) + x_3133);
            let x_3137 : vec2<f32> = u_xlat52;
            let x_3139 : f32 = u_xlat6.z;
            txVec57 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
            let x_3146 : vec3<f32> = txVec57;
            let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
            u_xlat70 = x_3148;
            let x_3150 : f32 = u_xlat8.z;
            let x_3151 : f32 = u_xlat70;
            let x_3154 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3150 * x_3151) + x_3154);
            let x_3158 : vec4<f32> = u_xlat7;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.x, x_3158.y);
            let x_3161 : f32 = u_xlat6.z;
            txVec58 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3168 : vec3<f32> = txVec58;
            let x_3170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
            u_xlat7.x = x_3170;
            let x_3173 : f32 = u_xlat8.w;
            let x_3175 : f32 = u_xlat7.x;
            let x_3178 : f32 = u_xlat49.x;
            u_xlat69 = ((x_3173 * x_3175) + x_3178);
          }
        }
      } else {
        let x_3182 : vec4<f32> = u_xlat6;
        let x_3183 : vec2<f32> = vec2<f32>(x_3182.x, x_3182.y);
        let x_3185 : f32 = u_xlat6.z;
        txVec59 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
        let x_3192 : vec3<f32> = txVec59;
        let x_3194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
        u_xlat69 = x_3194;
      }
      let x_3195 : i32 = u_xlati67;
      let x_3197 : f32 = x_75.x_AdditionalShadowParams[x_3195].x;
      u_xlat6.x = (1.0f + -(x_3197));
      let x_3201 : f32 = u_xlat69;
      let x_3202 : i32 = u_xlati67;
      let x_3204 : f32 = x_75.x_AdditionalShadowParams[x_3202].x;
      let x_3207 : f32 = u_xlat6.x;
      u_xlat6.x = ((x_3201 * x_3204) + x_3207);
      let x_3211 : f32 = u_xlat6.z;
      u_xlatb27.x = (0.0f >= x_3211);
      let x_3216 : f32 = u_xlat6.z;
      u_xlatb48 = (x_3216 >= 1.0f);
      let x_3218 : bool = u_xlatb48;
      let x_3220 : bool = u_xlatb27.x;
      u_xlatb27.x = (x_3218 | x_3220);
      let x_3224 : bool = u_xlatb27.x;
      if (x_3224) {
        x_3225 = 1.0f;
      } else {
        let x_3230 : f32 = u_xlat6.x;
        x_3225 = x_3230;
      }
      let x_3231 : f32 = x_3225;
      u_xlat6.x = x_3231;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_3236 : f32 = u_xlat6.x;
    u_xlat27.x = (-(x_3236) + 1.0f);
    let x_3241 : f32 = u_xlat2.x;
    let x_3243 : f32 = u_xlat27.x;
    let x_3246 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_3241 * x_3243) + x_3246);
    let x_3249 : f32 = u_xlat68;
    let x_3251 : f32 = u_xlat6.x;
    u_xlat68 = (x_3249 * x_3251);
    let x_3253 : f32 = u_xlat68;
    let x_3255 : i32 = u_xlati67;
    let x_3257 : vec4<f32> = x_1728.x_AdditionalLightsColor[x_3255];
    let x_3259 : vec3<f32> = (vec3<f32>(x_3253, x_3253, x_3253) * vec3<f32>(x_3257.x, x_3257.y, x_3257.z));
    let x_3260 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3260.w);
    let x_3262 : vec3<f32> = u_xlat1;
    let x_3263 : vec4<f32> = u_xlat5;
    u_xlat67 = dot(x_3262, vec3<f32>(x_3263.x, x_3263.y, x_3263.z));
    let x_3266 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3266, 0.0f, 1.0f);
    let x_3268 : f32 = u_xlat67;
    let x_3270 : vec4<f32> = u_xlat6;
    let x_3272 : vec3<f32> = (vec3<f32>(x_3268, x_3268, x_3268) * vec3<f32>(x_3270.x, x_3270.y, x_3270.z));
    let x_3273 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3273.w);
    let x_3275 : vec4<f32> = u_xlat5;
    let x_3277 : vec4<f32> = u_xlat0;
    let x_3280 : vec4<f32> = u_xlat4;
    let x_3282 : vec3<f32> = ((vec3<f32>(x_3275.x, x_3275.y, x_3275.z) * vec3<f32>(x_3277.y, x_3277.z, x_3277.w)) + vec3<f32>(x_3280.x, x_3280.y, x_3280.z));
    let x_3283 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3282.x, x_3282.y, x_3282.z, x_3283.w);

    continuing {
      let x_3285 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3285 + bitcast<u32>(1i));
    }
  }
  let x_3288 : vec4<f32> = u_xlat3;
  let x_3290 : vec4<f32> = u_xlat0;
  let x_3293 : vec3<f32> = u_xlat23;
  u_xlat21 = ((vec3<f32>(x_3288.x, x_3288.y, x_3288.z) * vec3<f32>(x_3290.y, x_3290.z, x_3290.w)) + x_3293);
  let x_3297 : vec4<f32> = u_xlat4;
  let x_3299 : vec3<f32> = u_xlat21;
  let x_3300 : vec3<f32> = (vec3<f32>(x_3297.x, x_3297.y, x_3297.z) + x_3299);
  let x_3301 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3301.w);
  let x_3305 : f32 = x_40.x_Surface;
  u_xlatb21 = (x_3305 == 1.0f);
  let x_3307 : bool = u_xlatb21;
  if (x_3307) {
    let x_3312 : f32 = u_xlat0.x;
    x_3308 = x_3312;
  } else {
    x_3308 = 1.0f;
  }
  let x_3314 : f32 = x_3308;
  SV_Target0.w = x_3314;
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


