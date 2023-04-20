diagnostic(off, derivative_uniformity);

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

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_23 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_175 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_255 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_28 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_35 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_35 * vec4<f32>(x_38.z, x_38.z, x_38.z, x_38.z));
  let x_43 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f));
  let x_50 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat1;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_50.x, x_50.x, x_50.x, x_50.x) * x_52) + x_54);
  let x_57 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_57.x, x_57.x, x_57.x, x_57.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_65);
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_67);
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_69 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_76 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_76 * x_77);
  let x_80 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_80 * x_81);
  let x_83 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_83 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_87);
  let x_89 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_89 * x_90);
  let x_92 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_92 * x_93);
  let x_95 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_95 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_99);
  let x_101 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_101 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_105);
  let x_107 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_107 * x_108);
  let x_110 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_110 * x_111);
  let x_118 : f32 = in_COLOR0.w;
  let x_122 : f32 = x_23.x_WaveAndDistance.z;
  u_xlat1.x = (x_118 * x_122);
  let x_127 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_127 * vec4<f32>(x_128.x, x_128.x, x_128.x, x_128.x));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_131, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_139 : f32 = u_xlat0.x;
  u_xlat0.x = (x_139 * 0.69999998807907104492f);
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_143, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_150, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_156 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_163 : vec4<f32> = in_POSITION0;
  let x_165 : vec2<f32> = ((-(vec2<f32>(x_156.x, x_156.z)) * vec2<f32>(x_160.z, x_160.z)) + vec2<f32>(x_163.x, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_166.y, x_165.y, x_166.w);
  let x_169 : vec4<f32> = in_POSITION0;
  let x_178 : vec4<f32> = x_175.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_169.y, x_169.y, x_169.y) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_182 : vec4<f32> = x_175.unity_ObjectToWorld[0i];
  let x_184 : vec4<f32> = u_xlat1;
  let x_187 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.x, x_184.x)) + x_187);
  let x_191 : vec4<f32> = x_175.unity_ObjectToWorld[2i];
  let x_193 : vec4<f32> = u_xlat1;
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.z, x_193.z, x_193.z)) + x_196);
  let x_198 : vec3<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_175.unity_ObjectToWorld[3i];
  u_xlat3 = (x_198 + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_206 : vec3<f32> = u_xlat3;
  let x_207 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_214 : vec3<f32> = in_NORMAL0;
  let x_216 : vec4<f32> = x_175.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_214, vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_222 : vec4<f32> = x_175.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_220, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_227 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_175.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_227, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : f32 = u_xlat10;
  u_xlat10 = max(x_239, 1.17549435e-38f);
  let x_242 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_242);
  let x_246 : f32 = u_xlat10;
  let x_248 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_246, x_246, x_246) * vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec3<f32> = u_xlat3;
  let x_258 : vec3<f32> = x_255.x_WorldSpaceCameraPos;
  let x_259 : vec3<f32> = (-(x_251) + x_258);
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : f32 = u_xlat10;
  u_xlat10 = max(x_267, 0.00006103515625f);
  let x_270 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_270);
  let x_273 : f32 = u_xlat10;
  let x_275 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_281 : f32 = in_POSITION0.y;
  u_xlat1.y = x_281;
  let x_283 : vec4<f32> = u_xlat1;
  let x_286 : vec4<f32> = x_23.x_CameraPosition;
  let x_289 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat1;
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_299 : f32 = u_xlat1.x;
  let x_302 : f32 = x_23.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_299) + x_302);
  let x_306 : f32 = u_xlat1.x;
  let x_308 : f32 = u_xlat1.x;
  u_xlat1.x = (x_306 + x_308);
  let x_313 : f32 = u_xlat1.x;
  let x_315 : f32 = x_23.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_313 * x_315);
  let x_319 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_319, 0.0f, 1.0f);
  let x_324 : vec4<f32> = x_23.x_WavingTint;
  let x_328 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = u_xlat1;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.x, x_331.x) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = in_COLOR0;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec3<f32> = u_xlat3;
  let x_358 : vec4<f32> = x_255.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_355.y, x_355.y, x_355.y, x_355.y) * x_358);
  let x_361 : vec4<f32> = x_255.unity_MatrixVP[0i];
  let x_362 : vec3<f32> = u_xlat3;
  let x_365 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_361 * vec4<f32>(x_362.x, x_362.x, x_362.x, x_362.x)) + x_365);
  let x_368 : vec4<f32> = x_255.unity_MatrixVP[2i];
  let x_369 : vec3<f32> = u_xlat3;
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_368 * vec4<f32>(x_369.z, x_369.z, x_369.z, x_369.z)) + x_372);
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = x_255.unity_MatrixVP[3i];
  gl_Position = (x_378 + x_380);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD7_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}


