struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_48 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.w, x_50.w, x_50.w)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat2;
  gl_Position = x_92;
  let x_98 : vec4<f32> = in_TEXCOORD0;
  let x_102 : vec4<f32> = x_17.x_MainTex_ST;
  let x_106 : vec4<f32> = x_17.x_MainTex_ST;
  let x_108 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = in_TEXCOORD0;
  let x_115 : vec4<f32> = x_17.x_Normal_ST;
  let x_119 : vec4<f32> = x_17.x_Normal_ST;
  let x_121 : vec2<f32> = ((vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_122.x, x_122.y, x_121.x, x_121.y);
  let x_128 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_128;
  let x_136 : vec3<f32> = in_NORMAL0;
  let x_138 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_136, vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_142 : vec3<f32> = in_NORMAL0;
  let x_144 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_142, vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_149 : vec3<f32> = in_NORMAL0;
  let x_151 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_149, vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_155 : vec3<f32> = u_xlat3;
  let x_156 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_160);
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_169 : vec4<f32> = in_TANGENT0;
  let x_172 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat4 = (vec3<f32>(x_169.y, x_169.y, x_169.y) * vec3<f32>(x_172.y, x_172.z, x_172.x));
  let x_176 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_178 : vec4<f32> = in_TANGENT0;
  let x_181 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.x, x_178.x, x_178.x)) + x_181);
  let x_184 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_186 : vec4<f32> = in_TANGENT0;
  let x_189 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_184.y, x_184.z, x_184.x) * vec3<f32>(x_186.z, x_186.z, x_186.z)) + x_189);
  let x_191 : vec3<f32> = u_xlat4;
  let x_192 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_191, x_192);
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_196);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_199.x, x_199.x, x_199.x) * x_201);
  let x_204 : vec3<f32> = u_xlat3;
  let x_205 : vec3<f32> = u_xlat4;
  u_xlat5 = (x_204 * x_205);
  let x_207 : vec3<f32> = u_xlat3;
  let x_209 : vec3<f32> = u_xlat4;
  let x_212 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_207.z, x_207.x, x_207.y) * vec3<f32>(x_209.y, x_209.z, x_209.x)) + -(x_212));
  let x_217 : f32 = in_TANGENT0.w;
  let x_220 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_217 * x_220);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_223.x, x_223.x, x_223.x) * x_225);
  let x_228 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_228;
  let x_231 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_231;
  let x_234 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_234;
  let x_238 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_238;
  let x_242 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_242;
  let x_245 : f32 = u_xlat3.z;
  vs_TEXCOORD2.z = x_245;
  let x_248 : f32 = u_xlat3.x;
  vs_TEXCOORD3.z = x_248;
  let x_251 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_251;
  let x_254 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_254;
  let x_257 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_257;
  let x_260 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_260;
  let x_264 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_264;
  let x_266 : f32 = u_xlat1.y;
  let x_269 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_266 * x_269);
  let x_273 : f32 = x_17.unity_MatrixV[0i].z;
  let x_275 : f32 = u_xlat1.x;
  let x_278 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_273 * x_275) + x_278);
  let x_282 : f32 = x_17.unity_MatrixV[2i].z;
  let x_284 : f32 = u_xlat1.z;
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = x_17.unity_MatrixV[3i].z;
  let x_293 : f32 = u_xlat1.w;
  let x_296 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_291 * x_293) + x_296);
  let x_302 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_302);
  let x_306 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.w));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_317 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.w) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_328 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.w) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_339 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.w) * vec3<f32>(x_339.w, x_339.w, x_339.w)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_348;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_354 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.y = x_354;
  let x_356 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = u_xlat2;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.w));
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : f32 = u_xlat0.y;
  u_xlat0.w = (x_371 * 0.5f);
  let x_374 : vec4<f32> = u_xlat0;
  let x_376 : vec4<f32> = u_xlat0;
  let x_378 : vec2<f32> = (vec2<f32>(x_374.z, x_374.z) + vec2<f32>(x_376.x, x_376.w));
  let x_379 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_383 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_383;
  let x_385 : vec4<f32> = u_xlat2;
  let x_386 : vec2<f32> = vec2<f32>(x_385.z, x_385.w);
  let x_387 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_387.x, x_387.y, x_386.x, x_386.y);
  let x_390 : f32 = u_xlat1.y;
  u_xlat1.w = (x_390 * 0.5f);
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat1;
  let x_397 : vec2<f32> = (vec2<f32>(x_393.z, x_393.z) + vec2<f32>(x_395.x, x_395.w));
  let x_398 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_COLOR0_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD6_1 : f32,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD6, vs_TEXCOORD7);
}

