struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(4) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(16) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : f32 = x_19.x_DisplacementScale;
  let x_25 : f32 = x_19.x_DisplacementScale;
  let x_27 : f32 = x_19.x_DisplacementScale;
  let x_28 : vec3<f32> = vec3<f32>(x_23, x_25, x_27);
  let x_33 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_28.x, x_28.y, x_28.z));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_33.z, x_34.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = in_COLOR0;
  let x_41 : vec3<f32> = (vec3<f32>(x_36.x, x_36.y, x_36.z) * vec3<f32>(x_39.z, x_39.z, x_39.z));
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_49 : f32 = x_19.x_SinTime.y;
  let x_52 : f32 = x_19.x_DisplacementSpeed;
  u_xlat1.y = (x_49 * x_52);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = in_COLOR0;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.y, x_63.y, x_63.y)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_81.x, x_81.y, x_81.z), 0.0f);
  u_xlat0 = x_83;
  let x_89 : i32 = x_19.x_DisplacementIndex;
  u_xlati1 = x_89;
  let x_90 : vec4<f32> = u_xlat0;
  let x_100 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_105 : vec4<u32> = indexable[x_100];
  u_xlat0.x = dot(x_90, bitcast<vec4<f32>>(x_105));
  let x_110 : f32 = u_xlat0.x;
  let x_113 : f32 = x_19.x_Displacement;
  u_xlat0.x = (x_110 * x_113);
  let x_117 : f32 = u_xlat0.x;
  let x_120 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_117 * x_120);
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = in_POSITION0;
  let x_131 : vec3<f32> = ((x_125 * vec3<f32>(x_126.x, x_126.x, x_126.x)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_139);
  let x_142 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_156 + x_159);
  let x_162 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_164 : vec4<f32> = in_POSITION0;
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.w, x_164.w, x_164.w)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_173.y, x_173.y, x_173.y, x_173.y) * x_177);
  let x_180 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_181 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_180 * vec4<f32>(x_181.x, x_181.x, x_181.x, x_181.x)) + x_184);
  let x_187 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_187 * vec4<f32>(x_188.z, x_188.z, x_188.z, x_188.z)) + x_191);
  let x_194 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_195 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_194 * vec4<f32>(x_195.w, x_195.w, x_195.w, x_195.w)) + x_198);
  let x_204 : vec4<f32> = u_xlat1;
  gl_Position = x_204;
  let x_210 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_210;
  let x_215 : vec4<f32> = in_TEXCOORD0;
  let x_219 : vec4<f32> = x_19.x_MainTex_ST;
  let x_223 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_215.x, x_215.y) * vec2<f32>(x_219.x, x_219.y)) + vec2<f32>(x_223.z, x_223.w));
  let x_228 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_228;
  let x_231 : vec3<f32> = in_NORMAL0;
  let x_233 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_231, vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_237 : vec3<f32> = in_NORMAL0;
  let x_239 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_237, vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_243 : vec3<f32> = in_NORMAL0;
  let x_245 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_243, vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_256 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_256);
  let x_259 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.x, x_259.x) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec4<f32> = in_TANGENT0;
  let x_270 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_272 : vec3<f32> = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_270.y, x_270.z, x_270.x));
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_276 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_278 : vec4<f32> = in_TANGENT0;
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec3<f32> = ((vec3<f32>(x_276.y, x_276.z, x_276.x) * vec3<f32>(x_278.x, x_278.x, x_278.x)) + vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_287 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_289 : vec4<f32> = in_TANGENT0;
  let x_292 : vec4<f32> = u_xlat2;
  let x_294 : vec3<f32> = ((vec3<f32>(x_287.y, x_287.z, x_287.x) * vec3<f32>(x_289.z, x_289.z, x_289.z)) + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_304 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_304);
  let x_307 : vec4<f32> = u_xlat0;
  let x_309 : vec4<f32> = u_xlat2;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.x, x_307.x) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_316 : vec4<f32> = u_xlat1;
  let x_318 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat1;
  let x_323 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_321.z, x_321.x, x_321.y) * vec3<f32>(x_323.y, x_323.z, x_323.x)) + -(x_326));
  let x_330 : f32 = in_TANGENT0.w;
  let x_332 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat0.x = (x_330 * x_332);
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_335.x, x_335.x, x_335.x) * x_337);
  let x_340 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_340;
  let x_343 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_343;
  let x_346 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_346;
  let x_350 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_350;
  let x_354 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_354;
  let x_357 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_357;
  let x_360 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_360;
  let x_363 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_363;
  let x_366 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_366;
  let x_369 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_369;
  let x_372 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_372;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

