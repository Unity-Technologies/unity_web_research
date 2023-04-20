diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_MatrixColorConversion : mat4x4<f32>,
}

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat9 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec2<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_SecondTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0.w = 1.0f;
  let x_27 : f32 = x_21.x_MatrixColorConversion[0i].x;
  u_xlat0.x = x_27;
  let x_32 : f32 = x_21.x_MatrixColorConversion[1i].x;
  u_xlat0.y = x_32;
  let x_37 : f32 = x_21.x_MatrixColorConversion[2i].x;
  u_xlat0.z = x_37;
  let x_54 : vec2<f32> = vs_TEXCOORD0;
  let x_55 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_54);
  u_xlat9 = x_55.w;
  let x_58 : f32 = u_xlat9;
  u_xlat1.x = (x_58 + -0.0625f);
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, x_69);
  u_xlat2 = vec2<f32>(x_70.x, x_70.y);
  let x_72 : vec2<f32> = u_xlat2;
  let x_75 : vec2<f32> = (x_72 + vec2<f32>(-0.5f, -0.5f));
  let x_76 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_76.x, x_75.x, x_75.y);
  let x_78 : vec3<f32> = u_xlat0;
  let x_79 : vec3<f32> = u_xlat1;
  SV_Target0.x = dot(x_78, x_79);
  let x_83 : f32 = x_21.x_MatrixColorConversion[0i].y;
  u_xlat0.x = x_83;
  let x_86 : f32 = x_21.x_MatrixColorConversion[1i].y;
  u_xlat0.y = x_86;
  let x_89 : f32 = x_21.x_MatrixColorConversion[2i].y;
  u_xlat0.z = x_89;
  let x_91 : vec3<f32> = u_xlat0;
  let x_92 : vec3<f32> = u_xlat1;
  SV_Target0.y = dot(x_91, x_92);
  let x_96 : f32 = x_21.x_MatrixColorConversion[0i].z;
  u_xlat0.x = x_96;
  let x_99 : f32 = x_21.x_MatrixColorConversion[1i].z;
  u_xlat0.y = x_99;
  let x_102 : f32 = x_21.x_MatrixColorConversion[2i].z;
  u_xlat0.z = x_102;
  let x_104 : vec3<f32> = u_xlat0;
  let x_105 : vec3<f32> = u_xlat1;
  SV_Target0.z = dot(x_104, x_105);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


