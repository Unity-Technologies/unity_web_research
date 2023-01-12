struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
  @size(12)
  padding_1 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_149 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_43 + x_45);
  let x_48 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_49 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.w, x_49.w, x_49.w, x_49.w)) + x_52);
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_62 * vec4<f32>(x_63.x, x_63.x, x_63.x, x_63.x)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_69 * vec4<f32>(x_70.z, x_70.z, x_70.z, x_70.z)) + x_73);
  let x_76 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_88 : vec4<f32> = u_xlat1;
  gl_Position = x_88;
  let x_94 : f32 = u_xlat1.z;
  let x_97 : f32 = x_18.x_ProjectionParams.y;
  u_xlat1.x = (x_94 / x_97);
  let x_102 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_102) + 1.0f);
  let x_108 : f32 = u_xlat1.x;
  let x_110 : f32 = x_18.x_ProjectionParams.z;
  u_xlat1.x = (x_108 * x_110);
  let x_114 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_114, 0.0f);
  let x_119 : f32 = u_xlat1.x;
  let x_122 : f32 = x_18.unity_FogParams.x;
  u_xlat1.x = (x_119 * x_122);
  let x_126 : f32 = u_xlat1.x;
  let x_128 : f32 = u_xlat1.x;
  u_xlat1.x = (x_126 * -(x_128));
  let x_134 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = exp2(x_134);
  let x_144 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_144 == 0.0f);
  let x_146 : bool = u_xlatb1;
  if (x_146) {
    let x_154 : vec2<f32> = in_TEXCOORD0;
    x_149 = x_154;
  } else {
    let x_157 : vec2<f32> = in_TEXCOORD1;
    x_149 = x_157;
  }
  let x_158 : vec2<f32> = x_149;
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
  let x_162 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_170 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_172 : vec2<f32> = ((vec2<f32>(x_162.x, x_162.y) * vec2<f32>(x_166.x, x_166.y)) + vec2<f32>(x_170.z, x_170.w));
  let x_173 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_173.x, x_173.y, x_172.x, x_172.y);
  let x_175 : vec2<f32> = in_TEXCOORD0;
  let x_178 : vec4<f32> = x_18.x_MainTex_ST;
  let x_182 : vec4<f32> = x_18.x_MainTex_ST;
  let x_184 : vec2<f32> = ((x_175 * vec2<f32>(x_178.x, x_178.y)) + vec2<f32>(x_182.z, x_182.w));
  let x_185 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_184.x, x_184.y, x_185.z, x_185.w);
  let x_187 : vec4<f32> = in_POSITION0;
  let x_190 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_192 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_198 : vec4<f32> = in_POSITION0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_209 : vec4<f32> = in_POSITION0;
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.z, x_209.z, x_209.z)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_220 : vec4<f32> = in_POSITION0;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.w, x_220.w, x_220.w)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_232 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_234 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + -(x_232));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat16;
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec4<f32> = in_TANGENT0;
  let x_256 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_258 : vec3<f32> = (vec3<f32>(x_253.y, x_253.y, x_253.y) * vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_264 : vec4<f32> = in_TANGENT0;
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_275 : vec4<f32> = in_TANGENT0;
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.z, x_275.z, x_275.z)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat2;
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_288);
  let x_290 : f32 = u_xlat16;
  let x_292 : vec4<f32> = u_xlat2;
  let x_294 : vec3<f32> = (vec3<f32>(x_290, x_290, x_290) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : vec4<f32> = u_xlat2;
  let x_299 : vec3<f32> = vec3<f32>(x_298.x, x_298.y, x_298.z);
  let x_300 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_304 : vec4<f32> = u_xlat1;
  let x_308 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_312 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat3 = ((-(vec3<f32>(x_304.x, x_304.y, x_304.z)) * vec3<f32>(x_308.w, x_308.w, x_308.w)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_317 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_317.x, x_317.y, x_317.z);
  let x_320 : f32 = u_xlat3.x;
  vs_TEXCOORD2.w = x_320;
  let x_324 : vec3<f32> = in_NORMAL0;
  let x_327 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_324, vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec3<f32> = in_NORMAL0;
  let x_333 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_331, vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec3<f32> = in_NORMAL0;
  let x_339 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_337, vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_348);
  let x_350 : f32 = u_xlat16;
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = (vec3<f32>(x_350, x_350, x_350) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_358.y, x_358.z, x_358.x) * vec3<f32>(x_360.z, x_360.x, x_360.y));
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = u_xlat4;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.y, x_363.z, x_363.x) * vec3<f32>(x_365.z, x_365.x, x_365.y)) + -(x_368));
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : vec4<f32> = u_xlat1;
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_376 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_380 : f32 = in_TANGENT0.w;
  let x_383 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_380 * x_383);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec4<f32> = u_xlat2;
  let x_391 : vec3<f32> = (vec3<f32>(x_387.x, x_387.x, x_387.x) * vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat3.y;
  vs_TEXCOORD3.w = x_395;
  let x_398 : f32 = u_xlat3.z;
  vs_TEXCOORD4.w = x_398;
  let x_400 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_406 : vec2<f32> = (vec2<f32>(x_400.y, x_400.y) * vec2<f32>(x_404.x, x_404.y));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_410 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_412.x, x_412.x)) + vec2<f32>(x_415.x, x_415.y));
  let x_418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
  let x_421 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_423 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_423.z, x_423.z)) + vec2<f32>(x_426.x, x_426.y));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_434 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_436 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_436.w, x_436.w)) + vec2<f32>(x_439.x, x_439.y));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3);
}

