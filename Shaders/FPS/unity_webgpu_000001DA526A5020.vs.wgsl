type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(5) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  let x_89 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_101 : vec4<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_20.x_MainTex_ST;
  let x_109 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(x_105.x, x_105.y)) + vec2<f32>(x_109.z, x_109.w));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_117 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_114, vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_125 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_123, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_131 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_129, vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat18;
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = (vec3<f32>(x_144, x_144, x_144) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_153 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_153.x, x_153.y, x_153.z);
  let x_156 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_159 : f32 = u_xlat1.y;
  let x_161 : f32 = u_xlat1.y;
  u_xlat18 = (x_159 * x_161);
  let x_164 : f32 = u_xlat1.x;
  let x_166 : f32 = u_xlat1.x;
  let x_168 : f32 = u_xlat18;
  u_xlat18 = ((x_164 * x_166) + -(x_168));
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_20.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_20.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_20.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_20.unity_SHC;
  let x_199 : f32 = u_xlat18;
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199, x_199, x_199)) + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  u_xlat1.w = 1.0f;
  let x_212 : vec4<f32> = x_20.unity_SHAr;
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_212, x_213);
  let x_218 : vec4<f32> = x_20.unity_SHAg;
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_218, x_219);
  let x_224 : vec4<f32> = x_20.unity_SHAb;
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_224, x_225);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat2;
  let x_239 : vec3<f32> = max(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_242.y, x_242.y, x_242.y, x_242.y)) + x_246);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_249.y, x_249.y, x_249.y, x_249.y) * x_251);
  let x_253 : vec4<f32> = u_xlat3;
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_253 * x_254);
  let x_257 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_257.x, x_257.x, x_257.x, x_257.x)) + x_261);
  let x_263 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_263.z, x_263.z, x_263.z, x_263.z)) + x_267);
  let x_269 : vec4<f32> = u_xlat5;
  let x_270 : vec4<f32> = u_xlat1;
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_269 * vec4<f32>(x_270.x, x_270.x, x_270.x, x_270.x)) + x_273);
  let x_275 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_275 * vec4<f32>(x_276.z, x_276.z, x_276.z, x_276.z)) + x_279);
  let x_281 : vec4<f32> = u_xlat5;
  let x_282 : vec4<f32> = u_xlat5;
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_281 * x_282) + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_286 * x_287) + x_289);
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_291, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_295);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_297 * x_299) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_303);
  let x_305 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_305 * x_306);
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_308, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_311 * x_312);
  let x_314 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_320 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.x, x_326.x)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_337 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat1;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.z, x_337.z, x_337.z)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.w, x_348.w, x_348.w)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec4<f32> = u_xlat2;
  let x_359 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_357.x, x_357.y, x_357.z) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

