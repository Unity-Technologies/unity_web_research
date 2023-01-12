struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

type Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  value : Arr,
}

type RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  unity_ParticleInstanceData_buf : RTArr,
}

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

@group(0) @binding(0) var<storage, read> x_31 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_51 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb18 : bool;
  var x_116 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var x_193 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_32 : i32 = u_xlati0;
  let x_36 : u32 = x_31.unity_ParticleInstanceData_buf[x_32].value[13i];
  u_xlat6.x = bitcast<f32>(x_36);
  let x_43 : f32 = u_xlat6.x;
  u_xlat12 = floor(x_43);
  let x_46 : f32 = u_xlat12;
  let x_56 : f32 = x_51.unity_ParticleUVShiftData.y;
  u_xlat18 = (x_46 / x_56);
  let x_58 : f32 = u_xlat18;
  u_xlat18 = floor(x_58);
  let x_60 : f32 = u_xlat18;
  let x_63 : f32 = x_51.unity_ParticleUVShiftData.y;
  let x_65 : f32 = u_xlat12;
  u_xlat12 = ((-(x_60) * x_63) + x_65);
  let x_67 : f32 = u_xlat12;
  u_xlat12 = floor(x_67);
  let x_71 : f32 = u_xlat12;
  let x_74 : f32 = x_51.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_71 * x_74);
  let x_79 : f32 = x_51.unity_ParticleUVShiftData.w;
  u_xlat12 = (-(x_79) + 1.0f);
  let x_83 : f32 = u_xlat18;
  let x_86 : f32 = x_51.unity_ParticleUVShiftData.w;
  let x_88 : f32 = u_xlat12;
  u_xlat1.y = ((-(x_83) * x_86) + x_88);
  let x_94 : vec2<f32> = in_TEXCOORD0;
  let x_97 : vec4<f32> = x_51.unity_ParticleUVShiftData;
  let x_100 : vec4<f32> = u_xlat1;
  let x_102 : vec2<f32> = ((x_94 * vec2<f32>(x_97.z, x_97.w)) + vec2<f32>(x_100.x, x_100.y));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_109 : f32 = x_51.unity_ParticleUVShiftData.x;
  u_xlatb18 = !((x_109 == 0.0f));
  let x_114 : bool = u_xlatb18;
  if (x_114) {
    let x_119 : vec4<f32> = u_xlat1;
    x_116 = vec2<f32>(x_119.x, x_119.y);
  } else {
    let x_122 : vec2<f32> = in_TEXCOORD0;
    x_116 = x_122;
  }
  let x_123 : vec2<f32> = x_116;
  vs_TEXCOORD0 = x_123;
  let x_125 : f32 = u_xlat6.x;
  u_xlat1.x = (x_125 + 1.0f);
  let x_130 : f32 = u_xlat6.x;
  u_xlat2.z = fract(x_130);
  let x_134 : f32 = u_xlat1.x;
  u_xlat6.x = floor(x_134);
  let x_138 : f32 = u_xlat6.x;
  let x_140 : f32 = x_51.unity_ParticleUVShiftData.y;
  u_xlat1.x = (x_138 / x_140);
  let x_144 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_144);
  let x_148 : f32 = u_xlat1.x;
  let x_151 : f32 = x_51.unity_ParticleUVShiftData.y;
  let x_154 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_148) * x_151) + x_154);
  let x_158 : f32 = u_xlat1.x;
  let x_161 : f32 = x_51.unity_ParticleUVShiftData.w;
  let x_163 : f32 = u_xlat12;
  u_xlat1.y = ((-(x_158) * x_161) + x_163);
  let x_167 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_167);
  let x_171 : f32 = u_xlat6.x;
  let x_173 : f32 = x_51.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_171 * x_173);
  let x_176 : vec2<f32> = in_TEXCOORD0;
  let x_178 : vec4<f32> = x_51.unity_ParticleUVShiftData;
  let x_181 : vec4<f32> = u_xlat1;
  let x_183 : vec2<f32> = ((x_176 * vec2<f32>(x_178.z, x_178.w)) + vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
  let x_186 : vec2<f32> = in_TEXCOORD0;
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
  u_xlat1.z = 0.0f;
  let x_192 : bool = u_xlatb18;
  if (x_192) {
    let x_196 : vec4<f32> = u_xlat2;
    x_193 = vec3<f32>(x_196.x, x_196.y, x_196.z);
  } else {
    let x_199 : vec4<f32> = u_xlat1;
    x_193 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  }
  let x_201 : vec3<f32> = x_193;
  vs_TEXCOORD1 = x_201;
  let x_206 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_206;
  let x_207 : i32 = u_xlati0;
  let x_210 : u32 = x_31.unity_ParticleInstanceData_buf[x_207].value[2i];
  let x_212 : i32 = u_xlati0;
  let x_214 : u32 = x_31.unity_ParticleInstanceData_buf[x_212].value[0i];
  let x_216 : i32 = u_xlati0;
  let x_218 : u32 = x_31.unity_ParticleInstanceData_buf[x_216].value[1i];
  let x_220 : vec3<f32> = vec3<f32>(bitcast<f32>(x_210), bitcast<f32>(x_214), bitcast<f32>(x_218));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : f32 = u_xlat1.z;
  u_xlat2.x = x_224;
  let x_227 : i32 = u_xlati0;
  let x_230 : u32 = x_31.unity_ParticleInstanceData_buf[x_227].value[4i];
  let x_232 : i32 = u_xlati0;
  let x_235 : u32 = x_31.unity_ParticleInstanceData_buf[x_232].value[3i];
  let x_237 : i32 = u_xlati0;
  let x_240 : u32 = x_31.unity_ParticleInstanceData_buf[x_237].value[5i];
  let x_242 : vec3<f32> = vec3<f32>(bitcast<f32>(x_230), bitcast<f32>(x_235), bitcast<f32>(x_240));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : f32 = u_xlat3.x;
  u_xlat2.y = x_246;
  let x_248 : i32 = u_xlati0;
  let x_251 : u32 = x_31.unity_ParticleInstanceData_buf[x_248].value[6i];
  let x_253 : i32 = u_xlati0;
  let x_256 : u32 = x_31.unity_ParticleInstanceData_buf[x_253].value[7i];
  let x_258 : i32 = u_xlati0;
  let x_261 : u32 = x_31.unity_ParticleInstanceData_buf[x_258].value[8i];
  u_xlat6 = vec3<f32>(bitcast<f32>(x_251), bitcast<f32>(x_256), bitcast<f32>(x_261));
  let x_265 : i32 = u_xlati0;
  let x_268 : u32 = x_31.unity_ParticleInstanceData_buf[x_265].value[9i];
  let x_270 : i32 = u_xlati0;
  let x_273 : u32 = x_31.unity_ParticleInstanceData_buf[x_270].value[10i];
  let x_275 : i32 = u_xlati0;
  let x_278 : u32 = x_31.unity_ParticleInstanceData_buf[x_275].value[11i];
  u_xlat4 = vec3<f32>(bitcast<f32>(x_268), bitcast<f32>(x_273), bitcast<f32>(x_278));
  let x_282 : f32 = u_xlat6.y;
  u_xlat2.z = x_282;
  let x_285 : f32 = u_xlat4.y;
  u_xlat2.w = x_285;
  let x_289 : vec4<f32> = in_POSITION0;
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.z);
  let x_291 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  u_xlat5.w = 1.0f;
  let x_295 : vec4<f32> = u_xlat2;
  let x_296 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_295, x_296);
  let x_299 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = x_51.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_299.x, x_299.x, x_299.x, x_299.x) * x_302);
  let x_305 : f32 = u_xlat1.y;
  u_xlat3.x = x_305;
  let x_308 : f32 = u_xlat3.z;
  u_xlat1.y = x_308;
  let x_311 : f32 = u_xlat6.x;
  u_xlat3.z = x_311;
  let x_314 : f32 = u_xlat6.z;
  u_xlat1.z = x_314;
  let x_317 : f32 = u_xlat4.x;
  u_xlat3.w = x_317;
  let x_320 : f32 = u_xlat4.z;
  u_xlat1.w = x_320;
  let x_322 : vec4<f32> = u_xlat1;
  let x_323 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_322, x_323);
  let x_326 : vec4<f32> = u_xlat3;
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_326, x_327);
  let x_331 : vec4<f32> = x_51.unity_MatrixVP[0i];
  let x_332 : vec3<f32> = u_xlat6;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_331 * vec4<f32>(x_332.x, x_332.x, x_332.x, x_332.x)) + x_335);
  let x_338 : vec4<f32> = x_51.unity_MatrixVP[2i];
  let x_339 : vec4<f32> = u_xlat0;
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_338 * vec4<f32>(x_339.x, x_339.x, x_339.x, x_339.x)) + x_342);
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = x_51.unity_MatrixVP[3i];
  gl_Position = (x_348 + x_350);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

