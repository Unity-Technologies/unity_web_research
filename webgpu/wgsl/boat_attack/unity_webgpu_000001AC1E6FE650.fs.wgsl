diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_MatrixColorConversion : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat9 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_SecondTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_MatrixColorConversion[0i].x;
  u_xlat0.x = x_21;
  let x_26 : f32 = x_14.x_MatrixColorConversion[1i].x;
  u_xlat0.y = x_26;
  let x_31 : f32 = x_14.x_MatrixColorConversion[2i].x;
  u_xlat0.z = x_31;
  let x_48 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_48);
  u_xlat9 = x_49.w;
  let x_53 : f32 = u_xlat9;
  u_xlat1.x = (x_53 + -0.0625f);
  let x_63 : vec2<f32> = vs_TEXCOORD0;
  let x_64 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, x_63);
  let x_65 : vec2<f32> = vec2<f32>(x_64.x, x_64.y);
  let x_66 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_65.x, x_65.y, x_66.z);
  let x_68 : vec3<f32> = u_xlat2;
  let x_72 : vec2<f32> = (vec2<f32>(x_68.x, x_68.y) + vec2<f32>(-0.5f, -0.5f));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_73.x, x_72.x, x_72.y);
  let x_75 : vec3<f32> = u_xlat0;
  let x_76 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_75, x_76);
  let x_80 : f32 = x_14.x_MatrixColorConversion[0i].y;
  u_xlat2.x = x_80;
  let x_83 : f32 = x_14.x_MatrixColorConversion[1i].y;
  u_xlat2.y = x_83;
  let x_86 : f32 = x_14.x_MatrixColorConversion[2i].y;
  u_xlat2.z = x_86;
  let x_88 : vec3<f32> = u_xlat2;
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(x_88, x_89);
  let x_93 : f32 = x_14.x_MatrixColorConversion[0i].z;
  u_xlat2.x = x_93;
  let x_96 : f32 = x_14.x_MatrixColorConversion[1i].z;
  u_xlat2.y = x_96;
  let x_99 : f32 = x_14.x_MatrixColorConversion[2i].z;
  u_xlat2.z = x_99;
  let x_101 : vec3<f32> = u_xlat2;
  let x_102 : vec3<f32> = u_xlat1;
  u_xlat0.z = dot(x_101, x_102);
  let x_105 : vec3<f32> = u_xlat0;
  u_xlat1 = ((x_105 * vec3<f32>(0.30530601739883422852f, 0.30530601739883422852f, 0.30530601739883422852f)) + vec3<f32>(0.68217110633850097656f, 0.68217110633850097656f, 0.68217110633850097656f));
  let x_112 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_112 * x_113) + vec3<f32>(0.01252287812530994415f, 0.01252287812530994415f, 0.01252287812530994415f));
  let x_120 : vec3<f32> = u_xlat0;
  let x_121 : vec3<f32> = u_xlat1;
  let x_122 : vec3<f32> = (x_120 * x_121);
  let x_123 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  SV_Target0.w = 1.0f;
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


