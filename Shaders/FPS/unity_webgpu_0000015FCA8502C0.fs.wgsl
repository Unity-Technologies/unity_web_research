struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_Distance : f32,
  x_LensCoeff : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_32 : PGlobals;

var<private> u_xlat3 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_187 : f32;
  var x_201 : f32;
  var x_213 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_23);
  u_xlat0.x = x_24.x;
  let x_38 : f32 = x_32.x_ZBufferParams.z;
  let x_40 : f32 = u_xlat0.x;
  let x_44 : f32 = x_32.x_ZBufferParams.w;
  u_xlat0.x = ((x_38 * x_40) + x_44);
  let x_49 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_49);
  let x_54 : f32 = u_xlat0.x;
  let x_57 : f32 = x_32.x_Distance;
  u_xlat3 = (x_54 + -(x_57));
  let x_60 : f32 = u_xlat3;
  let x_63 : f32 = x_32.x_LensCoeff;
  u_xlat3 = (x_60 * x_63);
  let x_65 : f32 = u_xlat3;
  let x_67 : f32 = u_xlat0.x;
  u_xlat0.x = (x_65 / x_67);
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = (x_71 * 80.0f);
  let x_76 : f32 = u_xlat0.x;
  u_xlat3 = x_76;
  let x_77 : f32 = u_xlat3;
  u_xlat3 = clamp(x_77, 0.0f, 1.0f);
  let x_81 : f32 = u_xlat0.x;
  u_xlat0.x = -(x_81);
  let x_85 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_85, 0.0f, 1.0f);
  let x_89 : vec4<f32> = u_xlat0;
  let x_94 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.x, x_89.x) * vec3<f32>(0.0f, 1.0f, 1.0f)) + vec3<f32>(1.0f, 0.0f, 0.0f));
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_95.y, x_94.y, x_94.z);
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat1 = (-(vec3<f32>(x_99.x, x_99.w, x_99.w)) + vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f));
  let x_105 : f32 = u_xlat3;
  let x_107 : vec3<f32> = u_xlat1;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec3<f32> = ((vec3<f32>(x_105, x_105, x_105) * x_107) + vec3<f32>(x_109.x, x_109.z, x_109.w));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_119 : vec2<f32> = vs_TEXCOORD1;
  let x_120 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_119);
  u_xlat1 = vec3<f32>(x_120.x, x_120.y, x_120.z);
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(x_123, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_129 : f32 = u_xlat9;
  u_xlat9 = (x_129 + 0.5f);
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : f32 = u_xlat9;
  u_xlat1 = ((vec3<f32>(x_132.x, x_132.z, x_132.z) * vec3<f32>(x_134, x_134, x_134)) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_140 : f32 = u_xlat9;
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = (vec3<f32>(x_140, x_140, x_140) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_147 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_147 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_151 : vec3<f32> = u_xlat1;
  u_xlat1 = max(abs(x_151), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_156 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_156);
  let x_158 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_158 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_162 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_162);
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_165.x, x_165.z, x_165.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_176 : vec4<f32> = u_xlat0;
  let x_179 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_176.x, x_176.y, x_176.z, x_176.x));
  u_xlatb0 = vec3<bool>(x_179.x, x_179.y, x_179.z);
  let x_185 : bool = u_xlatb0.x;
  if (x_185) {
    let x_191 : f32 = u_xlat2.x;
    x_187 = x_191;
  } else {
    let x_194 : f32 = u_xlat1.x;
    x_187 = x_194;
  }
  let x_195 : f32 = x_187;
  SV_Target0.x = x_195;
  let x_200 : bool = u_xlatb0.y;
  if (x_200) {
    let x_205 : f32 = u_xlat2.y;
    x_201 = x_205;
  } else {
    let x_208 : f32 = u_xlat1.y;
    x_201 = x_208;
  }
  let x_209 : f32 = x_201;
  SV_Target0.y = x_209;
  let x_212 : bool = u_xlatb0.z;
  if (x_212) {
    let x_217 : f32 = u_xlat2.z;
    x_213 = x_217;
  } else {
    let x_220 : f32 = u_xlat1.z;
    x_213 = x_220;
  }
  let x_221 : f32 = x_213;
  SV_Target0.z = x_221;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

