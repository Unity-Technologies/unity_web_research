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
  x_MainTex_ST : vec4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

@group(0) @binding(0) var<storage, read> x_31 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_52 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb18 : bool;
  var x_122 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
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
  let x_42 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_42);
  let x_47 : f32 = u_xlat6.x;
  let x_57 : f32 = x_52.unity_ParticleUVShiftData.y;
  u_xlat12 = (x_47 / x_57);
  let x_59 : f32 = u_xlat12;
  u_xlat12 = floor(x_59);
  let x_61 : f32 = u_xlat12;
  let x_64 : f32 = x_52.unity_ParticleUVShiftData.y;
  let x_67 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_61) * x_64) + x_67);
  let x_71 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_71);
  let x_77 : f32 = u_xlat6.x;
  let x_80 : f32 = x_52.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_77 * x_80);
  let x_85 : f32 = x_52.unity_ParticleUVShiftData.w;
  u_xlat6.x = (-(x_85) + 1.0f);
  let x_90 : f32 = u_xlat12;
  let x_93 : f32 = x_52.unity_ParticleUVShiftData.w;
  let x_96 : f32 = u_xlat6.x;
  u_xlat1.y = ((-(x_90) * x_93) + x_96);
  let x_102 : vec2<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_52.unity_ParticleUVShiftData;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec2<f32> = ((x_102 * vec2<f32>(x_105.z, x_105.w)) + vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_110.x, x_110.y, x_111.z);
  let x_117 : f32 = x_52.unity_ParticleUVShiftData.x;
  u_xlatb18 = !((x_117 == 0.0f));
  let x_120 : bool = u_xlatb18;
  if (x_120) {
    let x_125 : vec3<f32> = u_xlat6;
    x_122 = vec2<f32>(x_125.x, x_125.y);
  } else {
    let x_128 : vec2<f32> = in_TEXCOORD0;
    x_122 = x_128;
  }
  let x_129 : vec2<f32> = x_122;
  let x_130 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_129.x, x_129.y, x_130.z);
  let x_134 : vec3<f32> = u_xlat6;
  let x_138 : vec4<f32> = x_52.x_MainTex_ST;
  let x_142 : vec4<f32> = x_52.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(x_138.x, x_138.y)) + vec2<f32>(x_142.z, x_142.w));
  let x_149 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_149;
  let x_150 : i32 = u_xlati0;
  let x_152 : u32 = x_31.unity_ParticleInstanceData_buf[x_150].value[2i];
  let x_154 : i32 = u_xlati0;
  let x_156 : u32 = x_31.unity_ParticleInstanceData_buf[x_154].value[0i];
  let x_158 : i32 = u_xlati0;
  let x_160 : u32 = x_31.unity_ParticleInstanceData_buf[x_158].value[1i];
  let x_162 : vec3<f32> = vec3<f32>(bitcast<f32>(x_152), bitcast<f32>(x_156), bitcast<f32>(x_160));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_167 : f32 = u_xlat1.z;
  u_xlat2.x = x_167;
  let x_170 : i32 = u_xlati0;
  let x_173 : u32 = x_31.unity_ParticleInstanceData_buf[x_170].value[4i];
  let x_175 : i32 = u_xlati0;
  let x_178 : u32 = x_31.unity_ParticleInstanceData_buf[x_175].value[3i];
  let x_180 : i32 = u_xlati0;
  let x_183 : u32 = x_31.unity_ParticleInstanceData_buf[x_180].value[5i];
  let x_185 : vec3<f32> = vec3<f32>(bitcast<f32>(x_173), bitcast<f32>(x_178), bitcast<f32>(x_183));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_189 : f32 = u_xlat3.x;
  u_xlat2.y = x_189;
  let x_191 : i32 = u_xlati0;
  let x_194 : u32 = x_31.unity_ParticleInstanceData_buf[x_191].value[6i];
  let x_196 : i32 = u_xlati0;
  let x_199 : u32 = x_31.unity_ParticleInstanceData_buf[x_196].value[7i];
  let x_201 : i32 = u_xlati0;
  let x_204 : u32 = x_31.unity_ParticleInstanceData_buf[x_201].value[8i];
  u_xlat6 = vec3<f32>(bitcast<f32>(x_194), bitcast<f32>(x_199), bitcast<f32>(x_204));
  let x_208 : i32 = u_xlati0;
  let x_211 : u32 = x_31.unity_ParticleInstanceData_buf[x_208].value[9i];
  let x_213 : i32 = u_xlati0;
  let x_216 : u32 = x_31.unity_ParticleInstanceData_buf[x_213].value[10i];
  let x_218 : i32 = u_xlati0;
  let x_221 : u32 = x_31.unity_ParticleInstanceData_buf[x_218].value[11i];
  u_xlat4 = vec3<f32>(bitcast<f32>(x_211), bitcast<f32>(x_216), bitcast<f32>(x_221));
  let x_225 : f32 = u_xlat6.y;
  u_xlat2.z = x_225;
  let x_228 : f32 = u_xlat4.y;
  u_xlat2.w = x_228;
  let x_232 : vec4<f32> = in_POSITION0;
  let x_233 : vec3<f32> = vec3<f32>(x_232.x, x_232.y, x_232.z);
  let x_234 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  u_xlat5.w = 1.0f;
  let x_238 : vec4<f32> = u_xlat2;
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_238, x_239);
  let x_242 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = x_52.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_242.x, x_242.x, x_242.x, x_242.x) * x_245);
  let x_248 : f32 = u_xlat1.y;
  u_xlat3.x = x_248;
  let x_251 : f32 = u_xlat3.z;
  u_xlat1.y = x_251;
  let x_254 : f32 = u_xlat6.x;
  u_xlat3.z = x_254;
  let x_257 : f32 = u_xlat6.z;
  u_xlat1.z = x_257;
  let x_260 : f32 = u_xlat4.x;
  u_xlat3.w = x_260;
  let x_263 : f32 = u_xlat4.z;
  u_xlat1.w = x_263;
  let x_265 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_265, x_266);
  let x_269 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_269, x_270);
  let x_274 : vec4<f32> = x_52.unity_MatrixVP[0i];
  let x_275 : vec3<f32> = u_xlat6;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_274 * vec4<f32>(x_275.x, x_275.x, x_275.x, x_275.x)) + x_278);
  let x_281 : vec4<f32> = x_52.unity_MatrixVP[2i];
  let x_282 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_281 * vec4<f32>(x_282.x, x_282.x, x_282.x, x_282.x)) + x_285);
  let x_291 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = x_52.unity_MatrixVP[3i];
  gl_Position = (x_291 + x_293);
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

