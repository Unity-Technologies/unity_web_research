struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(17) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_95 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_52);
  let x_55 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_62 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z)) + x_66);
  let x_75 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  gl_Position = ((x_75 * vec4<f32>(x_76.w, x_76.w, x_76.w, x_76.w)) + x_79);
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb0;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_116 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_118 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_119.x, x_119.y, x_118.x, x_118.y);
  let x_121 : vec2<f32> = in_TEXCOORD0;
  let x_124 : vec4<f32> = x_18.x_MainTex_ST;
  let x_128 : vec4<f32> = x_18.x_MainTex_ST;
  let x_130 : vec2<f32> = ((x_121 * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(x_128.z, x_128.w));
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_133 : vec4<f32> = in_POSITION0;
  let x_136 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_155 : vec4<f32> = in_POSITION0;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.w, x_166.w, x_166.w)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_180 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_178));
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_190);
  let x_193 : f32 = u_xlat12;
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = (vec3<f32>(x_193, x_193, x_193) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_206 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_206;
  let x_209 : vec4<f32> = in_TANGENT0;
  let x_212 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_214 : vec3<f32> = (vec3<f32>(x_209.y, x_209.y, x_209.y) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_220 : vec4<f32> = in_TANGENT0;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.x, x_220.x, x_220.x)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_231 : vec4<f32> = in_TANGENT0;
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.z, x_231.z, x_231.z)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_246 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_246);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.x, x_249.x) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = vec3<f32>(x_256.x, x_256.y, x_256.z);
  let x_258 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_262;
  let x_267 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_267;
  let x_271 : vec3<f32> = in_NORMAL0;
  let x_274 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_271, vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_278 : vec3<f32> = in_NORMAL0;
  let x_280 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_278, vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec3<f32> = in_NORMAL0;
  let x_286 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_284, vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : vec4<f32> = u_xlat0;
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_295);
  let x_297 : f32 = u_xlat12;
  let x_299 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.y, x_305.z, x_305.x) * vec3<f32>(x_307.z, x_307.x, x_307.y));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_326 : f32 = in_TANGENT0.w;
  let x_329 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat13 = (x_326 * x_329);
  let x_331 : f32 = u_xlat13;
  let x_333 : vec4<f32> = u_xlat1;
  let x_335 : vec3<f32> = (vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat0;
  let x_339 : vec3<f32> = vec3<f32>(x_338.x, x_338.y, x_338.z);
  let x_340 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = u_xlat0.y;
  let x_345 : f32 = u_xlat0.y;
  u_xlat1.x = (x_343 * x_345);
  let x_349 : f32 = u_xlat0.x;
  let x_351 : f32 = u_xlat0.x;
  let x_354 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_349 * x_351) + -(x_354));
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_358.y, x_358.z, x_358.z, x_358.x) * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.z));
  let x_367 : vec4<f32> = x_18.unity_SHBr;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_367, x_368);
  let x_373 : vec4<f32> = x_18.unity_SHBg;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_18.unity_SHBb;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_379, x_380);
  let x_385 : vec4<f32> = x_18.unity_SHC;
  let x_387 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = u_xlat3;
  let x_391 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.x, x_387.x, x_387.x)) + x_390);
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  u_xlat0.w = 1.0f;
  let x_397 : vec4<f32> = x_18.unity_SHAr;
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_397, x_398);
  let x_402 : vec4<f32> = x_18.unity_SHAg;
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_402, x_403);
  let x_407 : vec4<f32> = x_18.unity_SHAb;
  let x_408 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_407, x_408);
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_422 : vec3<f32> = max(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_423 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

