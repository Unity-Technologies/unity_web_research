diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

struct TerrainGrass {
  /* @offset(0) */
  x_WavingTint : vec4<f32>,
  /* @offset(16) */
  x_WaveAndDistance : vec4<f32>,
  /* @offset(32) */
  x_CameraPosition : vec4<f32>,
  /* @offset(48) */
  x_CameraRight : vec3<f32>,
  /* @offset(64) */
  x_CameraUp : vec3<f32>,
}

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_26 : UnityPerDraw;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_72 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat3 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_325 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  let x_19 : vec3<f32> = in_NORMAL0;
  let x_32 : vec4<f32> = x_26.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_19, vec3<f32>(x_32.x, x_32.y, x_32.z));
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec4<f32> = x_26.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_38, vec3<f32>(x_40.x, x_40.y, x_40.z));
  let x_45 : vec3<f32> = in_NORMAL0;
  let x_48 : vec4<f32> = x_26.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_45, vec3<f32>(x_48.x, x_48.y, x_48.z));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat9;
  u_xlat9 = max(x_58, 1.17549435e-38f);
  let x_61 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_61);
  let x_65 : f32 = u_xlat9;
  let x_67 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_65, x_65, x_65) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_74 : vec4<f32> = x_72.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_74.y, x_74.y, x_74.y, x_74.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_81 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_81 * vec4<f32>(x_84.z, x_84.z, x_84.z, x_84.z));
  let x_89 : vec4<f32> = x_72.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_89.y, x_89.y, x_89.y, x_89.y) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f));
  let x_96 : vec4<f32> = in_POSITION0;
  let x_98 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_96.x, x_96.x, x_96.x, x_96.x) * x_98) + x_100);
  let x_103 : vec4<f32> = x_72.x_WaveAndDistance;
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_103.x, x_103.x, x_103.x, x_103.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_111);
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_113);
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_115 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_122 * x_123);
  let x_126 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_126 * x_127);
  let x_129 : vec4<f32> = u_xlat2;
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_129 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_133);
  let x_135 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_135 * x_136);
  let x_138 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_138 * x_139);
  let x_141 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_141 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_145);
  let x_147 : vec4<f32> = u_xlat1;
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_147 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_151);
  let x_153 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_153 * x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_156 * x_157);
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_159, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_167 : f32 = u_xlat1.x;
  u_xlat1.x = (x_167 * 0.69999998807907104492f);
  let x_173 : vec4<f32> = x_72.x_WavingTint;
  u_xlat4 = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec3<f32> = u_xlat4;
  let x_184 : vec3<f32> = ((vec3<f32>(x_178.x, x_178.x, x_178.x) * x_180) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = in_COLOR0;
  let x_201 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_207 : f32 = in_COLOR0.w;
  let x_210 : f32 = x_72.x_WaveAndDistance.z;
  u_xlat1.x = (x_207 * x_210);
  let x_213 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_213 * vec4<f32>(x_214.x, x_214.x, x_214.x, x_214.x));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_217, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(x_224, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_230 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = x_72.x_WaveAndDistance;
  let x_237 : vec4<f32> = in_POSITION0;
  let x_239 : vec2<f32> = ((-(vec2<f32>(x_230.x, x_230.z)) * vec2<f32>(x_234.z, x_234.z)) + vec2<f32>(x_237.x, x_237.z));
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_239.x, x_240.y, x_239.y, x_240.w);
  let x_243 : f32 = in_POSITION0.y;
  u_xlat0.y = x_243;
  let x_245 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = x_72.x_CameraPosition;
  let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + -(vec3<f32>(x_248.x, x_248.y, x_248.z)));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat3 = dot(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : f32 = u_xlat3;
  let x_263 : f32 = x_72.x_WaveAndDistance.w;
  u_xlat3 = (-(x_260) + x_263);
  let x_266 : vec4<f32> = x_72.x_CameraPosition;
  let x_268 : f32 = u_xlat3;
  vs_TEXCOORD2.w = dot(vec2<f32>(x_266.w, x_266.w), vec2<f32>(x_268, x_268));
  let x_274 : f32 = vs_TEXCOORD2.w;
  vs_TEXCOORD2.w = clamp(x_274, 0.0f, 1.0f);
  let x_279 : vec4<f32> = in_POSITION0;
  let x_282 : vec4<f32> = x_26.unity_ObjectToWorld[1i];
  let x_284 : vec3<f32> = (vec3<f32>(x_279.y, x_279.y, x_279.y) * vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec4<f32> = x_26.unity_ObjectToWorld[0i];
  let x_290 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = u_xlat1;
  let x_295 : vec3<f32> = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.x, x_290.x, x_290.x)) + vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_295.z);
  let x_299 : vec4<f32> = x_26.unity_ObjectToWorld[2i];
  let x_301 : vec4<f32> = u_xlat0;
  let x_304 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + vec3<f32>(x_304.x, x_304.y, x_304.w));
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = x_26.unity_ObjectToWorld[3i];
  let x_315 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_320 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = x_325.x_WorldSpaceCameraPos;
  vs_TEXCOORD3 = (-(vec3<f32>(x_320.x, x_320.y, x_320.z)) + x_328);
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = x_325.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_330.y, x_330.y, x_330.y, x_330.y) * x_333);
  let x_336 : vec4<f32> = x_325.unity_MatrixVP[0i];
  let x_337 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_336 * vec4<f32>(x_337.x, x_337.x, x_337.x, x_337.x)) + x_340);
  let x_343 : vec4<f32> = x_325.unity_MatrixVP[2i];
  let x_344 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_343 * vec4<f32>(x_344.z, x_344.z, x_344.z, x_344.z)) + x_347);
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = x_325.unity_MatrixVP[3i];
  gl_Position = (x_353 + x_355);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position);
}


