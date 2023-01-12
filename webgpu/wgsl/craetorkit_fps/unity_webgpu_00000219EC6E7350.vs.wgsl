type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_97 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_32 : vec4<f32> = in_POSITION0;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_40 : vec4<f32> = in_POSITION0;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_45 + x_48);
  let x_51 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_51.y, x_51.y, x_51.y, x_51.y) * x_55);
  let x_58 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_65 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_66.z, x_66.z, x_66.z, x_66.z)) + x_69);
  let x_77 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_78 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  gl_Position = ((x_77 * vec4<f32>(x_78.w, x_78.w, x_78.w, x_78.w)) + x_81);
  let x_91 : f32 = x_21.x_UVSec;
  u_xlatb0 = (x_91 == 0.0f);
  let x_94 : bool = u_xlatb0;
  if (x_94) {
    let x_102 : vec2<f32> = in_TEXCOORD0;
    x_97 = x_102;
  } else {
    let x_105 : vec2<f32> = in_TEXCOORD1;
    x_97 = x_105;
  }
  let x_106 : vec2<f32> = x_97;
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_118 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_120 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_121.x, x_121.y, x_120.x, x_120.y);
  let x_123 : vec2<f32> = in_TEXCOORD0;
  let x_126 : vec4<f32> = x_21.x_MainTex_ST;
  let x_130 : vec4<f32> = x_21.x_MainTex_ST;
  let x_132 : vec2<f32> = ((x_123 * vec2<f32>(x_126.x, x_126.y)) + vec2<f32>(x_130.z, x_130.w));
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_132.x, x_132.y, x_133.z, x_133.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_139 : vec4<f32> = in_POSITION0;
  let x_142 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_150 : vec4<f32> = in_POSITION0;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_161 : vec4<f32> = in_POSITION0;
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_172 : vec4<f32> = in_POSITION0;
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.w, x_172.w, x_172.w)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_186 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(x_184));
  let x_187 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  u_xlat0.w = 0.0f;
  let x_192 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_192.w, x_192.w, x_192.w, x_192.x);
  let x_195 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_195.w, x_195.w, x_195.w, x_195.y);
  let x_200 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_200;
  let x_204 : vec3<f32> = in_NORMAL0;
  let x_207 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_204, vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_212 : vec3<f32> = in_NORMAL0;
  let x_214 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_212, vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_218 : vec3<f32> = in_NORMAL0;
  let x_220 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_218, vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_230);
  let x_232 : f32 = u_xlat15;
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = (vec3<f32>(x_232, x_232, x_232) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = vec3<f32>(x_239.x, x_239.y, x_239.z);
  let x_241 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_244.x, x_244.x, x_244.x, x_244.x)) + x_248);
  let x_251 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_251.y, x_251.y, x_251.y, x_251.y)) + x_255);
  let x_257 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_257.z, x_257.z, x_257.z, x_257.z)) + x_261);
  let x_264 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_264.y, x_264.y, x_264.y, x_264.y) * x_266);
  let x_268 : vec4<f32> = u_xlat3;
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_268 * x_269);
  let x_271 : vec4<f32> = u_xlat2;
  let x_272 : vec4<f32> = u_xlat2;
  let x_274 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_271 * x_272) + x_274);
  let x_276 : vec4<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_276 * vec4<f32>(x_277.x, x_277.x, x_277.x, x_277.x)) + x_280);
  let x_282 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = u_xlat1;
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_282 * vec4<f32>(x_283.z, x_283.z, x_283.z, x_283.z)) + x_286);
  let x_288 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_288 * x_289) + x_291);
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_293, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_297);
  let x_299 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_299 * x_302) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_307);
  let x_309 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_309 * x_310);
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_312, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_315 * x_316);
  let x_318 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_324 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = u_xlat2;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.x, x_330.x, x_330.x)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_339 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_341 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.z, x_341.z, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_350 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_352 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.w, x_352.w, x_352.w)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : f32 = u_xlat1.y;
  let x_363 : f32 = u_xlat1.y;
  u_xlat15 = (x_361 * x_363);
  let x_366 : f32 = u_xlat1.x;
  let x_368 : f32 = u_xlat1.x;
  let x_370 : f32 = u_xlat15;
  u_xlat15 = ((x_366 * x_368) + -(x_370));
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_373.y, x_373.z, x_373.z, x_373.x) * vec4<f32>(x_375.x, x_375.y, x_375.z, x_375.z));
  let x_380 : vec4<f32> = x_21.unity_SHBr;
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_380, x_381);
  let x_386 : vec4<f32> = x_21.unity_SHBg;
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_386, x_387);
  let x_392 : vec4<f32> = x_21.unity_SHBb;
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_392, x_393);
  let x_398 : vec4<f32> = x_21.unity_SHC;
  let x_400 : f32 = u_xlat15;
  let x_403 : vec4<f32> = u_xlat2;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400, x_400, x_400)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

