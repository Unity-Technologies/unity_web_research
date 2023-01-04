struct PGlobals {
  x_Height_Offset : f32,
  x_Height_Scale : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_63 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatu0 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var u_xlat1 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_44);
  u_xlat0 = vec2<f32>(x_46.x, x_46.y);
  let x_51 : f32 = u_xlat0.y;
  let x_56 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_51 * 256.0f) + x_56);
  let x_60 : f32 = u_xlat0.x;
  let x_67 : f32 = x_63.x_Height_Scale;
  u_xlat0.x = (x_60 * x_67);
  let x_71 : f32 = u_xlat0.x;
  let x_76 : f32 = x_63.x_Height_Offset;
  u_xlat0.x = ((x_71 * 0.00389105058f) + x_76);
  let x_80 : f32 = u_xlat0.x;
  u_xlat0.x = (x_80 * 65535.0f);
  let x_88 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_88);
  let x_92 : u32 = u_xlatu0.x;
  u_xlatu0.y = (x_92 & 255u);
  let x_99 : u32 = u_xlatu0.x;
  param = x_99;
  param_1 = 8i;
  param_2 = 8i;
  let x_102 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  u_xlatu0.x = x_102;
  let x_105 : vec2<u32> = u_xlatu0;
  u_xlat1 = vec2<f32>(vec2<u32>(x_105.y, x_105.x));
  let x_110 : vec2<f32> = u_xlat1;
  let x_113 : vec2<f32> = (x_110 * vec2<f32>(0.003921569f, 0.003921569f));
  let x_114 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_118 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_118.x, x_118.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

