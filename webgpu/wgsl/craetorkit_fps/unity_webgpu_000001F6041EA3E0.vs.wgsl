type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_102 : vec4<f32> = in_TEXCOORD0;
  let x_106 : vec4<f32> = x_20.x_MainTex_ST;
  let x_110 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(x_106.x, x_106.y)) + vec2<f32>(x_110.z, x_110.w));
  let x_115 : vec3<f32> = in_NORMAL0;
  let x_118 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_115, vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_124, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec3<f32> = in_NORMAL0;
  let x_132 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_130, vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec4<f32> = u_xlat2;
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_143);
  let x_145 : f32 = u_xlat18;
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec3<f32> = (vec3<f32>(x_145, x_145, x_145) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_154 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = vec3<f32>(x_154.x, x_154.y, x_154.z);
  let x_157 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_157.x, x_157.y, x_157.z);
  let x_160 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_160.x, x_160.x, x_160.x, x_160.x)) + x_164);
  let x_167 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_167.y, x_167.y, x_167.y, x_167.y)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_173.z, x_173.z, x_173.z, x_173.z)) + x_177);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_180.y, x_180.y, x_180.y, x_180.y) * x_182);
  let x_184 : vec4<f32> = u_xlat4;
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_184 * x_185);
  let x_187 : vec4<f32> = u_xlat3;
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_187 * x_188) + x_190);
  let x_192 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_192 * vec4<f32>(x_193.x, x_193.x, x_193.x, x_193.x)) + x_196);
  let x_198 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_198 * vec4<f32>(x_199.z, x_199.z, x_199.z, x_199.z)) + x_202);
  let x_204 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_204 * x_205) + x_207);
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_209, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_213);
  let x_215 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_215 * x_218) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_223);
  let x_225 : vec4<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_225 * x_226);
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_228, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_232 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_232 * x_233);
  let x_235 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_241 : vec3<f32> = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_247 : vec4<f32> = u_xlat0;
  let x_250 : vec4<f32> = u_xlat3;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_269 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.w, x_269.w, x_269.w)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : f32 = u_xlat2.y;
  let x_280 : f32 = u_xlat2.y;
  u_xlat18 = (x_278 * x_280);
  let x_283 : f32 = u_xlat2.x;
  let x_285 : f32 = u_xlat2.x;
  let x_287 : f32 = u_xlat18;
  u_xlat18 = ((x_283 * x_285) + -(x_287));
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_297 : vec4<f32> = x_20.unity_SHBr;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_20.unity_SHBg;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_20.unity_SHBb;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_309, x_310);
  let x_315 : vec4<f32> = x_20.unity_SHC;
  let x_317 : f32 = u_xlat18;
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317, x_317, x_317)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_332 : f32 = u_xlat1.y;
  let x_335 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_332 * x_335);
  let x_339 : f32 = u_xlat0.x;
  u_xlat0.w = (x_339 * 0.5f);
  let x_344 : vec4<f32> = u_xlat1;
  let x_347 : vec2<f32> = (vec2<f32>(x_344.x, x_344.w) * vec2<f32>(0.5f, 0.5f));
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_348.y, x_347.y, x_348.w);
  let x_351 : vec4<f32> = u_xlat1;
  let x_352 : vec2<f32> = vec2<f32>(x_351.z, x_351.w);
  let x_353 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_353.x, x_353.y, x_352.x, x_352.y);
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec2<f32> = (vec2<f32>(x_355.z, x_355.z) + vec2<f32>(x_357.x, x_357.w));
  let x_360 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

