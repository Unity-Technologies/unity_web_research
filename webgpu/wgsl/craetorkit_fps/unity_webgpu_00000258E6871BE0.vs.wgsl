struct VGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
}

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(2) var sampler_DisplacementNoise : sampler;

@group(0) @binding(1) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(3) var sampler_DisplacementRamp : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlati12 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb12 : bool;
  var x_271 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_23 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_13, vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_30 : vec3<f32> = in_NORMAL0;
  let x_33 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_30, vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_41 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_38, vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_47 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_47.x, x_47.y, x_47.z), vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_52 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_52);
  let x_54 : f32 = u_xlat12;
  let x_56 : vec4<f32> = u_xlat0;
  let x_58 : vec3<f32> = (vec3<f32>(x_54, x_54, x_54) * vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_64 : vec4<f32> = in_POSITION0;
  let x_69 : f32 = x_18.x_DisplacementScale;
  let x_71 : f32 = x_18.x_DisplacementScale;
  let x_73 : f32 = x_18.x_DisplacementScale;
  let x_74 : vec3<f32> = vec3<f32>(x_69, x_71, x_73);
  let x_79 : vec3<f32> = (vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = in_COLOR0;
  let x_87 : vec3<f32> = (vec3<f32>(x_82.x, x_82.y, x_82.z) * vec3<f32>(x_85.z, x_85.z, x_85.z));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_92 : f32 = x_18.x_SinTime.y;
  let x_95 : f32 = x_18.x_DisplacementSpeed;
  u_xlat2.y = (x_92 * x_95);
  u_xlat2.x = 0.0f;
  u_xlat2.z = 0.0f;
  let x_101 : vec4<f32> = u_xlat2;
  let x_103 : vec4<f32> = in_COLOR0;
  let x_106 : vec4<f32> = u_xlat1;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.y, x_101.z) * vec3<f32>(x_103.y, x_103.y, x_103.y)) + vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_121.x, x_121.y, x_121.z), 0.0f);
  u_xlat1 = x_123;
  let x_129 : i32 = x_18.x_DisplacementIndex;
  u_xlati12 = x_129;
  let x_130 : vec4<f32> = u_xlat1;
  let x_140 : i32 = u_xlati12;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_145 : vec4<u32> = indexable[x_140];
  u_xlat12 = dot(x_130, bitcast<vec4<f32>>(x_145));
  let x_156 : f32 = u_xlat12;
  let x_159 : vec4<f32> = textureSampleLevel(x_DisplacementRamp, sampler_DisplacementRamp, vec2<f32>(x_156, x_156), 0.0f);
  u_xlat12 = x_159.x;
  let x_161 : f32 = u_xlat12;
  let x_164 : f32 = x_18.x_Displacement;
  u_xlat12 = (x_161 * x_164);
  let x_166 : f32 = u_xlat12;
  let x_169 : f32 = in_COLOR0.x;
  u_xlat12 = (x_166 * x_169);
  let x_171 : vec3<f32> = in_NORMAL0;
  let x_172 : f32 = u_xlat12;
  let x_175 : vec4<f32> = in_POSITION0;
  let x_177 : vec3<f32> = ((x_171 * vec3<f32>(x_172, x_172, x_172)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat2 = (vec4<f32>(x_180.y, x_180.y, x_180.y, x_180.y) * x_184);
  let x_187 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_187 * vec4<f32>(x_188.x, x_188.x, x_188.x, x_188.x)) + x_191);
  let x_194 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_195 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_194 * vec4<f32>(x_195.z, x_195.z, x_195.z, x_195.z)) + x_198);
  let x_201 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_202 : vec4<f32> = in_POSITION0;
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_201 * vec4<f32>(x_202.w, x_202.w, x_202.w, x_202.w)) + x_205);
  let x_208 : vec4<f32> = u_xlat2;
  let x_212 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_216 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_218 : vec3<f32> = ((-(vec3<f32>(x_208.x, x_208.y, x_208.z)) * vec3<f32>(x_212.w, x_212.w, x_212.w)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat3;
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_221.x, x_221.y, x_221.z), vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_226);
  let x_228 : f32 = u_xlat12;
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : vec3<f32> = (vec3<f32>(x_228, x_228, x_228) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : f32 = u_xlat12;
  let x_242 : f32 = u_xlat12;
  u_xlat12 = ((-(x_240) * x_242) + 1.0f);
  let x_246 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_246);
  let x_248 : f32 = u_xlat12;
  let x_250 : f32 = x_18.unity_LightShadowBias.z;
  u_xlat12 = (x_248 * x_250);
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : f32 = u_xlat12;
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = ((-(vec3<f32>(x_252.x, x_252.y, x_252.z)) * vec3<f32>(x_255, x_255, x_255)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_267 : f32 = x_18.unity_LightShadowBias.z;
  u_xlatb12 = !((x_267 == 0.0f));
  let x_269 : bool = u_xlatb12;
  if (x_269) {
    let x_274 : vec4<f32> = u_xlat0;
    x_271 = vec3<f32>(x_274.x, x_274.y, x_274.z);
  } else {
    let x_277 : vec4<f32> = u_xlat2;
    x_271 = vec3<f32>(x_277.x, x_277.y, x_277.z);
  }
  let x_279 : vec3<f32> = x_271;
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_282.y, x_282.y, x_282.y, x_282.y) * x_286);
  let x_289 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_290 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_289 * vec4<f32>(x_290.x, x_290.x, x_290.x, x_290.x)) + x_293);
  let x_296 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_297 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_296 * vec4<f32>(x_297.z, x_297.z, x_297.z, x_297.z)) + x_300);
  let x_303 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_304 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_303 * vec4<f32>(x_304.w, x_304.w, x_304.w, x_304.w)) + x_307);
  let x_312 : f32 = u_xlat0.w;
  let x_314 : f32 = u_xlat0.z;
  u_xlat13 = min(x_312, x_314);
  let x_317 : f32 = u_xlat0.z;
  let x_319 : f32 = u_xlat13;
  u_xlat13 = (-(x_317) + x_319);
  let x_326 : f32 = x_18.unity_LightShadowBias.y;
  let x_327 : f32 = u_xlat13;
  let x_330 : f32 = u_xlat0.z;
  gl_Position.z = ((x_326 * x_327) + x_330);
  let x_334 : vec4<f32> = u_xlat0;
  let x_335 : vec3<f32> = vec3<f32>(x_334.x, x_334.y, x_334.w);
  let x_338 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_335.x, x_335.y, x_338.z, x_335.z);
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_345 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_351 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = u_xlat0;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.x, x_351.x, x_351.x)) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_362 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.z, x_362.z, x_362.z)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_373 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_375 : vec4<f32> = in_POSITION0;
  let x_378 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.w, x_375.w, x_375.w)) + vec3<f32>(x_378.x, x_378.y, x_378.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position);
}

