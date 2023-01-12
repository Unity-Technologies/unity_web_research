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

var<private> vs_TEXCOORD6 : f32;

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

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_100 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_100;
  let x_104 : vec4<f32> = in_TEXCOORD0;
  let x_108 : vec4<f32> = x_17.x_MainTex_ST;
  let x_112 : vec4<f32> = x_17.x_MainTex_ST;
  let x_114 : vec2<f32> = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(x_108.x, x_108.y)) + vec2<f32>(x_112.z, x_112.w));
  let x_115 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
  let x_117 : vec4<f32> = in_TEXCOORD0;
  let x_121 : vec4<f32> = x_17.x_Normal_ST;
  let x_125 : vec4<f32> = x_17.x_Normal_ST;
  let x_127 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.y) * vec2<f32>(x_121.x, x_121.y)) + vec2<f32>(x_125.z, x_125.w));
  let x_128 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_128.x, x_128.y, x_127.x, x_127.y);
  let x_133 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_133;
  let x_138 : vec3<f32> = in_NORMAL0;
  let x_140 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_138, vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_144 : vec3<f32> = in_NORMAL0;
  let x_146 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_144, vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_150 : vec3<f32> = in_NORMAL0;
  let x_152 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_150, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_163);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec3<f32> = (vec3<f32>(x_166.x, x_166.x, x_166.x) * vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_176 : vec4<f32> = in_TANGENT0;
  let x_179 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_176.y, x_176.y, x_176.y) * vec3<f32>(x_179.y, x_179.z, x_179.x));
  let x_183 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_185 : vec4<f32> = in_TANGENT0;
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_183.y, x_183.z, x_183.x) * vec3<f32>(x_185.x, x_185.x, x_185.x)) + x_188);
  let x_191 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_193 : vec4<f32> = in_TANGENT0;
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_191.y, x_191.z, x_191.x) * vec3<f32>(x_193.z, x_193.z, x_193.z)) + x_196);
  let x_198 : vec3<f32> = u_xlat3;
  let x_199 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_198, x_199);
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_203);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_211 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_211.x, x_211.y, x_211.z) * x_213);
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : vec3<f32> = u_xlat3;
  let x_220 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_215.z, x_215.x, x_215.y) * vec3<f32>(x_217.y, x_217.z, x_217.x)) + -(x_220));
  let x_225 : f32 = in_TANGENT0.w;
  let x_228 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_225 * x_228);
  let x_231 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_236 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_236;
  let x_239 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_239;
  let x_242 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_242;
  let x_246 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_246;
  let x_250 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_250;
  let x_253 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_253;
  let x_256 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_256;
  let x_259 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_259;
  let x_262 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_262;
  let x_265 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_265;
  let x_268 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_268;
  let x_272 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_272;
  let x_274 : f32 = u_xlat1.y;
  let x_277 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_274 * x_277);
  let x_281 : f32 = x_17.unity_MatrixV[0i].z;
  let x_283 : f32 = u_xlat1.x;
  let x_286 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_281 * x_283) + x_286);
  let x_290 : f32 = x_17.unity_MatrixV[2i].z;
  let x_292 : f32 = u_xlat1.z;
  let x_295 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_290 * x_292) + x_295);
  let x_299 : f32 = x_17.unity_MatrixV[3i].z;
  let x_301 : f32 = u_xlat1.w;
  let x_304 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_299 * x_301) + x_304);
  let x_310 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_310);
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_319 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_317.x, x_317.y, x_317.w));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_325 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.w) * vec3<f32>(x_325.x, x_325.x, x_325.x)) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.w) * vec3<f32>(x_336.z, x_336.z, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_347 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.w) * vec3<f32>(x_347.w, x_347.w, x_347.w)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat0;
  let x_359 : vec2<f32> = (vec2<f32>(x_355.x, x_355.z) * vec2<f32>(0.5f, 0.5f));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_360.y, x_359.y, x_360.w);
  let x_363 : f32 = u_xlat0.y;
  let x_365 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_363 * x_365);
  let x_369 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_369;
  let x_372 : f32 = u_xlat0.x;
  u_xlat1.w = (x_372 * 0.5f);
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec2<f32> = (vec2<f32>(x_375.z, x_375.z) + vec2<f32>(x_377.x, x_377.w));
  let x_380 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD6_1 : f32,
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0);
}

